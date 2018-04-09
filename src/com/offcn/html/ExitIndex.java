package com.offcn.html;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns="/ExitIndex")
public class ExitIndex extends HttpServlet {
@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	// 1.����session
	HttpSession session = request.getSession();
	session.invalidate();
	
	//2.�ض��򵽵�¼ҳ��
	try {
		response.sendRedirect("login2.jsp");
	} catch (IOException e) {
		e.printStackTrace();
	}
}

}
