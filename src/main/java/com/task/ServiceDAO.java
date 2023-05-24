package com.task;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.Part;

import config.DbHelper;

public class ServiceDAO {

	private Connection con;

	public ServiceDAO(Connection con) {
		super();
		this.con = con;
	}

	// Insert Service
		public static void addService(ServiceDtls s, Part part, ServletContext ctx) throws Exception {
			Connection con = DbHelper.connect();
			PreparedStatement ps = con.prepareStatement(
					"INSERT into services(ServiceName,Price,ServiceDetail) VALUES(?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, s.getServiceName());
			ps.setString(2, s.getPrice());
			ps.setString(3, s.getServiceDetail());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			rs.next();
			String id = rs.getString(1);
			ps = con.prepareStatement("update services set image=? where id=?");
			ps.setString(1, id + ".jpg");
			ps.setString(2, id);
			ps.executeUpdate();
			fileCopy(ctx, part, id + ".jpg");

			con.close();
			System.out.println("All done with Service");
		}

		public static void fileCopy(ServletContext ctx, Part part, String filename) throws Exception {
			Files.copy(part.getInputStream(), Paths.get(ctx.getRealPath("/images/"), filename),
					StandardCopyOption.REPLACE_EXISTING);
		}
		
		
		// manage Service
		
		public static List<ServiceDtls> getService(boolean sort, boolean desc) throws Exception {
			List<ServiceDtls> list = new ArrayList<ServiceDtls>();
			Connection con = DbHelper.connect();
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM services order by id");
			
			while (rs.next()) {
				ServiceDtls a = new ServiceDtls();
				a.setId(rs.getInt("id"));
				a.setServiceName(rs.getString("ServiceName"));
				a.setPrice(rs.getString("Price"));
				a.setServiceDetail(rs.getString("ServiceDetail"));
			    a.setImage(rs.getString("image"));
				a.setCreationDate(rs.getString("CreationDate"));
				list.add(a);
			}
			con.close();
			return list;
		}
		
		//Update Service
		public static void updateService(ServiceDtls a) throws Exception {
			Connection con = DbHelper.connect();
			PreparedStatement ps = con
					.prepareStatement("UPDATE services set ServiceName=?,Price=?,ServiceDetail=? where id=?");
			ps.setString(1, a.getServiceName());
			ps.setString(2, a.getPrice());
			ps.setString(3, a.getServiceDetail());
			ps.setInt(4, a.getId());

			ps.executeUpdate();
			con.close();
			System.out.println("Service Updated..!!");
		}
	
	
	
	

}
