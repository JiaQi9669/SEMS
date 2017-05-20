package com.zqrc.sems.projects.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.sems.projects.base.BaseDaoImpl;
import com.zqrc.sems.projects.orm.Admin;
import com.zqrc.sems.projects.service.AdminService;

@Service
@Transactional
public class AdminServiceImpl extends BaseDaoImpl<Admin> implements AdminService{

	public void evicts(Admin admin) {
		getSession().evict(admin);
	}

	public Admin login(String account, String pass) {
		return (Admin)getSession().createQuery("from Admin where account = ? and pass = ?").setString(0, account).setString(1, pass).uniqueResult();
	}
	
	
}
