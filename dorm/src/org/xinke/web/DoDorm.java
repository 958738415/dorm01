package org.xinke.web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.dao.DormDao;
import org.xinke.dao.impl.DormImpl;
import org.xinke.entity.Dorm;

/**
 * Servlet implementation class DoDorm
 */
@WebServlet("/DoDorm")
public class DoDorm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDorm() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dormstr = request.getParameter("id");
		System.out.println(dormstr);
		DormDao dd = new DormImpl();
		if(dormstr != null&&!"".equals(dormstr)) {
			int dormid = Integer.valueOf(dormstr);
			List<Dorm> list = dd.findById(dormid);
			request.setAttribute("list", list);
		} else {
			List<Dorm> list = dd.findAll();
			request.setAttribute("list", list);
		}
		request.getRequestDispatcher("dorm.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
