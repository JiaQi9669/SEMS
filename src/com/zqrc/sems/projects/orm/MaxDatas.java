package com.zqrc.sems.projects.orm;

import java.util.Date;

/**
 * 环境数据-极限数据
 * 报警上限
 * @author 李志飞
 *
 */
public class MaxDatas {

	private Integer id;
	private Integer tem;
	private Integer hum;
	private Integer pm25;
	private Integer smog;
	private Integer light;
	private Integer noise;
	private Date date;
	
	public MaxDatas() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getTem() {
		return tem;
	}

	public void setTem(Integer tem) {
		this.tem = tem;
	}

	public Integer getHum() {
		return hum;
	}

	public void setHum(Integer hum) {
		this.hum = hum;
	}

	public Integer getPm25() {
		return pm25;
	}

	public void setPm25(Integer pm25) {
		this.pm25 = pm25;
	}

	public Integer getSmog() {
		return smog;
	}

	public void setSmog(Integer smog) {
		this.smog = smog;
	}

	public Integer getLight() {
		return light;
	}

	public void setLight(Integer light) {
		this.light = light;
	}

	public Integer getNoise() {
		return noise;
	}

	public void setNoise(Integer noise) {
		this.noise = noise;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
	
}
