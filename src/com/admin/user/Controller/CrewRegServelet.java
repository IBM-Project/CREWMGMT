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
 * Servlet implementation class CrewRegServelet
 */
@WebServlet("/CrewRegServelet")
public class CrewRegServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrewRegServelet() {
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
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String uname = request.getParameter("username");
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
		
		CrewModel obj = new CrewModel();
		obj.setEmail(email);
		obj.setPwd(pwd);
		obj.setUname(uname);
		obj.setDob(dob);
		obj.setContact(contact);
		
		String sql = "insert into crewd(username,email,dob,password,contact)values(?,?,?,?,?)";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.insertUser1(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessMsg.jsp");
		}
		else
		{
			response.sendRedirect("CrewRegister.jsp?error=ENTER CORRECT DETAILS");
		}
	}


}
