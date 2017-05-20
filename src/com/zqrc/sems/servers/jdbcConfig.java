package com.zqrc.sems.servers;


import java.util.Properties;



public class jdbcConfig {
	public static String[] getConfig(){
		String[]str=new String[2];
		String name= PropertiesUtil.getInstance().getPropertyValue("config.properties","jdbcname");
		String password= PropertiesUtil.getInstance().getPropertyValue("config.properties","jdbcpassword");
		str[0]=name;
		str[1]=password;
		return str;
	}
}
