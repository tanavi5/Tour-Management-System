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

/**
 * Servlet implementation class HotelBookingServices
 */
@WebServlet("/HotelBookingServices")
public class HotelBookingServices extends HttpServlet {
	static Connection 			connection			= null;
	static Statement 			statement			= null;
	static PreparedStatement 	prepareStatement	= null;
	static ResultSet 			resultSet			= null;
	static String				query				= null;

	public static Boolean save(HttpServletRequest request) throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String number	= request.getParameter("number");
		
		String email	= request.getParameter("email");
		String location	= request.getParameter("location");
		String checkIn  = request.getParameter("checkIn");
		String checkOut	= request.getParameter("checkOut");
		String rooms	= request.getParameter("rooms");
		String adults	= request.getParameter("adults");
		String children	= request.getParameter("children");
		String price	= request.getParameter("price");
		System.out.print("First Name :"+firstName);
		try{
			/*File image= new File(myloc);*/
			Connection			connection= Util.getConnection();
			
			query				= "INSERT INTO `hotelbooking` (`user_name`, `user_number`, `user_email`, `hotel_location`, `hotel_checkIn`, `hotel_checkOut`, `hotel_rooms`, `hotel_adults`, `hotel_children`, `hotel_price`) VALUES (?,?,?,?,?,?,?,?,?,?)";
			prepareStatement	= connection.prepareStatement(query);
			
			prepareStatement.setString(1, firstName);
			prepareStatement.setString(2, number);
			prepareStatement.setString(3, email);
			prepareStatement.setString(4, location);
			prepareStatement.setString(5, checkIn);
			prepareStatement.setString(6, checkOut);
			prepareStatement.setString(7, rooms);
			prepareStatement.setString(8, adults);
			prepareStatement.setString(9, children);
			prepareStatement.setString(10, price);
			prepareStatement.executeUpdate();
			
			
		} catch(SQLException e){
	System.out.println("Error while inserting hotel Record");
	e.printStackTrace();
} catch(Exception e){
	e.printStackTrace();
}finally {
	Util.closeConnection(resultSet, statement, prepareStatement, connection);
}
    
return true;
}

}
