package com33;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import Util.STT_Server_To;

/**
 * Servlet implementation class STTService
 */
@WebServlet("/STTService")
public class STTService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String savePath = request.getServletContext().getRealPath("upload");

		MultipartRequest multi = new MultipartRequest(request, savePath, 1024 * 1024 * 10, "UTF-8",
				new DefaultFileRenamePolicy());

		String fileName = new File(savePath).listFiles()[0].getName();

		response.getWriter().print(STT_Server_To.getClassification(savePath + "\\" + fileName));

		new File(savePath + "\\" + fileName).delete();
	}

}
