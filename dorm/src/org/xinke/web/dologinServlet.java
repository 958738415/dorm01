package org.xinke.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.xinke.dao.WardenDao;
import org.xinke.dao.impl.WardenImpl;
import org.xinke.entity.Warden;

/**
 * Servlet implementation class dologinServlet
 */
@WebServlet("/dologinServlet")
public class dologinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dologinServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String hk = request.getParameter("id");
		String ck = request.getParameter("ck");
		System.out.println(uname+"***"+pwd+"****"+hk+"****"+ck);
		Boolean bool = false;
		Boolean pt = false;
		String admin = "";
		// 用户登录信息标识
		String username = "";
		//获取全部信息
		WardenDao gd = new WardenImpl();
		List<Warden> list = new ArrayList();
		list = gd.findAll();
		HttpSession ss = request.getSession();
		ss.setAttribute("wlist", list);
		for (Warden warden : list) {
			if (warden.getWardenuser().equals(uname) && warden.getWardenpwd().equals(pwd) && "true".equals(hk)) {
				username = warden.getWardenuser();
				admin = warden.getWardenadmin();
				pt = true;
			}
		}
		if (pt == true&&"0".equals(admin)) {
			//普通用户
			request.setAttribute("uname", username);
			HttpSession session = request.getSession();
			session.setAttribute("u_name", uname);
			if ("on".equals(ck)) {
				System.out.println("普通用户密码输入正确：" + ck);
				Cookie user = new Cookie("user", uname);
				Cookie cpwd = new Cookie("cpwd", pwd);
				response.addCookie(user);
				response.addCookie(cpwd);
			}
			//前往界面
			response.sendRedirect("doUsersNovel");
		} else if(pt == true&&"1".equals(admin)) {
			//管理员
			request.setAttribute("uname", username);
			HttpSession session = request.getSession();
			session.setAttribute("u_name", uname);
			if ("on".equals(ck)) {
				Cookie user = new Cookie("user", uname);
				Cookie cpwd = new Cookie("cpwd", pwd);
				response.addCookie(user);
				response.addCookie(cpwd);
			}
			//前往后台
//			request.getRequestDispatcher("index.jsp").forward(request, response);
			response.sendRedirect("index.jsp");
		} else {
//			request.getRequestDispatcher("login.jsp").forward(request, response);
			response.sendRedirect("login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
