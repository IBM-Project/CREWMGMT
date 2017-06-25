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
		 IBMDAO obj=new IBMDAO();
		 HttpSession session=request.getSession();
		String Training =	request.getParameter("rid");
		String Crew=(String) session.getAttribute("trainersession");
		//System.out.println("crew"+Crew);
		
		String sql="select * from crewd where Training=?";
		String sql1="insert into comp_training(crew,training)values(?,?)";
		String sql2=("update crewd set Training=?,Flag=? where Training=?");
		String sql3="delete from training where training_name=?";
		
		
	}

}
