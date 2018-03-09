<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<%
	String user = "";
	String pwd = "";
	Cookie [] ck = request.getCookies();
	for(int i=0;i<ck.length;i++){
		if("user".equals(ck[i].getName())){
			user = ck[i].getValue();
		}
		if("cpwd".equals(ck[i].getName())){
			pwd = ck[i].getValue();
		}
	}
%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>登录页面 - 任我看</title>
		<meta name="description" content="Restyling jQuery UI Widgets and Elements" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace-fonts.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<script src="js/jquery-3.2.1.js" type="text/javascript" charset="utf-8"></script>
		<!--
        	作者：offline
        	时间：2017-08-27
        	描述：滑块验证描述
        -->
		<link href="css/slide-unlock.css" rel="stylesheet">
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<style>
		    #demo {
		        width: 600px;
		        margin: 150px auto;
		        padding: 10px;
		        border: 1px dashed #d5d4ff;
		        border-radius: 10px;
		        -moz-border-radius: 10px;
		        -webkit-border-radius: 10px;
		        text-align: left;
		    }
		</style>
		
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->
		<script src="assets/js/ace-extra.min.js"></script>
		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>
	</head>

	<body class="login-layout blur-login">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<span class="white">欢迎进入任我看登录界面</span>
								</h1>
							</div>

							<div class="space-6"></div>

							<div class="position-relative ">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												输入登录信息
											</h4>

											<div class="space-6"></div>

											<form action="dologinServlet"  method="post" id="fid">
												<fieldset>
													<label class="block clearfix  form-group">
														<span class="block input-icon input-icon-right">
															<input type="text" name="uname" id="uname" value="<%=user %>" class="form-control" placeholder="用户名" />
															<span id="u_user" class="ace-icon fa fa-user "></span>
														</span>
														<span style="color: red" id="username" class="hide">4到16位（字母，数字，下划线，以字母开头)</span>
													</label>

													<label  class="block clearfix form-group ">
														<span class="block input-icon input-icon-right">
															<input type="password" id ="pwd" name="pwd"  value="<%=pwd %>" class="form-control" placeholder="密码" />
															<span id="p_user" class="ace-icon fa fa-lock "></span>
														</span>
														<span style="color: red" id="pwdname" class="hide">6到16位（字母，数字，下划线)</span>
													</label>
													<!-- 
														<div id="">
															<span id="login">
																登录员：
															</span>
															<select name="" id="ger">
																<option value="1">管理员</option>	
																<option value="2">学生</option>
															</select>	
														</div>
													 -->
													<div id="slider">
													   <span id="label">>></span> <span id="labelTip">拖动滑块验证</span>
													</div>
														<label class="inline">
															<input type="checkbox" class="ace" id="ck" name = "ck" />
															<span class="lbl"> 记住我</span>
														</label>
															<input type="submit" id = "log" class="width-35 pull-right btn btn-sm btn-primary" value="登录"/>
													</div>
													<div class="space-4"></div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->
										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i>
													忘记密码
												</a>
											</div>
											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link">
													用户注册
													<i class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
								
								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												重置密码
											</h4>

											<div class="space-6"></div>
											<p>
												输入您注册时候的手机号，用以接收密码重置信息
											</p>

											<form action="ForgotPwdServlet" id = "formcode"  method="post">
											<!-- <span style="color: red">${requestScope.sendMailMsg}</span> -->
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="tel" name="userNameOrEmail" id = "account" class="form-control" placeholder="请输入手机号" />
															<span style="color: red">${requestScope.errorMsg}</span>
															<i class="ace-icon fa fa-phone"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block">
															<input type="number" class="code" id = "sendcode" name = "sendcode"  placeholder="请输入验证码" required maxlength="6" > 
		 												    <input type="button" class="obtain generate_code" value="获取验证码" onclick="sendPhone(this,60)">
														</span>
													</label>
													<div class="clearfix">
														<button type="submit" id = "subcode" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110">提交</span>
														</button>
													</div>
												</fieldset>
											</form>
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												返回登录
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i>
												新用户注册
											</h4>

											<div class="space-6"></div>
											<p> 输入详细信息: </p>
												
											<form method="post" id="reg_log">
												<fieldset>
													<label class="block clearfix form-group">
														<span class="block input-icon input-icon-right">
															<input type="tel" name="reg_email" id="reg_email" class="form-control" placeholder="tel" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
														<span id="reg_emailname" style="color: red" class="hide">手机号格式不正确</span>
														<span style="color: red" class="hide" id="email_repe">该手机已被注册</span>
														<select id="email_test" class="hide">
															<c:forEach items="${wlist }" var="ul">
														   		<option value="${ul.wardentel }">${ul.wardentel }</option>
														    </c:forEach>
														</select>	
													</label>
													<label class="block clearfix  form-group">
														<span class="block input-icon input-icon-right">
															<input type="text" name="reg_uname" id="reg_uname" value="" class="form-control" placeholder="用户名" />
															<span id="u_user" class="ace-icon fa fa-user "></span>
														</span>
														<span style="color: red" id="reg_username" class="hide">4到16位（字母，数字，下划线，以字母开头)</span>
														<span style="color: red" class="hide" id="repe">该用户名已被注册</span>
														<select id="sel_test" class="hide">
															<c:forEach items="${wlist }" var="ul">
														   		<option value="${ul.wardenuser }">${ul.wardenuser }</option>
														    </c:forEach>
														</select>
													</label>

													<label  class="block clearfix form-group ">
														<span class="block input-icon input-icon-right">
															<input type="password" id ="reg_pwd" name="reg_pwd"  value="" class="form-control" placeholder="密码" />
															<span id="p_user" class="ace-icon fa fa-lock "></span>
														</span>
														<span style="color: red" id="reg_pwdname" class="hide">6到16位（字母，数字，下划线)</span>
													</label>

													<label class="block clearfix form-group">
														<span class="block input-icon input-icon-right">
															<input type="password" id="reg_ok" name="reg_ok" class="form-control" placeholder="确认密码" />
															<i class="ace-icon fa fa-retweet"></i>
														</span>
														<span id="reg_okname" style="color: red" class="hide">两次密码不一致</span>
													</label>
													<label>
														<div id="">
															<span id="logi">
																登录员：
															</span>
															<select name="" id="admin">
																<option value="1">管理员</option>	
																<option value="0">学生</option>
															</select>	
														</div>
													</label>
													<label>
														<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
													</label>
													<label>
														<div id="">
															<span id="txt">
																性别：
															</span><select name="" id="gender">
																<option value="1">男</option>	
																<option value="0">女</option>
															</select>	
														</div>
													</label>
													
													<label class="block">
														<input id="ac_ck" type="checkbox" class="ace" />
														<span class="lbl">
															我接受
															<a href="#" data-toggle="modal" data-target="#myModal" >用户协议</a>
														</span>
													</label>
		
													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">重置</span>
														</button>
														<a href="#" id="reg_a">
														<input type="button" disabled id="btn_reg" class="width-65 pull-right btn btn-sm btn-success" value="注册"/>
														</a>							
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												返回登录
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->


