package com.xo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String reg= req.getParameter("vrn");
	String col=req.getParameter("color");
	MySqlUtil msu=new MySqlUtil();
	
	try {
		boolean check=msu.util_add(reg, col);
		if(check==false)
		{
			RequestDispatcher rd=req.getRequestDispatcher("ServerError1.jsp");
			rd.forward(req, resp);
		}
		else
		{
			RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
			rd.forward(req, resp);
		}
	} catch (Exception e) {
		RequestDispatcher rd=req.getRequestDispatcher("ServerError2.jsp");
		rd.forward(req, resp);
	}
	
	
}
}