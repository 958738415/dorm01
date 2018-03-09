package org.xinke.web;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.dao.StudentDao;
import org.xinke.dao.impl.StudentImpl;
import org.xinke.entity.Student;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

/**
 * Servlet implementation class SelectCartoonService
 */
@WebServlet("/SelectStudentService")
public class SelectStudentService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SelectStudentService() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		response.setContentType("text/html;charset = utf-8");
		System.out.println("--------------------------------");
		int pageIndex = 1;
		int pageCount = 2;
		String page = request.getParameter("page");
		String limit = request.getParameter("limit");
		System.out.println(page+" ---------"+limit);
		if(page != null) {
				pageIndex = Integer.parseInt(page);
		}
		if(limit != null) {
			pageCount = Integer.parseInt(limit);
		}
		String method = request.getParameter("method");
		System.out.println(method+"+++++++++++++++++++++++++");
		String name = request.getParameter("sname");
		String id = request.getParameter("sid");
		String major = request.getParameter("smajor");
		String phone = request.getParameter("sphone");
		System.out.println(name+"  "+id+" "+major+" "+phone);
		StudentDao sd = new StudentImpl();
		String sql = "select * from student where status = '1' and 1=1";
//		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
//		java.util.Date dt = null;
//		List<Cartoon> list = null;
//		if(date != null) {
//			try {
//				dt = sdf.parse(date);
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
//		}
		try {
			if(id !=null&&!"".equals(id)) {
				sql+=" and id = '"+id+"'";
			}
			if(name !=null&&!"".equals(name)) {
				sql+=" and name = '"+name+"'";
			}
			if(major !=null&&!"".equals(major)&&!"---请选择---".equals(major)) {
				sql+=" and major = '"+major+"'";
			}
			if(phone !=null&&!"".equals(phone)) {
				sql+=" and phone = '"+phone+"'";
			}
			System.out.println(sql);
			List<Student> list = sd.findAllBySql(sql);
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			String list_str = gson.toJson(list);
			System.out.println(list_str);
//			//总行数
			int count = 0;
			if(list != null) {
				count = list.size();
			}
//			//页数
//			int pageNum = cs.getPage(pageCount,count);
			Map<String, Object> map = new HashMap<>();
			map.put("code", 0);
			map.put("msg", "www");
			map.put("count", count);
			map.put("data", list);
			System.out.println(gson.toJson(map).length());
			//"{\"data\":"+list_str+",\"code\":0,\"msg\":'aaaa',\"count\":"+count+"}"
			response.getWriter().print(gson.toJson(map));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(("update").equals(method)){
			System.out.println("这是修改");
			String sid = request.getParameter("id");
			String sname = request.getParameter("name");
			String sage = request.getParameter("age");
			String ssex = request.getParameter("sex");
			String sschool = request.getParameter("school");
			String smajor = request.getParameter("major");
			String sbuildid = request.getParameter("buildid");
			String sdormid = request.getParameter("dormid");
			String sphone = request.getParameter("phone");
			String saddress = request.getParameter("address");
			String steacher = request.getParameter("teacher");
			String shometel = request.getParameter("hometel");
			String sfphone = request.getParameter("familycontact");
			String stphone = request.getParameter("teacherphone");
			System.out.println("****************"+sbuildid);
			Student st = new Student();
			st.setId(Integer.valueOf(sid));
			st.setAddress(saddress);
			st.setAge(Integer.valueOf(sage));
			st.setBuildid(Integer.valueOf(sbuildid));
			st.setDormid(Integer.valueOf(sdormid));
			st.setFamilycontact(sfphone);
			st.setHometel(shometel);
			st.setMajor(smajor);
			st.setName(sname);
			st.setPhone(sphone);
			st.setSchool(sschool);
			st.setSex(ssex);
			st.setTeacher(steacher);
			st.setTeacherphone(stphone);
			System.out.println(sd.update(st)>0);
		}
		if(("delete").equals(method)){
			System.out.println("这是删除");
			String str = request.getParameter("data_id");
			System.out.println(str+"**************************");
			int sid = Integer.valueOf(str);
			System.out.println(sd.delete(sid));
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException{
		doGet(request, response);
	}

}
