package com.zqrc.sems.projects.orm;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * 设备
 * @author 李志飞
 *
 */
public class Device {
	
	private Integer id;
	private String name;
	private String info;
	private String ip;
	private Date upline;
	private Date offline;
	private String tudex;
	private String tudey;
	private Set<Datas>datas=new HashSet<Datas>();
	
	public Device() {
	}
	
	public String getTudex() {
		return tudex;
	}

	public void setTudex(String tudex) {
		this.tudex = tudex;
	}



	public String getTudey() {
		return tudey;
	}



	public void setTudey(String tudey) {
		this.tudey = tudey;
	}



	public Set<Datas> getDatas() {
		return datas;
	}

	public void setDatas(Set<Datas> datas) {
		this.datas = datas;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getInfo() {
		return info;
	}

	public void setInfo(String info) {
		this.info = info;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getUpline() {
		return upline;
	}

	public void setUpline(Date upline) {
		this.upline = upline;
	}

	public Date getOffline() {
		return offline;
	}

	public void setOffline(Date offline) {
		this.offline = offline;
	}

	@Override
	public String toString() {
		return "{\"id\":" + id + ", \"name\":\"" + name + "\", \"info\":\"" + info
				+ "\", \"ip\":\"" + ip + "\",\"upline\":\"" + upline + "\",\"offline\":\"" + offline
				+ "\",\"tudex\":\"" + tudex + "\",\"tudey\":\"" + tudey
				+ "\"}";
	}
	
}
