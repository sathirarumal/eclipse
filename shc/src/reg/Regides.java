package reg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import connection.DBConnection;

/**
 * Servlet implementation class Regides
 */
@WebServlet("/Regides")
public class Regides extends HttpServlet {
	private static final long serialVersionUID = 1L;
      String state; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Regides() {
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
		// TODO Auto-generated method stub
		String dis = request.getParameter("dis");
		String ms = request.getParameter("ms");
		String ps = request.getParameter("ps");
		String ss = request.getParameter("ss");
		
		Connection con = DBConnection.createConnection();
		
	try
	{
	String query = "insert into disease (dis,ms,ps,ss) values (?,?,?,?)"; //Insert user details into the table 'USERS'
	PreparedStatement pst = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	pst.setString(1, dis);
	pst.setString(2, ms);
	pst.setString(3, ps);
	pst.setString(4, ss);
	pst.executeUpdate();
	
	response.sendRedirect("addDisease.jsp");
	state="success";
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	
	}
	
}


