package com33;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

import Util.AI_Classification_Server_To;
import Util.cursingUtill;

/**
 * Servlet implementation class AIService
 */
@WebServlet("/AIService")
public class AIService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String content = request.getParameter("content");
		
		JsonObject obj = new JsonObject();
		obj.addProperty("content", cursingUtill.getChage(content).getChange());
		obj.addProperty("count", cursingUtill.getChage(content).getCount());
		//obj.addProperty("lv", "-1");
		obj.addProperty("lv", AI_Classification_Server_To.getClassification(content));
		
		response.getWriter().print(obj);
	}

}
