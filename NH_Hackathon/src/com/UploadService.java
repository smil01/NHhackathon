package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Util.AI_Classification_Server_To;
import Util.cursingUtill;

/**
 * Servlet implementation class UploadService
 */
@WebServlet("/UploadService")
public class UploadService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String writer = request.getParameter("writer");
		String id = request.getParameter("id");
		String number = request.getParameter("number");
		String email = request.getParameter("email");
		String category1 = request.getParameter("category1");
		String category2 = request.getParameter("category2");
		String content = request.getParameter("content");
		
		/////////////////////////////////////////////모델자리////////////////////////////////////////////////
		int count = cursingUtill.getChage(content).getCount(); // 욕 마이닝
		String lv = AI_Classification_Server_To.getClassification(content); // 이자리
		//////////////////////////////////////////////////////////////////////////////////////////////////

		if (ProblemsDAO.getDao().insert(new ProblemsDTO(writer, id, number, email, Integer.parseInt(category1), Integer.parseInt(category2), content, Integer.parseInt(lv), count))
				&& ProblemsDAO.getDao().top() != 0) {
			request.getSession().setAttribute("msg", writer + "님의 접수가 완료되었습니다. \\n접수번호 : " + ProblemsDAO.getDao().top());
		} else {
			request.getSession().setAttribute("msg", writer + "님의 접수에 실패하였습니다. \\n관리자 번호 : 010-7552-0440");
		}
		request.getSession().setAttribute("link", "#services");
		response.sendRedirect("/service");
	}

}
