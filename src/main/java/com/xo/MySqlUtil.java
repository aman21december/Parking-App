package com.xo;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class MySqlUtil {
	static int parkingSpace=0;
	static 	ArrayList<String> arr=new ArrayList<String>();
	
	public boolean util_jdbc(ArrayList<Car> cars) throws ClassNotFoundException, Exception
	{	
		try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingproject","root","welcome123");
		PreparedStatement statementrefresh=c.prepareStatement("Delete from parking_details");
		statementrefresh.executeUpdate();
		PreparedStatement statement=c.prepareStatement("Insert into parking_details values(?,?,?)");
		for(int i=1;i<=cars.size();i++)
		{
			arr.add(i+"");
			statement.setInt(1, i);
			statement.setString(2, cars.get(i-1).getRegistration_number());
			statement.setString(3, cars.get(i-1).getColour());
			statement.executeUpdate();	
		}
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
		
	}
	
	public void util_remove(int a,String b,String c) throws ClassNotFoundException, Exception
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection d=DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingproject","root","welcome123");		
		
		PreparedStatement statement=d.prepareStatement("Delete from parking_details where Slot=? and RegistrationNumber=? and Colour=?");
		
		statement.setInt(1, a);
		statement.setString(2, b);
		statement.setString(3, c);
		int check=statement.executeUpdate();
		if(check>0)
		{
			MySqlUtil.arr.remove(String.valueOf(a));
		}
	}
	public boolean util_add(String b,String c) throws ClassNotFoundException, Exception
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection d=DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingproject","root","welcome123");		
		
		PreparedStatement statement=d.prepareStatement("Insert into parking_details values(?,?,?)");
		int parking_slot=0;
		for(int i=1;i<=MySqlUtil.parkingSpace;i++)
		{	
			if(!MySqlUtil.arr.contains(String.valueOf(i)))
			{	
		
				parking_slot=i;
				break;
			}
		}
		if(parking_slot<=MySqlUtil.parkingSpace && parking_slot!=0)
		{
		arr.add(parking_slot+"");	
		statement.setInt(1, parking_slot);
		statement.setString(2, b);
		statement.setString(3, c);
		
		statement.executeUpdate();
		return true;
		}
		else
		{
		return false;	
		}
	}
}
