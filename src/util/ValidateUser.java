package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import bean.LoginBean;

public class ValidateUser {

	private final static String driverName = "com.mysql.jdbc.Driver";
	private final static String username="root";
	private final static String password="shrijit08";
	private final static String url = "jdbc:mysql://localhost/scheduler";
	
	public static boolean validate(LoginBean bean){
		
		boolean result = false;
		
		Connection con = null;
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("Select * from users where userid=? and password=?");
			st.setString(1, bean.getUsername());
			st.setString(2, bean.getPassword());
			
			ResultSet rs = st.executeQuery();
			rs.first();
			
			System.out.println("bean:"+bean.getUsername()+" "+bean.getPassword());
			//System.out.println("sql: "+rs.getString(0)+" "+rs.getString(1));
			
			if(rs.getString(1).equalsIgnoreCase(bean.getUsername())){
				result = true;
			}else{
				result = false;
			}
			/*if(rs.first()){
				result = true;
			}
			else{
				result = false;
			}*/
			st.close();
			con.close();
		} 
		catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;
	}
	
	public static boolean register(LoginBean bean){
		
		boolean result = false;
		
		Connection con = null;
		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url,username,password);
			PreparedStatement st = con.prepareStatement("insert into users values(userid=? and password=?)");
			st.setString(0, bean.getUsername());
			st.setString(1, bean.getPassword());
			
			int rs= st.executeUpdate();
			
			if(rs==1){
				result = true;
			}else{
				result = false;
			}
			/*if(rs.first()){
				result = true;
			}
			else{
				result = false;
			}*/
			st.close();
			con.close();
		} 
		catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return true;
	}
}
