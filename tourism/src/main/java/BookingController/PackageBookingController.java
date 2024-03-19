package BookingController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import BookingServices.PackageBookingServices;

@WebServlet("/PackageBookingController")
public class PackageBookingController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean status=PackageBookingServices.save(request);
		if(status)
		{
			response.sendRedirect("destinations.html?status=success");
		}
		else {
			
			request.getRequestDispatcher("destinations.html?status=failure");
		}
	}

}
