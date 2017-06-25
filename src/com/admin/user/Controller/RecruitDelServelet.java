package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;


@WebServlet("/RecruitDelServelet")
public class RecruitDelServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecruitDelServelet() {
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
		  String msg=null;
		  String [] id=request.getParameterValues("rid");
		  for(int i=0;i<id.length;i++)
		  {
			  String sql="delete from recruit where id=?";
			  msg=obj.DeleteRecruitByID(sql, id[i]);
			  System.out.println(id[i]+" "+msg);
		  }
		response.sendRedirect("RecruitDel.jsp");
	}

}
