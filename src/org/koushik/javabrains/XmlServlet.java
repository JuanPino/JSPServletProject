package org.koushik.javabrains;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class XmlServlet extends HttpServlet {
	
	// using doGet method
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		HttpSession session = request.getSession();
		if (userName != "" && userName != null) {
			session.setAttribute("saveduserName", userName);
			
		}
		
		out.println("Request parameter has username as " + userName);
		out.println("Session parameter has username as " + (String) session.getAttribute("saveduserName"));
	}
	
	// using doPOST method
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String userName = request.getParameter("userName");
		String fullName = request.getParameter("fullName");
		out.println("Hello from the POST method!" + userName + "! We know your full name is " + fullName);
		String prof= request.getParameter("prof");  
		out.println("You are: " + prof);
		//String location= request.getParameter("location");
		String[] location = request.getParameterValues("location");
		out.println("You are at " + location.length + " places");
		for (int i = 0; i<location.length; i++) {
			out.println(location[i]);
		}
	}

}