<!-- 模态框 -->
		
		
		<div class="modal fade" tabindex="-1" role="dialog" id="myModal">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title">Modal title</h4>
		      </div>
		      <div class="modal-body">
		        <p><h3>一、总则</h3> <br />
		        
1.1 任我看网的所有权和运营权归<strong>蓝桥任我看高级开发小组拥有</strong><br />
1.2 用户在注册之前，应当仔细阅读本协议，并同意遵守本协议后方可成为注册用户。一旦注册成功，则用户与保宝网之间自动形成协议关系，用户应当受本协议的约束。用户在使用特殊的服务或产品时，应当同意接受相关协议后方能使用。<br />
1.3 本协议则可由保<strong>任我看网</strong>随时更新，用户应当及时关注并同意本站不承担通知义务。本站的通知、公告、声明或其它类似内容是本协议的一部分。<br />

 <h3>二、用户帐号</h3>
2.1 经本站注册系统完成注册程序并通过身份认证的用户即成为正式用户，可以获得本站规定用户所应享有的一切权限；未经认证仅享有本站规定的部分会员权限。保宝网有权对会员的权限设计进行变更。<br />
2.2 用户只能按照注册要求使用真实姓名，及身份证号注册。用户有义务保证密码和帐号的安全，用户利用该密码和帐号所进行的一切活动引起的任何损失或损害，由用户自行承担全部责任，本站不承担任何责任。如用户发现帐号遭到未授权的使用或发生其他任何安全问题，应立即修改帐号密码并妥善保管，如有必要，请通知本站。因黑客行为或用户的保管疏忽导致帐号非法使用，本站不承担任何责任。<br />

