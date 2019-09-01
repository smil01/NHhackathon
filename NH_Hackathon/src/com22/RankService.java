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
		
		response.getWriter().print(obj);
	}

}
