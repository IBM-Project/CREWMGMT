package com.admin.user.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.admin.user.Model.AdminModel;
import com.admin.user.Model.CrewModel;
import com.admin.user.Model.RecruitModel;
import com.admin.user.Model.TrainModel;
import com.admin.user.Model.TrainingModel;

public class IBMDAO {

	/**
	 * @param args
	 */
	
	public static String drivername="com.mysql.jdbc.Driver"; //com.ibm.db2.jcc.DB2Driver
	public static String url="jdbc:mysql://localhost:3306/crew";
	public static String username="root";
	public static String pas1="natasha"; //password changed
	static Connection con=null;
	public ResultSet rs=null;
	
	static{
	
		try {
			Class.forName(drivername);
			con=DriverManager.getConnection(url,username,pas1);
			System.out.println("Success");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
	
	
	//PreparedStatement ps = new PrepareStatement();
	
		
				
				
	}
	
	public String Validate1(AdminModel obj1, String query)
	{  
		try{
		PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, obj1.getName());
			ps.setString(2, obj1.getPassword());

			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				return "success";
			}
			else 
			{
				return "failure";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			return "";
			
		
		
	}
	
	public String ValidateRecruit(RecruitModel obj1, String query)
	{  
		try{
		PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, obj1.getEmail());
			ps.setString(2, obj1.getPassword());

			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				return "success";
			}
			else 
			{
				return "failure";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			return "";
			
		
		
	}
	public String ValidateTrainer(TrainModel obj1, String query)
	{  
		try{
		PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, obj1.getEmail());
			ps.setString(2, obj1.getPassword());

			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				return "success";
			}
			else 
			{
				return "failure";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			return "";
			
		
		
	}
	
	public String Validate4(CrewModel obj1, String query)
	{  
		try{
		PreparedStatement ps=con.prepareStatement(query);
			//get functions changed as crewmodel changed
			ps.setString(1, obj1.getEmail());
			ps.setString(2, obj1.getPwd());

			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				return "success";
			}
			else 
			{
				return "failure";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
			return "";
			
		
		
	}

	
	
	//crew register
	public String insertUser1(CrewModel m1, String query)
	{	
		try{
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, m1.getUname());
		ps.setString(2, m1.getEmail());
		ps.setString(3, m1.getDob());
		ps.setString(4, m1.getPwd());
		ps.setString(5, m1.getContact());
		
		int i = ps.executeUpdate();
		
		if(i==1)
		{
			return "success";
			
		}
		
		else
		{
			return "failure";
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		
		return "";
		
	
	}
	
	public String insertRecruit(RecruitModel r1, String query)
	{	
		try{
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, r1.getName());
		ps.setString(2, r1.getEmail());
		ps.setString(3, r1.getDob());
		ps.setString(4, r1.getQualification());
		ps.setString(5, r1.getContact());
		ps.setString(6, r1.getPassword());
		
		int i = ps.executeUpdate();
		
		if(i==1)
		{
			return "success";
			
		}
		
		else
		{
			return "failure";
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		
		return "";
		
	
	}
//insert trainer

	public String insertTrainer(TrainModel t1, String query)
	{	
		try{
		PreparedStatement ps=con.prepareStatement(query);
		ps.setString(1, t1.getName());
		ps.setString(2, t1.getEmail());
		ps.setString(3, t1.getStatus());
		ps.setString(4, t1.getTimings());
		ps.setString(5, t1.getPassword());
		
		int i = ps.executeUpdate();
		
		if(i==1)
		{
			return "success";
			
		}
		
		else
		{
			return "failure";
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}	
		
		return "";
		
	
	}



//DELETE USER
public String DeleteUser1(CrewModel d1, String query)
{	
	try{
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, d1.getEmail());
	
	int i = ps.executeUpdate();
	
	if(i==1)
	{
		return "success";
		
	}
	
	else
	{
		return "failure";
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}	
	
	return "";
}

//DELETE USER
public String DeleteUser2(RecruitModel d1, String query)
{	
	try{
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, d1.getEmail());
	
	int i = ps.executeUpdate();
	
	if(i==1)
	{
		return "success";
		
	}
	
	else
	{
		return "failure";
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}	
	
	return "";
}


//DELETE USER
public String DeleteUser3(TrainModel d1, String query)
{	
	try{
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, d1.getEmail());
	
	int i = ps.executeUpdate();
	
	if(i==1)
	{
		return "success";
		
	}
	
	else
	{
		return "failure";
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}	
	
	return "";
}

public ResultSet Featchdetails(String sql)
{
	try
	{
		PreparedStatement ps=con.prepareStatement(sql);
		rs = ps.executeQuery();
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	return rs;
}



	

//TARAINING register
public String insertTraining(TrainingModel t1, String query)
{	
	try{
	PreparedStatement ps=con.prepareStatement(query);
	ps.setString(1, t1.getTrainingname());
	ps.setString(2, t1.getTrainer());
	ps.setString(3, t1.getStartdate());
	ps.setString(4, t1.getEnddate());
	
	
	int i = ps.executeUpdate();
	
	if(i==1)
	{
		return "success";
		
	}
	
	else
	{
		return "failure";
	}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}	
	
	return "";
	

}


public ResultSet Fetchdetails5(String sql,String crew )
{
	try{
	PreparedStatement ps= con.prepareStatement(sql);
	ps.setString(1,crew);
	
	rs=ps.executeQuery();
	
	
	
	}
	catch(Exception e)
	{
		e.printStackTrace();
		
	}
	
	
	
	
	return rs;
}

//for dynamic crew deletion
public String DeleteCrewByID(String sql,String id)
{
		
		try
		{
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				return "success";
			}
			else
			{
				return "fail";
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return "";
		
	}


public String DeleteRecruitByID(String sql,String id)
{
	try{
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,id);
	int i=ps.executeUpdate();
	
	if(i==1)
	{
		return "success";
	}
	else
	{
		return"failure";
		
	}
		
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return "";
}
public String DeleteTrainerByID(String sql,String id)
{
	try{
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1,id);
	int i=ps.executeUpdate();
	
	if(i==1)
	{
		return "success";
	}
	else
	{
		return"failure";
		
	}
		
		
		
	}catch(Exception e)
	{
		e.printStackTrace();
	}
	
	return "";
}


}
	

