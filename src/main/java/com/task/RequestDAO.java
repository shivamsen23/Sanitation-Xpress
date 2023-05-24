package com.task;

import java.sql.Connection;
import java.sql.PreparedStatement;


import config.DbHelper;

public class RequestDAO {

	private Connection con;

	public RequestDAO(Connection con) {
		super();
		this.con = con;
	}

	// Insert request
	public static void addRequest(Request r) throws Exception {
		Connection con = DbHelper.connect();
		PreparedStatement ps = con.prepareStatement(
				"INSERT into requests(ServiceID,RequestID,Name,Email,DateofSanitization,TimeofSanitization,Address,MobileNumber,State,City,Message) VALUES(?,?,?,?,?,?,?,?,?,?,?)");
		ps.setInt(1, r.getServiceID());
		ps.setInt(2, r.getRequestID());
		ps.setString(3, r.getName());
		ps.setString(4, r.getEmail());
		ps.setString(5, r.getDateofSanitization());
		ps.setString(6, r.getTimeofSanitization());
		ps.setString(7, r.getAddress());
		ps.setString(8, r.getMobileNumber());
		ps.setString(9, r.getState());
		ps.setString(10, r.getCity());
		ps.setString(11, r.getMessage());
		ps.executeUpdate();

		con.close();
		System.out.println("All done with Request");
	}
	
	//Insert Tracking
	
	public static void addTrack(Request r) throws Exception {
		Connection con = DbHelper.connect();
		PreparedStatement ps = con.prepareStatement(
				"INSERT into tracking(RequestID,Remark,Status) VALUES(?,?,?)");
		ps.setInt(1, r.getRequestID());
		ps.setString(2, r.getRemark());
		ps.setString(3, r.getStatus());
		ps.executeUpdate();
		con.close();
		System.out.println("All done with Tracking");
	}

	// Update Remark and Status code here
	public boolean updateRemark(Request r) {		
		boolean f = false;
		try {
			String sql = "update requests set Remark=?, Status=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, r.getRemark());
			ps.setString(2, r.getStatus());
			ps.setInt(3, r.getId());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
