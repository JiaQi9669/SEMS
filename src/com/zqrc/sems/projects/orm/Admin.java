package com.zqrc.sems.projects.orm;

/**
 * 管理
 * @author 李志飞
 *
 */
public class Admin {

	private Integer id;
	private String name;
	private String account;
	private String pass;
	private String findpass;
	private String role;
	
	public Admin() {
	}
	
	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}



	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}



	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getFindpass() {
		return findpass;
	}

	public void setFindpass(String findpass) {
		this.findpass = findpass;
	}
}
