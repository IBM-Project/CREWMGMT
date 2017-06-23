package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;

/**
 * Servlet implementation class TrainerDelDynamicServlet
 */
@WebServlet("/TrainerDelDynamicServlet")
public class TrainerDelDynamicServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public TrainerDelDynamicServlet() {
        super();
    }
        // TODO Auto-generated constructor stub
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IBMDAO obj=new IBMDAO();
		  String msg=null;
		  String [] id=request.getParameterValues("rid");
		  for(int i=0;i<id.length;i++)
		  {
			  String sql="delete from trainer where id=?";
			  msg=obj.DeleteTrainerByID(sql, id[i]);
			  System.out.println(id[i]+" "+msg);
		  }
		response.sendRedirect("TrainerDelDynamic.jsp");
		
		
	}

}
