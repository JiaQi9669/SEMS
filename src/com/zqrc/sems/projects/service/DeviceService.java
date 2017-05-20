package com.zqrc.sems.projects.service;

import com.zqrc.sems.projects.base.BaseDao;
import com.zqrc.sems.projects.orm.Device;

/**
 * 
 * @author 李志飞
 *
 */
public interface DeviceService extends BaseDao<Device>{
	
	/**
	 * 所有设备数
	 * @return
	 */
	Integer countAll();
	
	/**
	 * 工作中设备数
	 * @return
	 */
	Integer countWork();
	
	/**
	 * 故障设备
	 * @return
	 */
	Integer countError();
	
}
