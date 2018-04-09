package com.offcn.html;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/CheckOldPwd")
public class CheckOldPwd extends HttpServlet {

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//处理响应乱码
		response.setContentType("text/html;charset=utf-8");
		
		// 用户输入的原始密码
		String oripwd = request.getParameter("oripwd");

		Map<String, Object> map = (Map<String, Object>) request.getSession().getAttribute("map");

		// 数据库中，真实的原始密码
		String u_password = map.get("u_password") + "";

		String msg = "";
		if (oripwd.equals(u_password)) {
			msg = "ok";
		} else {
			msg = "error";
		}
		//作为ajax异步请求的相应数据
		response.getWriter().write(msg);

	}

}
