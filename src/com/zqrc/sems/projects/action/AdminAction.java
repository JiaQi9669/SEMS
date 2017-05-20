package com.zqrc.sems.projects.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.sems.projects.base.BaseAction;
import com.zqrc.sems.projects.orm.Admin;
import com.zqrc.sems.projects.orm.Device;
import com.zqrc.sems.projects.orm.MaxDatas;
import com.zqrc.sems.projects.util.HqlHelper;
import com.zqrc.sems.projects.util.PageBean;

/**
 * 管理端
 * @author 李志飞
 */
public class AdminAction extends BaseAction<Admin>{
	
	private String passNew;
	public void setPassNew(String passNew) {
		this.passNew = passNew;
	}
	public String getPassNew() {
		return passNew;
	}
	
	/**
	 * 首页
	 */
	public String index(){
		return "index";
	}
	
	/**
	 * 登陆成
	 * @return
	 */
	public String login(){
		Admin admin=adminService.login(getModel().getAccount(), getModel().getPass());
		if(admin==null){
			return "login";
		}else{
			setAdmin(admin);
			return "index";
		}
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
	
	/**
	 * 获得极限数据标准
	 */
	private void getMaxData() {
		List<MaxDatas>datas=maxDataService.findAll();
		if(datas.size()==1){
			ValueStack vs = ServletActionContext.getContext().getValueStack();
			vs.set("bean", datas.get(0));
		}
		
	}
	
	/**
	 * 获取设备量
	 */
	public void count(){
		Integer all=deviceService.countAll();
		Integer work=deviceService.countWork();
		Integer error=deviceService.countError();
		Integer other=all-work-error;
		
		Map<String, Object> vs = ServletActionContext.getContext().getSession();
		vs.put("all", all);
		vs.put("work", work);
		vs.put("error", error);
		vs.put("other", other);
	}
	
	
	/**
	 * PageBean pageBean=softLabService.getPageBean(pageNum,10, new HqlHelper(SoftLab.class, "center").
				addOrderByProperty("date", false).
				addWhereCondition("center.view = ?", isview));
	 */
	
	/**
	 * 环境参数页
	 */
	public String data() {
		getMaxData();
		return "data";
	}
	
	/**
	 * 设备浏览页
	 */
	public String device() {
		list();
		return "device";
	}
	
	/**
	 * 设备信息更新
	 */
	public String deviceupdata() {
		count();
		return "deviceupdata";
	}
	
	/**
	 * 报表打印
	 */
	public String report() {
		return "report";
	}
	
	/**
	 * 个人密码
	 */
	public String pass() {
		return "pass";
	}
	
	/**
	 * 修改密码
	 */
	public String updata() {
		Admin admin=adminService.getById(getAdmin().getId());
		if(model.getPass().equals(admin.getPass())){
			admin.setPass(getPassNew());
			adminService.evicts(admin);
			adminService.update(admin);
		}
		return "pass";
	}
	
	/**
	 * 人员管理
	 */
	public String person() {
		personList();
		return "person";
	}
	
	/**
	 * 删除person
	 */
	public String delete() {
		adminService.delete(getModel().getId());
		personList();
		return "person";
	}
	
	/**
	 * 添加
	 */
	public String add() {
		model.setRole("0");
		Admin admin=getModel();
		adminService.save(admin);
		personList();
		return "person";
	}
	
	/**
	 * 获取人员集合
	 */
	private void personList(){
		PageBean pageBean=adminService.getPageBean(pageNum, 10,new HqlHelper(Admin.class, "a").
				addOrderByProperty("id", true));
		pageBean.setCurrentPage(pageNum);
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("pageBean", pageBean);
	}
}
