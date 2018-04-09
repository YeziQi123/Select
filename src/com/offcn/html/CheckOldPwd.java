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
		//������Ӧ����
		response.setContentType("text/html;charset=utf-8");
		
		// �û������ԭʼ����
		String oripwd = request.getParameter("oripwd");

		Map<String, Object> map = (Map<String, Object>) request.getSession().getAttribute("map");

		// ���ݿ��У���ʵ��ԭʼ����
		String u_password = map.get("u_password") + "";

		String msg = "";
		if (oripwd.equals(u_password)) {
			msg = "ok";
		} else {
			msg = "error";
		}
		//��Ϊajax�첽�������Ӧ����
		response.getWriter().write(msg);

	}

}
