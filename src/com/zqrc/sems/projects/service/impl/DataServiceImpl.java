package com.zqrc.sems.projects.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.sems.projects.base.BaseDaoImpl;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.service.DataService;

@Service
@Transactional
public class DataServiceImpl extends BaseDaoImpl<Datas> implements DataService{

	/**
	 * 获取最新的一条数据（设备无关性）
	 */
	public Datas getNews() {
		return (Datas)getSession().createQuery("from Datas order by date desc").list().get(0);
	}
	
	/**
	 * 通过设备号获得最新数据
	 */
	public Datas getNewsByDeviceId(Integer id) {
		return (Datas)getSession().createQuery("from Datas where device.id = ?  order by date desc").setInteger(0, id).list().get(0);
	}
	
	/**
	 * 获取最近10天的个设备数据（每天的数据平均值）
	 */
	public List<Datas> getDatasInDays() {
		
		return null;
	}

	/**
	 * 获取最近8个周的设备数据（每周的平均值）
	 */
	public List<Datas> getDatasInWeek() {
		return null;
	}

	/**
	 * 获取最近6个月的设备数据（每月的平均值）
	 */
	public List<Datas> getDatasInMonths() {
		return null;
	}
	
}
