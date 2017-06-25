package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.CrewModel;

/**
 * Servlet implementation class CrewUpdateServlet
 */
@WebServlet("/CrewUpdateServlet")
public class CrewUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrewUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
	    String email=request.getParameter("email");
	    String dob=request.getParameter("dob");
	    String password=request.getParameter("password");
		String contact=request.getParameter("contact");
		
		CrewModel obj=new CrewModel();
		obj.setUname(name);
		obj.setEmail(email);
		obj.setDob(dob);
		obj.setPwd(password);
		obj.setContact(contact);
		
		String sql="update crewd set username=?,email=?,dob=?,password=?,contact=? where email=?";
		 
		IBMDAO obj1=new IBMDAO();
		String msg=obj1.UpdateCrew(obj, sql,email);
		if(msg.equals("success"))
		{
			response.sendRedirect("CrewUpdate.jsp");
		}
		else
		{
			response.sendRedirect("CrewUpdate.jsp?error=fail to update record");	
		}
	}

}
