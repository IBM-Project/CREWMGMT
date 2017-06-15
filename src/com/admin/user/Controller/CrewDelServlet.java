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
 * Servlet implementation class CrewDelServlet
 */
@WebServlet("/CrewDelServlet")
public class CrewDelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrewDelServlet() {
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
		
		
		CrewModel obj = new CrewModel();
		obj.setEmail(email);
		
		
		String sql = "delete from crewd where email= ?";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.DeleteUser1(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessDel.jsp");
		}
		else
		{
			response.sendRedirect("CrewDelete.jsp?error=SORRY COULD NOT DELETE");
		}
	}
	}