<h3>三、使用规则</h3><br />
3.1 遵守中华人民共和国相关法律法规，包括但不限于《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》、《最高人民法院关于审理涉及计算机网络著作权纠纷案件适用法律若干问题的解释(法释[2004]1号)》、《全国人大常委会关于维护互联网安全的决定》、《互联网电子公告服务管理规定》、《互联网新闻信息服务管理规定》、《互联网著作权行政保护办法》和《信息网络传播权保护条例》等有关计算机互联网规定和知识产权的法律和法规、实施办法。<br />
3.2 用户对其自行发表、上传或传送的内容负全部责任，所有用户不得在本站任何页面发布、转载、传送含有下列内容之一的信息，否则本站有权自行处理并不通知用户：
(1)违反宪法确定的基本原则的；<br />
(2)危害国家安全，泄漏国家机密，颠覆国家政权，破坏国家统一的；<br />
(3)损害国家荣誉和利益的；<br />
(4)煽动民族仇恨、民族歧视，破坏民族团结的；<br />
(5)破坏国家宗教政策，宣扬邪教和封建迷信的；<br />
(6)散布谣言，扰乱社会秩序，破坏社会稳定的；<br />
(7)散布淫秽、色情、赌博、暴力、恐怖或者教唆犯罪的；<br />
(8)侮辱或者诽谤他人，侵害他人合法权益的；<br />
(9)煽动非法集会、结社、游行、示威、聚众扰乱社会秩序的；<br />
(10)以非法民间组织名义活动的；<br />
(11)含有法律、行政法规禁止的其他内容的。<br /> 3.3 用户承诺对其发表或者上传于本站的所有信息(即属于《中华人民共和国著作权法》规定的作品，包括但不限于文字、图片、音乐、电影、表演和录音录像制品和电脑程序等)均享有完整的知识产权，或者已经得到相关权利人的合法授权；如用户违反本条规定造成本站被第三人索赔的，用户应全额补偿本站一切费用(包括但不限于各种赔偿费、诉讼代理费及为此支出的其它合理费用)；<br />
3.4 当第三方认为用户发表或者上传于本站的信息侵犯其权利，并根据《信息网络传播权保护条例》或者相关法律规定向本站发送权利通知书时，用户同意本站可以自行判断决定删除涉嫌侵权信息，除非用户提交书面证据材料排除侵权的可能性，本站将不会自动恢复上述删除的信息； (1)不得为任何非法目的而使用网络服务系统；<br />
(2)遵守所有与网络服务有关的网络协议、规定和程序；<br /> (3)不得利用本站进行任何可能对互联网的正常运转造成不利影响的行为；<br />
(4)不得利用本站进行任何不利于本站的行为。<br /> 4.5 如用户在使用网络服务时违反上述任何规定，本站有权要求用户改正或直接采取一切必要的措施(包括但不限于删除用户张贴的内容、暂停或终止用户使用网络服务的权利)以减轻用户不当行为而造成的影响。<br />

五、隐私保护
5.1 本站不对外公开或向第三方提供单个用户的注册资料及用户在使用网络服务时存储在本站的非公开内容，但下列情况除外： (1)事先获得用户的明确授权；
(2)根据有关的法律法规要求；
(3)按照相关政府主管部门的要求；
(4)为维护社会公众的利益。 5.2 本站可能会与第三方合作向用户提供相关的网络服务，在此情况下，如该第三方同意承担与本站同等的保护用户隐私的责任，则本站有权将用户的注册资料等提供给该第三方。
5.3 在不透露单个用户隐私资料的前提下，本站有权对整个用户数据库进行分析并对用户数据库进行商业上的利用。

