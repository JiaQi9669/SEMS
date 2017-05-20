package com.zqrc.sems.projects.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.sems.projects.base.BaseDaoImpl;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.orm.MaxDatas;
import com.zqrc.sems.projects.service.MaxDataService;
import com.zqrc.sems.projects.service.ViewService;

@Service
@Transactional
public class MaxDataServiceImpl extends BaseDaoImpl<MaxDatas> implements MaxDataService{

	/**
	 * 清空实体
	 */
	public void evicts(MaxDatas datas) {
		getSession().evict(datas);
	}
	
}
