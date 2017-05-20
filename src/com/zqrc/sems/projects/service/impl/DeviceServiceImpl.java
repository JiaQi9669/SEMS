package com.zqrc.sems.projects.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.sems.projects.base.BaseDaoImpl;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.orm.Device;
import com.zqrc.sems.projects.service.DeviceService;
import com.zqrc.sems.projects.service.ViewService;

@Service
@Transactional
public class DeviceServiceImpl extends BaseDaoImpl<Device> implements DeviceService{

	/**
	 * 所有设备
	 */
	public Integer countAll() {
		return (Integer)new Integer(String.valueOf(getSession().createQuery("select count(*) as number from Device").uniqueResult()));
	}

	/**
	 * 工作中设备
	 */
	public Integer countWork() {
		return (Integer)new Integer(String.valueOf(getSession().createQuery("select count(*) as number from Device d where d.offline = null and upline != null").uniqueResult()));
	}

	/**
	 * 故障设备
	 */
	public Integer countError() {
		return (Integer)new Integer(String.valueOf(getSession().createQuery("select count(*) as number from Device d where upline = null or offline < upline").iterate().next()));
	}
	
}
