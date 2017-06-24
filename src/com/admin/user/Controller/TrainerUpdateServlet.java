package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.TrainModel;



@WebServlet("/TrainerUpdateServlet")
public class TrainerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public TrainerUpdateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
	    	String email=request.getParameter("email");
	    	String status=request.getParameter("status");
	    	String timings=request.getParameter("timings");
		String password=request.getParameter("pwd");
		
		TrainModel obj=new TrainModel();
		obj.setName(name);
		obj.setEmail(email);
		obj.setStatus(status);
		obj.setTimings(timings);
		obj.setPassword(password);
		
		String sql="update trainer set name=?,status=?,timings=?,password=? where email=?";
		 
		IBMDAO obj1=new IBMDAO();
		String msg=obj1.UpdateTrainer(obj, sql,email);
		if(msg.equals("success"))
		{
			response.sendRedirect("TrainerUpdate.jsp");
		}
		else
		{
			response.sendRedirect("TrainerUpdate.jsp?error=fail to update record");	
		}
	}
		
	}


