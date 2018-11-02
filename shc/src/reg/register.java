package reg;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import connection.DBConnection;

/**
 * Servlet implementation class register
 */
@WebServlet("/register")
public class register extends HttpServlet {
	private static final long serialVersionUID = 1L;

 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        

        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pw = request.getParameter("password");
		
		
		Connection con = DBConnection.createConnection();
	
	try
	{
	String query = "insert into admin (username,password) values (?,?)"; //Insert user details into the table 'USERS'
	PreparedStatement ps = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	ps.setString(1, uname);
	ps.setString(2, pw);
	ps.executeUpdate();
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	response.sendRedirect("adminREG.jsp");
	}
}

