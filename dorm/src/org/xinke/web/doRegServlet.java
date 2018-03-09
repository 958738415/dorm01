package org.xinke.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.dao.WardenDao;
import org.xinke.dao.impl.WardenImpl;
import org.xinke.entity.Warden;

/**
 * Servlet implementation class doRegServlet
 */
@WebServlet("/doRegServlet")
public class doRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String tel = request.getParameter("reg_email");
		String reg_uname = request.getParameter("reg_uname");
		String reg_pwd = request.getParameter("reg_pwd");
		String gender = request.getParameter("gender");
		String admin = request.getParameter("admin");
		/**
		 * 注册用户信息
		 */
		WardenDao ud = new WardenImpl();
		Warden warden = new Warden();
		warden.setWardenuser(reg_uname);
		warden.setWardenpwd(reg_pwd);
		warden.setWardentel(tel);
		warden.setWardensex(gender);
		warden.setWardenadmin(admin);
		int num = ud.addWarden(warden);
		System.out.println(num);
		if(num>0) {
			request.getRequestDispatcher("dologinServlet").forward(request, response);
//			System.out.println("添加成功");
			//response.sendRedirect("h.jsp");
		}else {
			System.out.println("添加失败");
			response.sendRedirect("login.jsp");
			System.out.println("获得注册信息"+tel+"\t"+reg_uname+"\t"+reg_pwd+"\t"+gender);
		}
		
		
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
