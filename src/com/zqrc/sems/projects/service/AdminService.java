package com.zqrc.sems.projects.service;

import com.zqrc.sems.projects.base.BaseDao;
import com.zqrc.sems.projects.orm.Admin;

/**
 * 
 * @author 李志飞
 *
 */
public interface AdminService extends BaseDao<Admin>{
	
	/**
	 * 清楚
	 * @param admin
	 */
	void evicts(Admin admin);
	
	/**
	 * login
	 */
	Admin login(String account,String pass);
}
