package Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Util {
	static {
		try {
			Class.forName(DBInitializer.DRIVER);
		} catch(ClassNotFoundException e) {
			System.out.println(e);
		}
	}
	
	public static Connection getConnection() {
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(DBInitializer.URL,DBInitializer.USER,DBInitializer.PASS);
		} catch (SQLException e) {
			System.out.println("Connection Failed.");
			e.printStackTrace();
		} 
		return connection;
	}
	
	public static void closeConnection(ResultSet resultset,Statement statement,PreparedStatement preparestatement,Connection connection) {
		try {
			if(resultset!=null) {
				resultset.close();
				resultset=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
		
		try {
			if(statement!=null) {
				statement.close();
				statement=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
		try{
			if(preparestatement != null) {
				preparestatement.close();
				preparestatement=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
		try {
			if(connection!=null) {
				connection.close();
				connection=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
	}
	public static void closeConnection1(ResultSet resultset,Statement statement,PreparedStatement preparestatement,Connection connection) {
		try {
			if(resultset!=null) {
				resultset.close();
				resultset=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
		
		try {
			if(statement!=null) {
				statement.close();
				statement=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
		try{
			if(preparestatement != null) {
				preparestatement.close();
				preparestatement=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
		try {
			if(connection!=null) {
				connection.close();
				connection=null;
			}
		} catch(SQLException ex) {
			System.out.println(ex);
		}
	}
}