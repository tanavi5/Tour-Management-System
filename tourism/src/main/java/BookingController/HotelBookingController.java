package BookingController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BookingServices.HotelBookingServices;
/**
 * Servlet implementation class HotelBookingController
 */
@WebServlet("/HotelBookingController")
public class HotelBookingController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean status=HotelBookingServices.save(request);
		if(status)
		{
			response.sendRedirect("hotels.html?status=success");
		}
		else {
			
			request.getRequestDispatcher("hotels.html?status=failure");
		}
	}

}
