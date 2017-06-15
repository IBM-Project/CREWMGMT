package com.admin.user.Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.AdminModel;
import com.admin.user.Model.CrewModel;
import com.admin.user.Model.RecruitModel;
import com.admin.user.Model.TrainModel;

/**
 * Servlet implementation class Servlet_home
 */
@WebServlet("/Servlet_home")
public class Servlet_home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet_home() {
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
	
		
		 String name = request.getParameter("username");
		 String password= request.getParameter("password");
         int value=Integer.parseInt(request.getParameter("user"));
         
         if(value==1)
         {
        	 
    		 AdminModel obj = new AdminModel();
    		 obj.setName(name);
    		 obj.setPassword(password);
    		 
    		 String sql="Select * from admin where username=? and password =?";
    		 
    		 IBMDAO obj1 = new IBMDAO();
    		 
    		 
    		String msg=obj1.Validate1(obj,sql);
    		 
    		 if(msg.equals("success"))
    		 {
    			 System.out.println("success");
    			 response.sendRedirect("Admin.html");
    		 }
    		 
    		 else
    		 {
    			 System.out.println("failure");
    			//value should be home here
    			 response.sendRedirect("Home.html?error=INVALID USERNAME AND PASSWORD");
    		 }
    		 	
    		 
    		 
    			System.out.println(name);
    			System.out.println(password);	 
        	 
         }
         
        
	

	
	

         if(value==2)
         {
        	 
      		 RecruitModel obj = new RecruitModel();
      		 obj.setName(name);
      		 obj.setPassword(password);
      		 
      		 String sql="Select * from recruit where name=? and password =?";
      		 
      		 IBMDAO obj1 = new IBMDAO();
      		 
      		 
      		String msg=obj1.ValidateRecruit(obj,sql);
      		 
      		 if(msg.equals("success"))
      		 {
      			 System.out.println("success");
      			 response.sendRedirect("RecruitLogin.jsp");
      		 }
      		 
      		 else
      		 {
      			 System.out.println("failure");
      			//value should be home here
      			 response.sendRedirect("Home.html?error=INVALID USERNAME AND PASSWORD");
      		 }
      		 	
      		 
      		 
      			System.out.println(name);
      			System.out.println(password);	 
        	 
         }
         
         if(value==3)
         {
        	 
      		 TrainModel obj = new TrainModel();
      		 obj.setName(name);
      		 obj.setPassword(password);
      		 
      		 String sql="Select * from trainer where name=? and password =?";
      		 
      		 IBMDAO obj1 = new IBMDAO();
      		 
      		 
      		String msg=obj1.ValidateTrainer(obj,sql);
      		 
      		 if(msg.equals("success"))
      		 {
      			 System.out.println("success");
      			 response.sendRedirect("TrainerLogin.jsp");
      		 }
      		 
      		 else
      		 {
      			 System.out.println("failure");
      			//value should be home here
      			 response.sendRedirect("Home.html?error=INVALID USERNAME AND PASSWORD");
      		 }
      		 	
      		 
      		 
      			System.out.println(name);
      			System.out.println(password);	 
        	 
         }
         
    if(value==4)
    {
   	 
		 CrewModel obj = new CrewModel();
		 obj.setUname(name);
		 obj.setPwd(password);
		 
		 //table name changed
		 String sql="Select * from crewd where username=? and password =?";
		 
		 IBMDAO obj1 = new IBMDAO();
		 
		 
		String msg=obj1.Validate4(obj,sql);
		 
		 if(msg.equals("success"))
		 {
			 System.out.println("success");
			 response.sendRedirect("Crew.jsp");
		 }
		 
		 else
		 {
			 System.out.println("failure");
			 //value should be home here
			 response.sendRedirect("Home.html?error=INVALID USERNAME AND PASSWORD");
		 }
		 	
		 
		 
			System.out.println(name);
			System.out.println(password);	 
   	 
    }
    
    
   
}


}
