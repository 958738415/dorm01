package org.xinke.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.dao.DormDao;
import org.xinke.dao.impl.DormImpl;

/**
 * Servlet implementation class DoDeleteDorm
 */
@WebServlet("/doDeleteDorm")
public class DoDeleteDorm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoDeleteDorm() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sdormid = request.getParameter("dormid");
		int dormid = Integer.valueOf(sdormid);
		DormDao dd = new DormImpl();
		int num = dd.updateNum(dormid);
		System.out.println(num>0);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
