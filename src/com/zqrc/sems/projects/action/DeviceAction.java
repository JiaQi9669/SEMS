package com.zqrc.sems.projects.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.sems.projects.base.BaseAction;
import com.zqrc.sems.projects.orm.Device;
import com.zqrc.sems.projects.util.HqlHelper;
import com.zqrc.sems.projects.util.PageBean;

public class DeviceAction extends BaseAction<Device>{

	/**
	 * 删除设备
	 */
	public String delete() {
		deviceService.delete(getModel().getId());
		list();
		return "index";
	}
	
	/**
	 * 更新设备页
	 */
	public String updataview() {
		Device device=deviceService.getById(getModel().getId());
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("bean", device);
		return "view";
	}
	
	/**
	 * 更新设备
	 */
	public String updata() {
		deviceService.update(model);
		list();
		return "index";
	}
	
	/**
	 * 获得设备列表(分页)
	 * @return
	 */
	public String list() {
		PageBean pageBean=deviceService.getPageBean(pageNum, 10,new HqlHelper(Device.class, "d").
				addOrderByProperty("id", true));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
		return "list";
	}
	
}
