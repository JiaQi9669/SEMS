package com.zqrc.sems.projects.base;

import java.lang.reflect.ParameterizedType;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.zqrc.sems.projects.orm.Admin;
import com.zqrc.sems.projects.service.AdminService;
import com.zqrc.sems.projects.service.DataService;
import com.zqrc.sems.projects.service.DeviceService;
import com.zqrc.sems.projects.service.MaxDataService;
import com.zqrc.sems.projects.service.ViewService;

public abstract class BaseAction<T> extends ActionSupport implements ModelDriven<T>{
	protected T model;
	public BaseAction(){
		try{
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			model = clazz.newInstance();
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}
	protected int pageNum = 1;

	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}
	//获取模型驱动
	public T getModel(){
		return model;
	}
	
//	全局变量用以接收用户信息
	protected Admin getAdmin() {
		return (Admin)ActionContext.getContext().getSession().get("admin");
	}
	
	protected void setAdmin(Admin admin) {
//		ActionContext.getContext().getSession().clear();
		ActionContext.getContext().getSession().put("admin", admin);
	}
	
	
	/**
	 * 注入所有的service
	 */
	@Resource
	protected DataService dataService;
	@Resource
	protected AdminService adminService;
	@Resource
	protected DeviceService deviceService;
	@Resource
	protected ViewService viewService;
	@Resource
	protected MaxDataService maxDataService;
//	@Resource
//	protected SoftUserService softUserService;
	
}
