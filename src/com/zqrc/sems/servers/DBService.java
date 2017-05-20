package com.zqrc.sems.servers;

import sun.nio.cs.ext.TIS_620;

import com.sun.jmx.snmp.Timestamp;
import com.sun.star.util.DateTime;
import com.zqrc.sems.projects.orm.Datas;

public class DBService {
	private DBO bo=new DBO();
	
	
	public boolean save(Datas datas){
		
		String sql="insert INTO datas(device,tem,hum,pm25,smog,light,noise)VALUES("+datas.getDevice()+","+
		datas.getTem()+","+datas.getHum()+","+
		datas.getPm25()+","+datas.getSmog()+","+
		datas.getLight()+","+datas.getNoise()+")";//,"+
//		new DateTime()+")";
		
		if(bo.update(sql)==1){
			return true;
		}else{
			return false;
		}
//		return false;
	}
	
	private void find() {
		
	}
	
}
