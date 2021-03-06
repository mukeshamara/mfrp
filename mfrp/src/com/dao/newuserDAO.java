package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.model.*;

public class newuserDAO {

	public int insert(newuserdetails ud,String y) throws ClassNotFoundException, SQLException
	{
		newuserdetails u1=null;
		Connection con=null;
		int rs=0;
		try
		{
				//String url="jdbc:mysql://localhost:3306/mfrp";   //last jdbc is database which we created
				Class.forName("com.mysql.jdbc.Driver");
				 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mfrppro","root","root");
				
		
			String query="insert into customer_registration values (?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1, y);
			ps.setString(2,ud.getName());
			ps.setString(3, ud.getPass());
			ps.setDate(4, new java.sql.Date(ud.getDate().getTime()));
			ps.setString(5,ud.getNumber());
			ps.setString(6,ud.getEmail());
		rs=ps.executeUpdate();
			
			
		}catch(Exception ex)
		{
			System.out.println(ex+"here also");
		}
		finally
		{
			try
			{
				if(con!=null)
				{
					con.close();
					
				}
			}catch(Exception ex1)
			{
			System.out.println("closed");	
			}
		}
		
		return rs;
	}
	
	public int number() throws ClassNotFoundException, SQLException
	{
		newuserdetails u1=null;
		Connection con=null;
		int num=0;
		try
		{
				//String url="jdbc:mysql://localhost:3306/mfrp";   //last jdbc is database which we created
				Class.forName("com.mysql.jdbc.Driver");
				 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mfrppro","root","root");
				
		
			String query="select customer_id from customer_registration order by 1 desc";
			Statement stmt=con.createStatement();
			ResultSet rs1=stmt.executeQuery(query);
			
			
	if(rs1.next())
	{
		num=Integer.parseInt(rs1.getString(1));
		num++;
	}
			
			
		}catch(Exception ex)
		{
			System.out.println(ex+"not here");
		}
		finally
		{
			try
			{
				if(con!=null)
				{
					con.close();
					
				}
			}catch(Exception ex1)
			{
			System.out.println("closed");	
			}
		}
		
		return num;
	}
	
	
}
