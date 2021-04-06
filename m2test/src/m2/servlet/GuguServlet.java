package m2.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import m2.model2.GuGuService;

@WebServlet("/mvc/gugu2")
public class GuguServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 요청 분석
		int dan = Integer.parseInt(request.getParameter("dan"));
		System.out.println(dan+" <--dan GuguServlet.doGet()");
		
		// 2. 요청 처리 요구
		GuGuService service = new GuGuService();
		ArrayList<String> list = service.getGuguDan(dan); // 요청 처리
		
		// 3. 출력을 위임(요청&응답을 포워딩 + 모델값(list))
		request.setAttribute("list", list); // setAttribute(String, Object)
		RequestDispatcher rd = request.getRequestDispatcher("/mvc/gugu2.jsp");
		rd.forward(request, response);
	}
}
