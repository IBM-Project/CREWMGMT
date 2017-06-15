package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.TrainModel;

/**
 * Servlet implementation class CrewTrainerServlet
 */
@WebServlet("/CrewTrainerServlet")
public class CrewTrainerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CrewTrainerServlet() {
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
		String status = request.getParameter("status");
		String timings = request.getParameter("timings");
		
		
		
		TrainModel obj = new TrainModel();
		obj.setEmail(email);
		obj.setPassword(pwd);
		obj.setName(uname);
		obj.setTimings(timings);
		obj.setStatus(status);
		
		
		String sql = "insert into trainer(name,email,status,timings,password)values(?,?,?,?,?)";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.insertTrainer(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessMsg.jsp");
		}
		else
		{
			response.sendRedirect("trainer.jsp?error=ENTER CORRECT DETAILS");
		}
	}
	 

}


