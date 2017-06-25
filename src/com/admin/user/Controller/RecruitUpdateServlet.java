package com.admin.user.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.RecruitModel;

/**
 * Servlet implementation class RecruitUpdateServlet
 */
@WebServlet("/RecruitUpdateServlet")
public class RecruitUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecruitUpdateServlet() {
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
	    String qualification=request.getParameter("qualification");
	    String contact=request.getParameter("contact");
	    String password=request.getParameter("password");
		
		
		RecruitModel obj=new RecruitModel();
		obj.setName(name);
		obj.setEmail(email);
		obj.setDob(dob);
		obj.setQualification(qualification);
		obj.setPassword(password);
		obj.setContact(contact);
		
		String sql="update recruit set name=?,email=?,dob=?,qualification=?,contact=?,password=? where email=?";
		 
		IBMDAO obj1=new IBMDAO();
		String msg=obj1.UpdateRecruit(obj, sql,email);
		if(msg.equals("success"))
		{
			response.sendRedirect("RecuitUpdate.jsp");
		}
		else
		{
			response.sendRedirect("RecruitUpdate.jsp?error=fail to update record");	
		}
	}

}


