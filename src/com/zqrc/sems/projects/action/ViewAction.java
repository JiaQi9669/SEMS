package com.zqrc.sems.projects.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.sems.projects.base.BaseAction;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.orm.Device;

/**
 * 数据展示控制中心
 * @author 李志飞
 */
public class ViewAction extends BaseAction<Datas>{
	private String viewtype;//请求数据类型  
	public void setViewtype(String viewtype) {
		this.viewtype = viewtype;
	}
	public String getViewtype() {
		return viewtype;
	}
	
//	基础页控制*********************************
	/**
	 * 默认页
	 * @return
	 */
	public String index(){
		return "index";
	}
	
	/**
	 * 地图总览
	 */
	public String map() {
		return "map";
	}
	
	/**
	 * 实时数据
	 */
	public String time() {
		List<Device>devices=deviceService.findAll();
		List<Datas>list=new ArrayList<Datas>();
		for(int i=0;i<devices.size();i++){
			Datas datas=dataService.getNewsByDeviceId(devices.get(i).getId());
			list.add(datas);
		}
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("list", list);
		
		return "time";
	}
	
	/**
	 * 统计总览
	 */
	public String all() {
		
		return "all";
	}
	
	/**
	 * 定制查询
	 */
	public String diy() {
		return "diy";
	}
	
	/**
	 * 极限情况
	 */
	public String max() {
		return "max";
	}
	
	/**
	 * 登录
	 */
	public String login(){
		return "login";
	}
	
	/**
	 * 退出
	 * @return
	 */
	public String exit(){
		return "exit";
	}
	
	/**
	 * 添加页
	 * @return
	 */
	public String add(){
		return "add";
	}
}
