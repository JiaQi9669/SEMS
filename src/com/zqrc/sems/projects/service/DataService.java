package com.zqrc.sems.projects.service;


import java.util.List;

import com.zqrc.sems.projects.base.BaseDao;
import com.zqrc.sems.projects.orm.Datas;

/**
 * 针对于检测系统的
 * @author 李志飞
 *
 */
public interface DataService extends BaseDao<Datas>{
	
	/**
	 * 获取最新的
	 * @return
	 */
	Datas getNews();
	
	/**
	 * 通过设备号获取最新的数据
	 * @return
	 */
	Datas getNewsByDeviceId(Integer id);
	
	/**
	 * 获取最近10天的个设备数据（每天的数据平均值）
	 */
	List<Datas> getDatasInDays();
	
	/**
	 * 获取最近8个周的设备数据（每周的平均值）
	 */
	List<Datas> getDatasInWeek();
	
	/**
	 * 获取最近6个月的设备数据（每月的平均值）
	 */
	List<Datas> getDatasInMonths();
}
