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

@WebServlet(urlPatterns="/CheckPhone")
public class CheckPhone extends HttpServlet {
	
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String phone=request.getParameter("phone");
		//检验手机号是否存在
		String sql="SELECT 1 FROM u_idle_user WHERE u_phonenum='"+phone+"'";
		List<Map<String,Object>> list=new BaseDao().executeQuery(sql);

		if(list!=null&&list.size()>0)
		{
			response.getWriter().write("no");
		}
		else
		{
			response.getWriter().write("yes");
		}
	}
	

}
