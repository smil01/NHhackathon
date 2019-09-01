package com22;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonObject;

/**
 * Servlet implementation class SettingService
 */
@WebServlet("/SettingService")
public class SettingService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String[] responsibility = { request.getParameter("lv1"), request.getParameter("lv2"),
				request.getParameter("lv3"), request.getParameter("lv4"), request.getParameter("lv5"),
				request.getParameter("lv6"), request.getParameter("lv7"), request.getParameter("lv8"),
				request.getParameter("lv9"), request.getParameter("lv10") };
		boolean check = true;
		
		for(String r : responsibility) {
			if(r == null || r.equals("")) {
				check = false;
				break;
			}
		}
		
		if(check) {
			SettingDAO.getDao().update(responsibility);
		}
		
		responsibility = SettingDAO.getDao().selectAll();
		JsonObject obj = new JsonObject();
		obj.addProperty("lv1", responsibility[0]);
		obj.addProperty("lv2", responsibility[1]);
		obj.addProperty("lv3", responsibility[2]);
		obj.addProperty("lv4", responsibility[3]);
		obj.addProperty("lv5", responsibility[4]);
		obj.addProperty("lv6", responsibility[5]);
		obj.addProperty("lv7", responsibility[6]);
		obj.addProperty("lv8", responsibility[7]);
		obj.addProperty("lv9", responsibility[8]);
		obj.addProperty("lv10", responsibility[9]);
		
		response.getWriter().println(obj);
	}

}
