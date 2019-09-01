package com22;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ProblemsDAO;
import com.ProblemsDTO;

/**
 * Servlet implementation class UpdateService
 */
@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String num = request.getParameter("modal_num");
		String writer = request.getParameter("modal_writer");
		String id = request.getParameter("modal_id");
		String number = request.getParameter("modal_number");
		String email = request.getParameter("modal_email");
		String category1 = request.getParameter("modal_category1");
		String category2 = request.getParameter("modal_category2");
		String content = request.getParameter("modal_content");
		String time = request.getParameter("modal_time");
		String state = request.getParameter("modal_state");
		String lv = request.getParameter("modal_lv");
		String ripple = request.getParameter("modal_ripple");
		String count = request.getParameter("modal_count");
		

		if(ProblemsDAO.getDao().update(new ProblemsDTO(Integer.parseInt(num), writer, id, number, email, Integer.parseInt(category1), Integer.parseInt(category2), content, time, Integer.parseInt(state), Integer.parseInt(lv), ripple, Integer.parseInt(count)))) {
			response.getWriter().println("접수번호 "+ num + "의 처리가 완료되었습니다.");
		} else {
			response.getWriter().println("접수번호 "+ num + "의 처리가 실패하였습니다.\\n관리자 번호 : 010-7552-0440");
		}
	}

}
