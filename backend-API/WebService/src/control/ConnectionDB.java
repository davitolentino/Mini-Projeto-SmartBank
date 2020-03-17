package control;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;

import com.mysql.cj.jdbc.result.ResultSetMetaData;
import com.mysql.cj.xdevapi.PreparableStatement;

public class ConnectionDB {

	private static String dns = "jdbc:mysql://localhost:3306/banco?useTimezone=true&serverTimezone=UTC";
	private static String usuario = "root";
	private static String senha = "";

	private static Connection con = null;
	
	public static Connection getConnection() {		
		
		try {
			
			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
			con = DriverManager.getConnection(dns, usuario, senha);
			return con;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
			
		}

	}
	
	public static boolean insertData(String query, String[] data) {
		
		try {
			
			con = getConnection();
			
			PreparedStatement prep = con.prepareStatement(query);
			
			for(int i = 0; i < data.length; i++) {
				prep.setString(i+1, data[i]);
			}
			
			prep.execute();
			prep.close();
			
			con.close();
			
			return true;
			
		}catch(Exception e) {
			
			System.out.println("Exception insertData -" + e.toString());
			
		}
		
		return false;
		
	}
	
	public static JSONArray query(String query, String[] data) {
		
		try {
			
			JSONArray ret = new JSONArray();
			JSONObject obj = new JSONObject();
			
			con = getConnection();
			
			PreparedStatement prep = con.prepareStatement(query);

			for(int i = 0; i < data.length; i++) {
				prep.setString(i+1, data[i]);
			}
			
			ResultSet rs = prep.executeQuery();
			
			ResultSetMetaData rsmd = (ResultSetMetaData) rs.getMetaData();
			
			int columnCount = rsmd.getColumnCount();
			
			while(rs.next()) {
				
				for(int i = 1; i <= columnCount; i++) {

					obj.put(rsmd.getColumnName(i), rs.getString(i));
					
				}
				
				ret.put(obj);
				
				obj = new JSONObject();
				
			}
			
			con.close();
			
			return ret;
			
		}catch(Exception e) {

			System.out.println("Exception query -" + e.toString());
			
			return null;
			
		}
		
	}

}
