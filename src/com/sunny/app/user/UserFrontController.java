package com.sunny.app.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UserFrontController extends HttpServlet{

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String target = req.getRequestURI().substring(req.getContextPath().length()); 
		System.out.println(target);

		switch(target) {

		case "/user/myPage.us" :
			new MyPageController().execute(req, resp);
			break;
		case "/user/myPageOk.us" :
			System.out.println("!!!");
			new MyPageOkController().execute(req, resp);
			
			break;
		case "/user/userCommentOk.us":
			new UserCommentController().execute(req, resp);
			break;
		case "/user/userDrop.us":
			req.getRequestDispatcher("/app/user/userDrop.jsp").forward(req, resp);
			break;
		case "/user/userDropOk.us" : 
			new UserDropController().execute(req, resp);
//			req.getRequestDispatcher("/app/main/main.jsp").forward(req, resp);
			break;
		case "/user/userModify.us":
//			new UserModifyController().execute(req, resp);
			req.getRequestDispatcher("/app/user/userModify.jsp").forward(req, resp);
			break;
		case "/user/userModifyOk.us" :
			req.getRequestDispatcher("/app/user/myPage.jsp").forward(req, resp);
			break;
		}
	}
}
