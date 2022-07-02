package com.jdbc;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.jdbc.Login;

public class LoginDao 
{

	public static Connection getConnection() 
	{
		Connection con = null;
		try 
		{	
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/studentdb","root","Ibm22hot!");
		}
		catch(Exception ex) 
		{	
			System.out.println(ex);
		}
		return con;	
	}
	
	public static boolean verify(String studentid, String studentpassword)
	{
		boolean status = false;
		
		try
		{
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from studentlogin where studentid = ? and studentpassword = ?");
			pst.setString(1, studentid);
			pst.setString(2, studentpassword);
			ResultSet rs =  pst.executeQuery();
			
			status = rs.next();
			
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return status;
	}
	
	public static List<Login> getStudentInfo(String studentid)
	{
		List<Login>list = new ArrayList<Login>();
		
		try
		{
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from studentinfo where studentid = ?");
			pst.setString(1, studentid);
			ResultSet rs = pst.executeQuery();
			Login l = new Login();
			while(rs.next())
			{
				l.setStudentId(rs.getString("studentid"));
				l.setStudentName(rs.getString("studentname"));
				l.setStudentGender(rs.getString("studentgender"));
				l.setStudentIdentification(rs.getString("studentidentification"));
				l.setStudentProgramme(rs.getString("studentprogramme"));
				l.setStudentIntake(rs.getString("studentintake"));
				l.setStudentNationality(rs.getString("studentnationality"));
				l.setStudentPhoneNumber(rs.getString("studentphonenumber"));
				list.add(l);
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return list;
	}
	
	public static List<Login> getCourseList(String studentid)
	{
		List<Login>list = new ArrayList<Login>();
		
		try
		{
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from courselist where studentid = ?");
			pst.setString(1, studentid);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				Login l = new Login();
				l.setCourseName(rs.getString("coursename"));
				l.setCourseCode(rs.getString("coursecode"));
				l.setCourseCredits(rs.getInt("coursecredits"));
				l.setCourseLecturer(rs.getString("courselecturer"));
				l.setCourseTimeVenue(rs.getString("coursetimevenue"));
				list.add(l);
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return list;
	}
	
	public static List<Login> getExamResult(String studentid)
	{
		List<Login>list = new ArrayList<Login>();
		
		try
		{
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("select * from examresult where studentid = ?");
			pst.setString(1, studentid);
			ResultSet rs = pst.executeQuery();
			
			while(rs.next())
			{
				Login l = new Login();
				l.setCourseName(rs.getString("coursename"));
				l.setCourseCode(rs.getString("coursecode"));
				l.setCourseCredits(rs.getInt("coursecredits"));
				l.setCourseScore(rs.getFloat("coursescore"));
				list.add(l);
			}
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		
		return list;
	}
	
}
