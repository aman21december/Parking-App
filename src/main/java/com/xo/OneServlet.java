package com.xo;
import java.io.IOException;
import java.util.*;
import java.io.*;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/OneServlet")
public class OneServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		try {
		int n=Integer.parseInt(req.getParameter("n"));
		int m=Integer.parseInt(req.getParameter("m"));
		if(n>=m && n>0 && m>0)
		{
			
		
		MySqlUtil.parkingSpace=n;
		PrintWriter out=res.getWriter();
		
		ArrayList<Car> cardetails=new ArrayList<Car>();
		
		
		RegistrationNumber rn=new RegistrationNumber();
		Colour colour=new Colour();
		for(int i=1;i<=m;i++)
		{
			String registration_number=rn.getRegistrationNumber();
			String color=colour.getColour();
			cardetails.add(new Car(registration_number,color));
		}
		MySqlUtil msu=new MySqlUtil();
		try {
			boolean check=msu.util_jdbc(cardetails);
			if(check==false)
			{
				res.sendRedirect("ServerError.jsp");
			}
		}catch (Exception e) {
			res.sendRedirect("ServerError.jsp");	
		}
		
		RequestDispatcher rd=req.getRequestDispatcher("index.jsp");
		rd.forward(req, res);
		}
		else
		{
			res.sendRedirect("index1.jsp");
		}
		}
		catch(Exception e)
		{
			res.sendRedirect("index1.jsp");
		}
	}
	

}
