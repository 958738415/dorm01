package org.xinke.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.xinke.dao.WardenDao;
import org.xinke.dao.impl.WardenImpl;
import org.xinke.entity.Warden;

import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;




/**
 * 发送重设密码申请的链接
 */
@WebServlet("/ForgotPwdServlet")
public class ForgotPwdServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String boolcode = request.getParameter("id");
		String oldcode = request.getParameter("name");
		System.out.println("+++"+boolcode+"++++++++"+oldcode);
		String phone = request.getParameter("userNameOrEmail");
		String newcode = request.getParameter("sendcode");
		System.out.println(phone+"******************"+newcode);
		// 判断手机号是否存在数据库中
		WardenDao wd = new WardenImpl();
		List<Warden> list = wd.findAll();
		int num = 0;
		String userName = null;
		for (Warden warden : list) {
			if(phone.equals(warden.getWardentel())) {
				num = 1;
				userName = warden.getWardenuser();
				break;
			}
		}
		response.setCharacterEncoding("UTF-8");//设置编码
		response.setContentType("text/html");//服务器响应类型
		System.out.println(num);
		if (num == 0) {
			System.out.println("****************");
			PrintWriter pw=response.getWriter();
			pw.print("<script>" + "alert('手机号不存在！');"+ "document.location.href='login.jsp';"+ "</script>");
//			response.sendRedirect("login.jsp");
			pw.close();
			return;
		} else if("false".equals(boolcode)||!oldcode.equals(newcode)) {
			PrintWriter out=response.getWriter();
			out.print("<script>" + "alert('发送验证码失败，请查看手机号或者验证码是否正确！');"+ "document.location.href='login.jsp';"+ "</script>");
			out.close();
			return;
		} else {
			//将用户名传入修改密码中
			request.setAttribute("userName", userName);
			request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
