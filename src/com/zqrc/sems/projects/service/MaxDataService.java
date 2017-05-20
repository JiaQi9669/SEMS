package com.zqrc.sems.projects.service;

import com.zqrc.sems.projects.base.BaseDao;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.orm.MaxDatas;

/**
 * 
 * @author 李志飞
 *
 */
public interface MaxDataService extends BaseDao<MaxDatas>{
	
	void evicts(MaxDatas datas);
}
