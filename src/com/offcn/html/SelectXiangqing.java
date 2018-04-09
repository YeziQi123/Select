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

import net.sf.json.JSONArray;

@WebServlet(urlPatterns="/SelectXiangqing")
public class SelectXiangqing extends HttpServlet {

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		String id=request.getParameter("id");
		String sql="select * from u_idle_info where id="+id+"";
		List<Map<String, Object>> list=new BaseDao().executeQuery(sql);
		if(list!=null&&list.size()>0)
		{
		Map<String,Object> map= list.get(0);
		request.setAttribute("map",map);
		request.getRequestDispatcher("xiangqing.jsp").forward(request, response);
		}
	}
}
