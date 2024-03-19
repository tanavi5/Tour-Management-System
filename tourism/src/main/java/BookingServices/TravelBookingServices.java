package BookingServices;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Connection.Util;

@WebServlet("/TravelBookingServices")
public class TravelBookingServices extends HttpServlet {
	static Connection 			connection			= null;
	static Statement 			statement			= null;
	static PreparedStatement 	prepareStatement	= null;
	static ResultSet 			resultSet			= null;
	static String				query				= null;

	public static Boolean save(HttpServletRequest request) throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String number	= request.getParameter("number");
		
		String email	= request.getParameter("email");
		String pickLocation	= request.getParameter("pickLocation");
		String dropLocation	= request.getParameter("dropLocation");
		String pickDate  = request.getParameter("pickDate");
		String dropDate	= request.getParameter("dropDate");
		String adults	= request.getParameter("adults");
		String children	= request.getParameter("children");
		String price	= request.getParameter("price");
		System.out.print("First Name :"+firstName);
		try{
			/*File image= new File(myloc);*/
			Connection			connection= Util.getConnection();
			
			query				= "INSERT INTO `travelbooking` (`user_name`, `user_contact`, `user_email`, `pick_location`, `drop_location`, `pick_date`, `drop_date`, `travel_children`, `travel_adults`, `travel_price`) VALUES (?,?,?,?,?,?,?,?,?,?)";
			prepareStatement	= connection.prepareStatement(query);
			
			prepareStatement.setString(1, firstName);
			prepareStatement.setString(2, number);
			prepareStatement.setString(3, email);
			prepareStatement.setString(4, pickLocation);
			prepareStatement.setString(5, dropLocation);
			prepareStatement.setString(6, pickDate);
			prepareStatement.setString(7, dropDate);
			prepareStatement.setString(8, children);
			prepareStatement.setString(9, adults);
			prepareStatement.setString(10, price);
			prepareStatement.executeUpdate();
			
			
		} catch(SQLException e){
	System.out.println("Error while inserting Travel Record");
	e.printStackTrace();
} catch(Exception e){
	e.printStackTrace();
}finally {
	Util.closeConnection(resultSet, statement, prepareStatement, connection);
}
    
return true;
}

}