六、版权声明
6.1 本站的文字、图片、音频、视频等版权均归永兴元科技有限公司享有或与作者共同享有，未经本站许可，不得任意转载。
6.2 本站特有的标识、版面设计、编排方式等版权均属永兴元科技有限公司享有，未经本站许可，不得任意复制或转载。
6.3 使用本站的任何内容均应注明“来源于保宝网”及署上作者姓名，按法律规定需要支付稿酬的，应当通知本站及作者及支付稿酬，并独立承担一切法律责任。
6.4 本站享有所有作品用于其它用途的优先权，包括但不限于网站、电子杂志、平面出版等，但在使用前会通知作者，并按同行业的标准支付稿酬。
6.5 本站所有内容仅代表作者自己的立场和观点，与本站无关，由作者本人承担一切法律责任。
6.6 恶意转载本站内容的，本站保留将其诉诸法律的权利。
</p>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div><!-- /.modal-content -->
		  </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->
		<!-- basic scripts -->
		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>
		<!-- <![endif]-->
		<!--[if IE]>
		<script type="text/javascript">
		 window.jQuery || document.write("<script src='assets/js/jquery1x.min.js'>"+"<"+"/script>");
		</script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});

		</script>
		
		
	<!--
    	作者：offline
    	时间：2017-08-27
    	描述：滑块验证js
    -->
   	<script src="js/jquery-1.12.1.min.js"></script> 
	<script src="js/jquery.slideunlock.js"></script> 
	<script>
		//密码修改，获取验证码
		var code,boolcode;
		function settime(val,countdown) {
			if (countdown == 0) {
		        val.removeAttribute("disabled");    
		        val.value="重获验证码";
		        return;
	        } else {
		        val.setAttribute("disabled", true);
		        val.value="重新发送(" + countdown + ")";
		        countdown--;
	    	}
	        setTimeout(function() {
	        	settime(val,countdown);
	        },1000);
	        
		  }
		//手机规则验证及获取验证码
		 function sendPhone(val,countdown){
			 var phone=document.getElementById("account").value;
		     var par_tel = /^1[3|4|5|6|7|8][0-9]\d{4,8}$/;
	    	 if(!par_tel.test(phone)||!(phone.length == 11)) {
	            alert("请输入正确的手机号码");
	            document.getElementById("account").setAttribute("placeholder", "请输入手机号");
	            document.getElementById("account").value = "";
	            document.getElementById("sendcode").value = "";
	            return false;
	        }
		     settime(val,countdown);
			 /*
			 		$.ajax({
		            url:'SendPhoneServlet',
		            type:"post",
		            data:{phone:phone
		               },
		            dataType:"json",
		            async: false,
		            success: function(data) { //若Ajax处理成功后的回调函数，text是返回的页面信息'
		                   if(data.status==1){
		                       alert("验证码已发送到您的手机上,请注意查收!");
		                       settime(val,60);
		                       }
		               if(data.status==0){
		                 alert(data.msg);   
		               }
		            }
		        }); 
			 */
			$.post("SendPhoneServlet",{"phone":phone},function(data){
				 alert(data);
				 var info = JSON.parse(data);
				 boolcode = info.bool;
				 alert(boolcode);
				 code = info.code;
				 alert(code);
			 })			
		 }
		//是否符合注册的各项条件
		var item = true;
	    $(function () {
	    	var	bool= false;
	        var slider = new SliderUnlock("#slider",{
					successLabelTip : "解锁成功"	
				},function(){
				bool=true;
	       });
    		slider.init();
    		//登录
    		$("#log").click(function(){
        		alert(bool);
        		
        		$("#fid").attr("action","dologinServlet?id="+bool);
        		<!--表单验证-->
    		})
    		//获取手机验证码 验证
    		$("#subcode").click(function(){
    			alert(boolcode+"++++++++"+code);
    			$("#formcode").attr("action","ForgotPwdServlet?id="+boolcode+"&name="+code);
    		})
        	<!--用户名表单验证-->
        	$("#uname").blur(function(){
        		var uname= $("#uname");
        		//alert(uname.val());
        		//用户名正则，4到16位（字母，数字，下划线,字母开头)
        		var u_name = /^[a-zA-Z][a-zA-Z0-9_]{3,15}$/;
        		if(u_name.test(uname.val())){
        			//alert("ok");
        			$("#uname").parent().removeClass("has-error");
        			$("#u_user").get(0).innerHTML="√";
        			$("#u_user").removeClass("fa-user");
        			//$("#u_user").addClass("hide");
        			//$("#u_false").addClass("hide");
        			//$("#u_ok").removeClass("hide");
        			$("#uname").parent().addClass("has-success");
        			$("#username").addClass("hide");
				}else{
					//alert("false");
					$(this).focus();
					$("#uname").parent().removeClass("has-success");
					//$("#u_user").get(0).innerHTML="错误";
					$("#u_user").get(0).innerHTML="×";
        			$("#u_user").removeClass("fa-user");
					//$("#u_user").addClass("hide");
        			//$("#u_false").removeClass("hide");
        			//$("#u_ok").addClass("hide");
					$("#uname").parent().addClass("has-error");
					$("#username").removeClass("hide");
					return false;
				}
			});
	       		 <!--密码表单验证-->
	        	$("#pwd").blur(function(){
	        		var pwd= $("#pwd");
	        		//alert(uname.val());
	        		//6到16位（字母，数字，下划线，减号)
	        		var reg_pwd = /^[0-9a-zA-Z_#]{6,16}$/;
	        		if(reg_pwd.test(pwd.val())){
	        			$("#pwd").parent().removeClass("has-error")
						$("#pwd").parent().addClass("has-success");
	        			$("#p_user").get(0).innerHTML="√";
	        			$("#p_user").removeClass("fa-lock");
	        			$("#pwdname").addClass("hide");
					}else{
						$("#pwd").parent().removeClass("has-success")
						$("#pwd").parent().addClass("has-error");
						$("#p_user").get(0).innerHTML="×";
	        			$("#p_user").removeClass("fa-lock");
						$("#pwdname").removeClass("hide");
						return false;
					}
				});
					<!--用户注册验证-->
					<!--tel表单验证-->
	        	$("#reg_email").blur(function(){
	        		obj = document.getElementById("email_test");
					    var isName = false;
					    //循环遍历是否有这个tel
					    for (var i=0;i<obj.length;i++) {
					    	//alert(obj[i].value+"**********"+$("#reg_email").val());
					    	if(obj[i].value == $("#reg_email").val()){
					    		isName=true;
					    	}
					    }
					   // alert(isName);
					   if(isName == true){
						   item = false;
						   $("#email_repe").removeClass("hide");
						   $("#reg_emailname").addClass("hide");
					   }else{
						   $("#email_repe").addClass("hide"); 
			        		var uname= $("#reg_email");
			        		//用来判断邮箱，通常邮箱没有以0开头的，所以第一位为1-9数字或者小写字母或者大写字母，第二位开始任意字符
			                //也可以只有第一位没有第二位，*表示至少0个，@后面同理，小写字母或者大写字母或者数字，.需要转意符，所以写成\.
			                //点后面通常是com或者cn或者com.cn，所以是小写字母或者大写字母至少两位
			                var u_name = /^1[3|4|5|6|7|8][0-9]\d{4,8}$/;
			        		if(u_name.test(uname.val())){
			        			item = true;
			        			$("#reg_email").parent().removeClass("has-error");
			        			$("#reg_email").parent().addClass("has-success");
			        			$("#reg_emailname").addClass("hide");
							}else{
								item = false;
								$("#reg_email").parent().removeClass("has-success");
								$("#reg_email").parent().addClass("has-error");
								$("#reg_emailname").removeClass("hide");
								return false;
							}
					   }
					});
							<!--注册用户名表单验证-->
	        	$("#reg_uname").blur(function(){
	        		var uname= $("#reg_uname");
	        		obj = document.getElementById("sel_test");
					    var isName = false;
					    for (var i=0;i<obj.length;i++) {
					    	if(obj[i].value == $("#reg_uname").val()){
					    		isName=true;
					    	}
					    }
					   if(isName == true){
						   item = false;
						   $("#repe").removeClass("hide");
						   $("#reg_username").addClass("hide");
					   }else{
						   $("#repe").addClass("hide"); 
			        		//用户名正则，4到16位（字母，数字，下划线,字母开头)
			        		var u_name = /^[a-zA-Z][a-zA-Z0-9_]{3,15}$/;
			        		if(u_name.test(uname.val())){
			        			item = true;
			        			$("#reg_uname").parent().removeClass("has-error");
			        			$("#reg_uname").parent().addClass("has-success");
			        			$("#reg_username").addClass("hide");
							}else{
								item = false;
								//alert("false");
								//$(this).focus();
								$("#reg_uname").parent().removeClass("has-success");
								$("#reg_uname").parent().addClass("has-error");
								$("#reg_username").removeClass("hide");
								return false;
							}
					   }   
					});
	        <!--注册密码表单验证-->
	        	$("#reg_pwd").blur(function(){
	        		var pwd= $("#reg_pwd");
	        		var pwd_ok= $("#reg_ok").val();
	        		//6到16位（字母，数字，下划线，减号)
	        		var reg_pwd = /^[0-9a-zA-Z_#]{6,16}$/;
	        		if(reg_pwd.test(pwd.val())){
	        			
	        			if(pwd == pwd_ok){
	        				item = true;
	        			}else{
	        				item = false;
	        			}
	        			$("#reg_pwd").parent().removeClass("has-error")
						$("#reg_pwd").parent().addClass("has-success");
	        			$("#reg_pwdname").addClass("hide");
					}else{
						item = false;
						$("#reg_pwd").parent().removeClass("has-success")
						$("#reg_pwd").parent().addClass("has-error");
						$("#reg_pwdname").removeClass("hide");
						return false;
					}
				});
	        	<!--注册确认密码表单验证-->
	        	$("#reg_ok").blur(function(){
	        		var pwd_ok= $("#reg_ok").val();
	        		var pwd = $("#reg_pwd").val();
	        		if(pwd_ok == pwd){
	        			item = true;
	        			$("#reg_ok").parent().removeClass("has-error")
						$("#reg_ok").parent().addClass("has-success");
	        			$("#reg_okname").addClass("hide");
	        		}else{
	        			item = false;
	        			//alert("密码不一致");
						$("#reg_ok").parent().removeClass("has-success")
						$("#reg_ok").parent().addClass("has-error");
						$("#reg_okname").removeClass("hide");
	        		}
				});
	        	$("#ac_ck").click(function(){
	        		if($(this).get(0).checked){
	        			$("#btn_reg").get(0).disabled = false;
	        		}else{
	        			$("#btn_reg").get(0).disabled = true;
	        		}
	        	})
	        	$("#btn_reg").click(function(){
	        		var reg_email= $("#reg_email").val();
	        		var reg_uname= $("#reg_uname").val();
	        		var reg_pwd= $("#reg_pwd").val();
	        		var gender = $("#gender").val();
	        		var admin = $("#admin").val();
	        	if(item == true){
	        		if(reg_email != "" && reg_uname != "" && reg_pwd != ""){
	        			//&reg_email=&reg_uname=&reg_pwd
	        			$.post("doRegServlet", { reg_email: reg_email, reg_uname: reg_uname ,reg_pwd:reg_pwd,gender:gender,admin:admin}, function(data){
	        				alert("添加成功！");  
	        				//window.location.href="dologinServlet";
	        				location.reload();
	        			  } );
	        			//$("#reg_a").attr("href","doRegServlet?gender="+gender);
	        			
	        		}
	        	}
	        		else{
	        			alert("注册信息不完整");
	        		}
	        	})
			})
	</script> 
	</body>
</html>
