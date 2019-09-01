package com22;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class RankService
 */
@WebServlet("/RankService")
public class RankService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		JsonObject obj = new JsonObject();
		ArrayList<RankDTO> list = RankDAO.getDao().selectAll();
		int size = 10;
		if(size > list.size()) {
			size = list.size();
		}
		obj.addProperty("size", size);
		for(int i = 0; i < list.size(); i++) {
			obj.addProperty(Integer.toString(i), list.get(i).toJson());
		}
		
		JsonObject obj2 = new JsonObject();
		ArrayList<RankDTO> list2 = RankDAO.getDao().selectAll2();
		int size2 = 10;
		if(size2 > list2.size()) {
			size2 = list2.size();
		}
		obj2.addProperty("size", size2);
		for(int i = 0; i < list2.size(); i++) {
			obj2.addProperty(Integer.toString(i), list2.get(i).toJson());
		}
		
		
		
		JsonObject result = new JsonObject();
		result.add("0", obj);
		result.add("1", obj2);
		response.getWriter().print(result);
	}

}
