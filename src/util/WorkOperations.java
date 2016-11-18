package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.LoginBean;
import bean.WorkBean;

public class WorkOperations {
	
	
	private final static String driverName = "com.mysql.jdbc.Driver";
	private final static String username="root";
	private final static String password="shrijit08";
	private final static String url = "jdbc:mysql://localhost/scheduler";
	
	public static void addWork(WorkBean bean){
		
		Connection con = null;
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("insert into work values(?,?,?)");
			st.setString(1, bean.getUser());
			st.setString(2, bean.getWorkname());
			st.setString(3, bean.getType());
			
			st.executeUpdate();
			
			st.close();
			con.close();
		} 
		catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
		}
	}

}
