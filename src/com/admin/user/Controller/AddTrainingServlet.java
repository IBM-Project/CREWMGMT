package com.admin.user.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.user.Dao.IBMDAO;

/**
 * Servlet implementation class AddTrainingServlet
 */
@WebServlet("/AddTrainingServlet")
public class AddTrainingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTrainingServlet() {
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
	
		IBMDAO obj=new IBMDAO();
		HttpSession session=request.getSession();
		String Training =	request.getParameter("rid");
		String Crew=(String) session.getAttribute("crewsession");
		//System.out.println("crew"+Crew);
		
		String sql="select * from crewd where email=?";
		String msg=obj.CheckFlag(sql,Crew);
		
		if(msg=="success")
		{   
			String sql1="update crewd set Training=?,Flag=? where email=?";
			String msg1=obj.AddTraining(sql1,Training,Crew);
			System.out.println("i am here" + msg);
			if(msg1=="success")
			{

				response.sendRedirect("Crew.jsp?");
			}
			else
			{

				response.sendRedirect("Addtraining.jsp?error=CANT ADD");
			}
			
		}
		
		else if(msg=="flag")
		{
			response.sendRedirect("Addtraining.jsp?error=Already Doing a training");
		}
		else
		{
			response.sendRedirect("Addtraining.jsp?error=SORRY COULD NOT ADD");
		}
		
		
		
	
	
	
	
	}

}
