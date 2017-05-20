package com.zqrc.sems.servers;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.util.Date;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.orm.Device;
import com.zqrc.sems.projects.service.DataService;
import com.zqrc.sems.projects.service.DeviceService;

/**
 * 数据流的读入
 * @author 李志飞
 *
 */
public class Read implements Runnable{
	private Socket socket;
	private Thread thread;
	//	写入流相关
	private InputStream in;
	private DataInputStream din;
	
	private int Id_Device;

	private ApplicationContext appContext = new ClassPathXmlApplicationContext("classpath*:applicationContext.xml");
	private DataService dataService=appContext.getBean(DataService.class);
	private DeviceService deviceService=appContext.getBean(DeviceService.class);
	/**
	 * 数据读入流
	 * @param socket
	 */
	public Read(Socket socket) {
		if(socket!=null){
			this.socket=socket;
			thread=new Thread(this);
			thread.start();
		}else{
			System.out.println("Socket is Null!!!");
		}
	}

	/**
	 * 线程运行核心
	 */
	public void run() {
		try {
			in=socket.getInputStream();
			din = new DataInputStream(in);
			String str="";

			while (true) {//创建一个流套接字并将其连接到指定主机上的指定端口号  
				byte[] buffer= new byte[din.available()];
				if(buffer.length != 0){
					din.read(buffer);// 读取缓冲区
//					String strs=new String(buffer,"UTF-8");
					if(buffer.length==24){
						Datas datas=saxRead(buffer);
						dataService.save(datas);
					}
					System.out.println(buffer.length+"："+new String(buffer,"UTF-8"));
				}
			}
		} catch (IOException e) {
			closed();
		}
	}

	/**
	 * 解析成对象并返回
	 * @return
	 */
	private Datas saxRead(byte[]bytes){//String str){
//		AAAA 11 01 0101 02 1234 03 0043 04 1100 05 1111 06 0000 00 BBBB
		Datas datas=new Datas();
		
		for(int i=0;i<bytes.length;i++){
			System.out.print(bytes[i]);
			System.out.print(new String(new byte[]{bytes[i]}));
		}
		System.out.println();
		
		byte[]b=new byte[2];
		b[0]=0;
		b[1]=bytes[2];
		//设备号处理
		int temp=(int)hexBytesToFloat(b);
		Id_Device=temp;
		Device device=deviceService.getById(temp);
		if(device!=null){
			datas.setDevice(device);
		}else{
			device=new Device();
			device.setName(socket.getInetAddress().getHostName());
			device.setInfo(socket.getInetAddress().getHostName()+":"+socket.getInetAddress().getHostAddress());
			device.setIp(socket.getInetAddress().getHostAddress());
			device.setUpline(new Date());
			deviceService.save(device);
			datas.setDevice(device);//
		}
		
//	温度
	datas.setTem(((int)(hexBytesToFloat(new byte[]{bytes[4],bytes[5]})*0.0625)));
//	湿度
	datas.setHum((int)hexBytesToFloat(new byte[]{bytes[7],bytes[8]}));//%
//	pm25
	datas.setPm25((int)((hexBytesToFloat(new byte[]{bytes[10],bytes[11]}))*0.17-1));
//	smog
	datas.setSmog((int)hexBytesToFloat(new byte[]{bytes[13],bytes[14]}));
//	light
	datas.setLight((int)(hexBytesToFloat(new byte[]{bytes[16],bytes[17]})));
//	noise
	datas.setNoise((int)hexBytesToFloat(new byte[]{bytes[19],bytes[20]}));
//	date
	int sum=(int)hexBytesToFloat(new byte[]{0,bytes[21]});
		
	
//	//设备号处理
//			int temp=(int)hexBytesToFloat(getByteArray(str.substring(4, 6)));
//			Id_Device=temp;
//			Device device=deviceService.getById(temp);
//			if(device!=null){
//				datas.setDevice(device);
//			}else{
//				device=new Device();
//				device.setName(socket.getInetAddress().getHostName());
//				device.setInfo(socket.getInetAddress().getHostName()+":"+socket.getInetAddress().getHostAddress());
//				device.setIp(socket.getInetAddress().getHostAddress());
//				device.setUpline(new Date());
//				deviceService.save(device);
//				datas.setDevice(device);//
//			}
	
////		温度
//		datas.setTem(((int)hexBytesToFloat(getByteArray(str.substring(8, 12))))/16);
////		湿度
//		datas.setHum((int)hexBytesToFloat(getByteArray(str.substring(14, 18))));
////		pm25
//		datas.setPm25((int)((hexBytesToFloat(getByteArray(str.substring(20, 24))))*0.17-1));
////		smog
//		datas.setSmog((int)hexBytesToFloat(getByteArray(str.substring(26, 30))));
////		light
//		datas.setLight((int)(hexBytesToFloat(getByteArray(str.substring(32, 36)))/1.2));
////		noise
//		datas.setNoise((int)hexBytesToFloat(getByteArray(str.substring(38, 42))));
////		date
//		int sum=(int)hexBytesToFloat(getByteArray(str.substring(42, 44)));
		datas.setDate(new Date());
			
		return datas;
	}

	/**
	 * 将16进制字符串装换为字节数组并返回
	 * 最小转化为两个字节，最佳状态
	 * @param str
	 * @return
	 */
	private byte[] getByteArray(String str) {
		str=str.trim();
		byte[]b;
		int size=str.length()/2;
		if(size==1){
			size+=1;
			b=new byte[size];
			b[0]=0;
			b[1]=(byte)Integer.parseInt(str, 16);
		}else{
			b=new byte[size];
			for(int i=0;i<size;i++){
				b[i]=(byte)Integer.parseInt(str.substring(i*2,i*2+2), 16);
			}
		}
		return b;
	}

	/*
	 * 解析单数值型传感器数据(将接收的后截取的有效数据，通过此方法转换为十进制数据)
	 * 例如：0x01 0xFF -> 511
	 */
	private float hexBytesToFloat(byte[] b){//16进制byte转换为float
		int s = 0;
		if (b[0] >= 0) {
			s+= b[0];
		} else {
			s = s + 256 + b[0];
		}
		s = s * 256;
		if (b[1] >= 0) {
			s+= b[1];
		} else {
			s = s + 256 + b[1];
		}
		float result = (float) s;
		return result;
	}

	/**
	 * 检查数据合法性
	 */
	private boolean check(String str) {
		if(str.length()==24){
			return true;
		}
		return false;
	}

	/**
	 * 关闭所有
	 */
	public void closed() {
		Device temp=deviceService.getById(Id_Device);
		temp.setOffline(new Date());
		deviceService.update(temp);
		try {
			din.close();
			in.close();
			socket.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
