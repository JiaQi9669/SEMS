package com.zqrc.sems.projects.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.sems.projects.base.BaseAction;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.orm.Device;

/**
 * 数据显示控制
 * @author 李志飞
 *
 */
public class DataAction extends BaseAction<Datas>{
	private String result;
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	private String viewtype;//请求参数类型  -viewtype：0-温度，1-湿度，2-pm2.5，3-烟雾，4-光照，5-噪声
	public void setViewtype(String viewtype) {
		this.viewtype = viewtype;
	}
	public String getViewtype() {
		return viewtype;
	}
	private String datetype;//时间范围 -datetype:0-实时，1-日平均，2-周平均，3-月
	public void setDatetype(String datetype) {
		this.datetype = datetype;
	}
	public String getDatetype() {
		return datetype;
	}
	
	//综合请求--此方法负责所有综合请求
	public String alls(){
		//获取各设备最近十天的记录（取平均值）
		dataService.get
		
		
		return "alls";
	}
	
	

	//获取地图数据(异步实时)
	public String maps() {
		List<Device>devices=deviceService.findAll();
		StringBuffer buffer=new StringBuffer("{\"maps\":[");
		for(int i=0;i<devices.size();i++){
			Datas datas=dataService.getNewsByDeviceId(devices.get(i).getId());
			buffer.append(datas.toString());
			if(i!=(devices.size()-1)){
				buffer.append(",");
			}
		}
		buffer.append("]}");
		//System.out.println(buffer.toString());
		setResult(buffer.toString());
		return "maps";
	}

	//	获取最新的环境信息一条(设备无关性（异步）)
	public String news() {
		//Datas datas=dataService.getNews();
		//setResult(datas.toString());
		maps();
		return "news";
	}
	
	//实时数据（初始数据）(默认的数据显示：温度)
	public String times(){
		List<Device>devices=deviceService.findAll();
		List<Datas>list=new ArrayList<Datas>();
		for(int i=0;i<devices.size();i++){
			Datas datas=dataService.getNewsByDeviceId(devices.get(i).getId());
			list.add(datas);
		}
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("list", list);
		
		return "times";
	}
	
}
