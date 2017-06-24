package com.admin.user.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.user.Dao.IBMDAO;
import com.admin.user.Model.CrewModel;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.StringTokenizer;

import javax.servlet.http.Part;


@WebServlet("/CrewRegServelet")
@MultipartConfig(maxFileSize = 16177215)
public class CrewRegServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CrewRegServelet() {
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
		String pwd = request.getParameter("pwd");
		String uname = request.getParameter("username");
		String dob = request.getParameter("dob");
		String contact = request.getParameter("contact");
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
		
		CrewModel obj = new CrewModel();
		obj.setEmail(email);
		obj.setPwd(pwd);
		obj.setUname(uname);
		obj.setDob(dob);
		obj.setContact(contact);
		obj.setPic(Filename);
		
		String sql = "insert into crewd(username,email,dob,password,contact,photo)values(?,?,?,?,?,?)";
		
		IBMDAO obj1 = new IBMDAO();
		String msg = obj1.insertUser1(obj, sql);
		if(msg.equals("success"))
		{
			response.sendRedirect("SuccessMsg.jsp");
		}
		else
		{
			response.sendRedirect("CrewRegister.jsp?error=ENTER CORRECT DETAILS");
		}
	}


}
