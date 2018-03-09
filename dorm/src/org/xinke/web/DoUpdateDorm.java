package org.xinke.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.dao.DormDao;
import org.xinke.dao.impl.DormImpl;
import org.xinke.entity.Dorm;

/**
 * Servlet implementation class DoUpdateDorm
 */
@WebServlet("/doUpdateDorm")
public class DoUpdateDorm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoUpdateDorm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sdormid = request.getParameter("dormid");
		String sdormnum = request.getParameter("num");
		String sdormrealnum = request.getParameter("realnum");
		String remark = request.getParameter("remark");
		String sbuildid = request.getParameter("buildid");
		String sdormbeds = request.getParameter("beds");
		Dorm dorm = new Dorm();
		DormDao dd = new DormImpl();
		int dormid = Integer.valueOf("sdormid");
		int dormnum = Integer.valueOf("sdormnum");
		int dormrealnum = Integer.valueOf("sdormrealnum");
		int buildid = Integer.valueOf("sbuildid");
		int dormbeds = Integer.valueOf("sdormbeds");
		dorm.setBuildid(buildid);
		dorm.setDormbeds(dormbeds);
		dorm.setDormid(dormid);
		dorm.setDormnum(dormnum);
		dorm.setDormrealnum(dormrealnum);
		dorm.setRemark(remark);
		int num = dd.updateDorm(dorm);
		System.out.println(num>0);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
