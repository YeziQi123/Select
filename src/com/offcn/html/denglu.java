package com.offcn.html;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.offcn.dao.BaseDao;

@WebServlet(urlPatterns="/denglu")
public class denglu extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String u_account=request.getParameter("u_account");
		String u_password=request.getParameter("u_password");
		String sql="SELECT * FROM u_idle_user WHERE u_account='"+u_account+"' AND u_password='"+u_password+"'";
	
		List<Map<String, Object>> list = new BaseDao().executeQuery(sql);
		
		if(list!=null&&list.size()>0){
			Map<String,Object>map=list.get(0);
			request.getSession().setAttribute("map",map);
			request.getRequestDispatcher("qiantai1.jsp").forward(request, response);
		}else{
			response.sendRedirect("login2.jsp");
		}
		
		
	}

}
