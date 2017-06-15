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
 * Servlet implementation class CrewRecruitServlet
 */
@WebServlet("/CrewRecruitServlet")
public class CrewRecruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CrewRecruitServlet() {
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
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String uname = request.getParameter("username");
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
		String qualification = request.getParameter("qualification");
		
		
		RecruitModel obj = new RecruitModel();
		obj.setEmail(email);
		obj.setPassword(pwd);
		obj.setName(uname);
		obj.setDob(dob);
		obj.setContact(contact);
		obj.setQualification(qualification);
		
		String sql = "insert into recruit(name,email,dob,qualification,contact,password)values(?,?,?,?,?,?)";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.insertRecruit(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessMsg.jsp");
		}
		else
		{
			response.sendRedirect("recruit.jsp?error=ENTER CORRECT DETAILS");
		}
	}
	}


