package com.zqrc.sems.projects.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zqrc.sems.projects.base.BaseDaoImpl;
import com.zqrc.sems.projects.orm.Datas;
import com.zqrc.sems.projects.service.ViewService;

@Service
@Transactional
public class ViewServiceImpl extends BaseDaoImpl<Datas> implements ViewService{
	
}
