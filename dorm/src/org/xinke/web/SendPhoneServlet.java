package org.xinke.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xinke.util.SmsDemo;

import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.google.gson.JsonObject;

/**
 * Servlet implementation class SendPhoneServlet
 */
@WebServlet("/SendPhoneServlet")
public class SendPhoneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendPhoneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String phone  = request.getParameter("phone");
		String bool = "true";
		int rand = ((int)(Math.random()*858634)+100000);
		String code = Integer.toString(rand);
		SendSmsResponse ssrep = null;
		try {
			ssrep = SmsDemo.sendSms(phone, code);
		} catch (ClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String oldCode = ssrep.getCode();
		if(!"OK".equals(oldCode)||oldCode == null) {
			bool = "false";
		}
		JsonObject json = new JsonObject();
		json.addProperty("bool", bool);
		json.addProperty("code", code);
		String jsonStr = json.toString();
		PrintWriter out = response.getWriter();
		out.print(jsonStr);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
