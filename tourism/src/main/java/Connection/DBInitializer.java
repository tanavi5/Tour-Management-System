package Connection;

public interface DBInitializer {
	final String DRIVER	= "com.mysql.jdbc.Driver";
	
	
	//****************For Offline****************//
	final String URL	= "jdbc:mysql://localhost:3306/tour";
	final String USER	= "root";
	final String PASS	= "";

	//****************For Online****************//
	/*final String URL	= "jdbc:mysql://localhost:3306/apjtechs_take2";
		final String USER	= "apjtechs_k27";
		final String PASS	= "elEyC[7XtdX1";*/
}

