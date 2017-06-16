package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.TrainingModel;

/**
 * Servlet implementation class CrewTrainingServlet
 */
@WebServlet("/CrewTrainingServlet")
public class CrewTrainingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrewTrainingServlet() {
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
		
		String trainingname = request.getParameter("tname");
		String trainer = request.getParameter("trainer");
		String startdate = request.getParameter("sdate");
		String enddate= request.getParameter("edate");
		
		TrainingModel obj = new TrainingModel();
		obj.setTrainingname(trainingname);
		obj.setTrainer(trainer);
		obj.setStartdate(startdate);
		obj.setEnddate(enddate);
		
		
		String sql = "insert into training(training_name,trainer,sdate,edate)values(?,?,?,?)";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.insertTraining(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessTraining.jsp");
		}
		else
		{
			response.sendRedirect("Training.jsp?error=ERROR WHILE ENTERING TRAINING");
		}
	}
	}


