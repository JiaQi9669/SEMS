package com.zqrc.sems.projects.action;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.util.ValueStack;
import com.zqrc.sems.projects.base.BaseAction;
import com.zqrc.sems.projects.orm.MaxDatas;

public class MaxDataAction extends BaseAction<MaxDatas>{

	/**
	 * 更新参数
	 * @return
	 */
	public String updata() {
		List<MaxDatas>list=maxDataService.findAll();
		model.setDate(new Date());
		if(list.size()==0){
			maxDataService.save(model);
		}else{
			maxDataService.evicts(list.get(0));
			model.setId(list.get(0).getId());
			maxDataService.update(model);
		}
		ValueStack vs = ServletActionContext.getContext().getValueStack();
		vs.set("bean", model);
		return "updata";
	}
	
}
