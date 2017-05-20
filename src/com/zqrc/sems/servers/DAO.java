package com.zqrc.sems.servers;


import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 
 * @project RS
 * @apply deal all sql action
 * @Desc 
 * @DescList cn.rs.dao
 * @author 李志飞
 *
 * @Date 2016-7-4
 * @UpDate 2016
 */
public class DAO {
	private DBO bo=new DBO();
//	/**
//	 * @apply check name by username,and return RS_User bean for Login
//	 * 用户登录基础信息查询
//	 * @param user
//	 * @return RS_User
//	 * @throws RS_Exception 
//	 */
//	public Rs_User findByUsername(String username) throws RS_Exception {
//		ResultSet rs=null;
//		try {
//			Rs_User user=new Rs_User();
//			String sql1="select * from rs_users where rs_user='"+username+"'" ;
//			 rs=bo.getRs(sql1);
//			while(rs.next()){
//				user.setRs_user(rs.getString("rs_user"));
//				user.setRs_password(rs.getString("rs_password"));
//				user.setRs_role(rs.getString("rs_role"));
//			}
//			if(user.getRs_user()!=null&&user.getRs_role()!=null){
//				return user;
//			}else{
//				return null;
//			}
//			
//		} catch (Exception e) {
//			throw new RS_Exception("连接失败！");
//		}
//		finally{
//			bo.closed();
//		}
//	}
//	/**
//	 * find all nessage for user
//	 * 用户全部信息维护查询
//	 * @throws RS_Exception 
//	 */
//	public Users findAllByUsername(String username) throws RS_Exception {
//		ResultSet rs=null;
//		try {
//			Users user=new Users();
//			String sql1="select * from rs_users where rs_user='"+username+"'" ;
//			 rs=bo.getRs(sql1);
//			while(rs.next()){
//				user.setRs_user(rs.getString("rs_user"));
//				user.setRs_password(rs.getString("rs_password"));
//				user.setRs_role(rs.getString("rs_role"));
//				user.setRs_name(rs.getString("rs_name"));
//				user.setRs_phone(rs.getString("rs_phone"));
//				user.setRs_other(rs.getString("rs_other"));
//			}
//			if(user.getRs_user()!=null&&user.getRs_role()!=null){
//				return user;
//			}else{
//				return null;
//			}
//			
//		} catch (Exception e) {
//			throw new RS_Exception("连接失败！");
//		}
//		finally{
//			bo.closed();
//		}
//	}
	
	/**
	 * @apply update message for user
	 * 用户信息修改
	 */
	public boolean changeByUser(String sql1) {

		if(bo.update(sql1)==1){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * @apply delete message by user
	 * 删除用户数据
	 */
	public boolean deleteByUser(String user) {
		String sql1="delete from rs_users where rs_user='"+user+"'";
		if(bo.update(sql1)==1){
			return true;
		}else{
			return false;
		}
	}
}
