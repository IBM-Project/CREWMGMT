package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;

/**
 * Servlet implementation class CrewDelDynamicServlet
 */
@WebServlet("/CrewDelDynamicServlet")
public class CrewDelDynamicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrewDelDynamicServlet() {
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
			  String sql="delete from crewd where id=?";
			  msg=obj.DeleteCrewByID(sql, id[i]);
			  System.out.println(id[i]+" "+msg);
		  }
		response.sendRedirect("CrewDeleteDynamic.jsp");
	}

}
