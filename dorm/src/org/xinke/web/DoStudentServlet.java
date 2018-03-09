package org.xinke.web;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.dao.StudentDao;
import org.xinke.dao.impl.StudentImpl;
import org.xinke.entity.Student;



/**
 * Servlet implementation class DoCartoonServlet
 */
@WebServlet("/DoStudentServlet")
public class DoStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoStudentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset = utf-8");
			String name = request.getParameter("name");
			String age = request.getParameter("age");
			String sex = request.getParameter("sex");
			String school = request.getParameter("school");
			String major = request.getParameter("major");
			String buildid = request.getParameter("build");
			String dormid = request.getParameter("dorm");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String teacher = request.getParameter("teacher");
			String family = request.getParameter("family");
			String fphone = request.getParameter("fphone");
			String tphone = request.getParameter("tphone");
			StudentDao sd = new StudentImpl();
			Student st = new Student();
			st.setAddress(address);
			st.setAge(Integer.valueOf(age));
			st.setBuildid(Integer.valueOf(buildid));
			st.setDormid(Integer.valueOf(dormid));
			st.setFamilycontact(family);
			st.setHometel(fphone);
			st.setMajor(major);
			st.setName(name);
			st.setPhone(phone);
			st.setSchool(school);
			st.setSex(sex);
			st.setTeacher(teacher);
			st.setTeacherphone(tphone);
			int num = sd.addStudent(st);
			if(num > 0) {
				response.sendRedirect("studentlist.jsp");
			} else {
				response.sendRedirect("addstudent.jsp");
			}
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
