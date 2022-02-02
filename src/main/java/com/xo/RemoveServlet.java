package com.xo;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/RemoveServlet")
public class RemoveServlet extends HttpServlet{
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String reg= req.getParameter("vrn");
		String col=req.getParameter("color");
		int parking_num=Integer.parseInt(req.getParameter("pnum"));
		
		MySqlUtil msu=new MySqlUtil();
		
		try {
			msu.util_remove(parking_num, reg, col);
		} catch (Exception e) {
			RequestDispatcher rd=req.getRequestDispatcher("ServerError2.jsp");
			rd.forward(req, resp);
		}
		RequestDispatcher rd= req.getRequestDispatcher("index.jsp");
		rd.forward(req, resp);
		
	}
}
