package com.admin.user.Controller;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.user.Dao.IBMDAO;

/**
 * Servlet implementation class TrainingEndServlet
 */
@WebServlet("/TrainingEndServlet")
public class TrainingEndServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrainingEndServlet() {
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
		
		
		try
		{
			IBMDAO obj=new IBMDAO();
		
		 HttpSession session=request.getSession();
		String Training =	request.getParameter("rid");
		String Crew=(String) session.getAttribute("trainersession");
	
		
		String sql="select * from crewd where Training=?";
		ResultSet rs =obj.Fetchdetails2(sql,Training);
		
		while(rs.next()){
		
		String sql1="insert into comp_training(crew,training)values(?,?)";
		String crew1 =rs.getString(3);
		String Training1=Training;
		
		 String msg1=obj.UpdateTraining(sql1, crew1, Training1);
				
		}
		
		String sql2=("update crewd set Training=?,Flag=? where Training=?");
		String msg2=obj.UpdateCrew1(sql2,null,"0",Training);
		
		
		String sql3="delete from training where training_name=?";
		String msg3=obj.deleteTraining(sql3,Training);

		System.out.println("crew");
		
		if(msg2=="success" && msg3=="success")
		{
		    response.sendRedirect("TrainingEnd.jsp");	
		}
		
		
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}

}
