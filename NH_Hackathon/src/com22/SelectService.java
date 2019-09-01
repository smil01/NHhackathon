package com22;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ProblemsDAO;
import com.ProblemsDTO;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class SelectService
 */
@WebServlet("/SelectService")
public class SelectService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("application/json");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String[] RESPONSIBILITYS = {"상급", "중급", "초급", "전문"};
		
		ArrayList<ProblemsDTO> list = null;
		JsonObject result = new JsonObject();
		for(int i = 0; i<RESPONSIBILITYS.length; i++) {
			list = ProblemsDAO.getDao().select(RESPONSIBILITYS[i]);
			
			JsonObject obj = new JsonObject();
			obj.addProperty("size", list.size());
			
			for(int j = 0; j < list.size(); j++) {
				obj.addProperty(Integer.toString(j), list.get(j).toString());
			}
			
			result.add(Integer.toString(i), obj);
		}
		

		
		response.getWriter().print(result);
	}

}
