package com.admin.user.Controller;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.RecruitModel;

/**
 * Servlet implementation class CrewRecruitServlet
 */
@WebServlet("/CrewRecruitServlet")
@MultipartConfig(maxFileSize = 16177215)
public class CrewRecruitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CrewRecruitServlet() {
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
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
		String qualification = request.getParameter("qualification");
		//for picname constant
				String Filename="";
				
				//for pic
				PrintWriter out=response.getWriter();
				response.setContentType("text/html");
				
				InputStream inputStream = null;
				String savePath = getServletContext().getRealPath("/")+"images\\";
				
				Part filePart = request.getPart("photo");
				if (filePart != null) {
					// debug messages
					System.out.println(filePart.getName());
					System.out.println(filePart.getSize());
					System.out.println(filePart.getContentType());

					// obtains input stream of the upload file
					inputStream = filePart.getInputStream();
					
					BufferedInputStream bf=new BufferedInputStream(inputStream);
					
					//********************************GETTING FILE NAME*****************************************
					String header=filePart.getHeader("content-disposition");
					StringTokenizer st=new StringTokenizer(header,";");
					String fileToken=""; 
					while(st.hasMoreElements())
					{
						fileToken=st.nextToken();
					}
				    out.println(fileToken);
				    StringTokenizer st1=new StringTokenizer(fileToken,"=");
		            
		            while(st1.hasMoreElements())
					{
						Filename=st1.nextToken();
						
					}
		            out.println("<h1>"+Filename+"</h1>");
		            Filename=Filename.replace("\"", "");
		            out.println("<h1>"+Filename+"</h1>");
		            //************************************************************************************
		            FileOutputStream fout=new FileOutputStream(savePath+Filename);
		            int i=0;
		            while((i=bf.read())!=-1)
		            {
		            	fout.write(i);
		            }
		       }
		
		RecruitModel obj = new RecruitModel();
		obj.setEmail(email);
		obj.setPassword(pwd);
		obj.setName(uname);
		obj.setDob(dob);
		obj.setContact(contact);
		obj.setQualification(qualification);
		obj.setPic(Filename);
		String sql = "insert into recruit(name,email,dob,qualification,contact,password,photor)values(?,?,?,?,?,?,?)";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.insertRecruit(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessMsg.jsp");
		}
		else
		{
			response.sendRedirect("recruit.jsp?error=ENTER CORRECT DETAILS");
		}
	}
	}


