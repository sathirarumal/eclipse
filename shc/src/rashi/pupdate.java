package rashi;

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
 * Servlet implementation class pupdate
 */
@WebServlet("/pupdate")
public class pupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public pupdate() {
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
		String fname=request.getParameter("fn");
		String lname=request.getParameter("ln");
		String birth=request.getParameter("bd");
		String gender=request.getParameter("ge");
		String telno=request.getParameter("tn");
		String email=request.getParameter("em");
		String username=request.getParameter("un");
		String password=request.getParameter("pw");
		
		Connection con = DBConnection.createConnection();
		
		try
		{
			String query = "update plogin set fname=?,lname=?,birth=?,gender=?,telno=?,email=?,password=? where username=?" ;
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1,fname);
			ps.setString(2,lname);
			ps.setString(3,birth);
			ps.setString(4,gender);
			ps.setString(5,telno);
			ps.setString(6,email);
			ps.setString(7,username);
			ps.setString(8,password);
			ps.executeUpdate();
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}

	}

}
