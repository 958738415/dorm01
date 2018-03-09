<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="css/webuploader.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/fileinput.min.css" media="all"/>
		
		<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/fileinput.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/zh.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/webuploader.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			.fileup{
				position: relative;
				display: inline-block;
				margin-left: 100px;
				width: 400px;
				top: 0px;
				padding-bottom: 150px;
			}
			.panel-body{
				width: 400px;
				display: inline-block;
				margin-left: 50px;
				margin-right: 25px ;
				margin-top:10px;
			}
			.panel-body div{
				margin-bottom: 30px;
				margin-left:20px;
				margin-top:20px;
			}
			.my_magin_top{
				margin-top: 20px;
			}
			
		</style>
	</head>
	<body>
		<form action="DoStudentServlet" method="post">
		<!--panel开始-->
		<div class="panel panel-primary">
			<div class="panel-heading my_txt_center">
					<h4>您可以在这里添加学生信息</h4>
			</div>
			<!--上传图片开始-->
			<div class="panel-body" style="float: left;margin-top:32px;">
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">姓名</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="name" name = "name" type="text" placeholder="请输入姓名" />
				</div><!--小说名称开始-->
				<!--小说作者开始-->
				<!--创作时间开始-->
				<div class="input-group input-group-lg my_magin_top">
					<span class="input-group-addon">
						<span class="col-xs-10">年龄</span>
					</span>
					<input class="form-control" style="width: 300px;" id = "age" name = "age" type="text" value=""  placeholder="请输入年龄" />
				</div><!--创作时间结束-->
				<!--小说简介开始-->
				<div class="input-group input-group-lg my_magin_top">
					<span class="input-group-addon">
						<span class="col-xs-10">院校</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="school" name = "school" type="text" placeholder="请输入院校" />
				</div><!--小说简介结束-->
				<!--小说类型开始-->
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">性别</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="sex" name = "sex" type="text" placeholder="请输入性别" />
				</div>
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">辅导老师</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="teacher" name = "teacher" type="text" placeholder="请输入辅导老师姓名" />
				</div><!--创作时间结束-->
				<!--小说简介开始-->
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">家庭联系人</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="family" name = "family" type="text" placeholder="请输入家庭联系人" />
				</div>
				<!--保存重置按钮-->
			</div>
			</div>
			<!--上传图片结束-->
			<!--panel-body开始-->
			<div class="panel-body" >
				<!--小说名称开始-->
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">专业</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="major" name = "major" type="text" placeholder="请输入专业" />
				</div><!--小说名称开始-->
				<!--小说作者开始-->
				<!--创作时间开始-->
				<div class="input-group input-group-lg ">
					<span class="input-group-addon">
						<span class="col-xs-10">宿舍楼</span>
					</span>
					<input class="form-control" style="width: 300px;" id = "build" name = "build" type="text" value=""  placeholder="请输入宿舍楼" />
				</div><!--创作时间结束-->
				<!--小说简介开始-->
				<div class="input-group input-group-lg ">
					<span class="input-group-addon">
						<span class="col-xs-10">宿舍号</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="dorm" name = "dorm" type="text" placeholder="请输入宿舍号" />
				</div><!--小说简介结束-->
				<!--小说类型开始-->
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">联系电话</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="phone" name = "phone" type="text" placeholder="请输入联系电话" />
				</div><!--小说类型结束-->
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">老师联系方式</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="tphone" name = "tphone" type="text" placeholder="请输入老师联系方式" />
				</div>
				<div class="input-group  input-group-lg">
					<span class="input-group-addon">
						<span class="col-xs-10">家庭联系方式</span>
					</span>
					<input class="form-control" style="width: 300px;height: 53px; border-radius: 4px;" id="fphone" name = "fphone" type="text" placeholder="请输入家庭联系方式" />
				</div>
				<!--保存重置按钮-->
			</div> <!--panel-body结束-->
			<!--panel结束-->
			<div style="margin-left: 85px;margin-bottom: 10px; ">
				<div class="input-group  input-group-lg text-left" >
					<span class="input-group-addon">
						<span class="col-xs-10">家庭地址</span>
					</span>
					<textarea id ="address" style="height: 50px; width: 800px; border-radius: 4px; resize: none;" name = "address" class="form-control" maxlength="25" placeholder="最多只能输入25字"></textarea>
				</div>
			</div>
		<div>
			<div class="my_magin_top text-center">
					<button id = "button" type="submit"  class="btn btn-primary btn-lg " disabled="false"> 保 存 </button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button  type="button" class="btn btn-warning btn-lg button"> 重 置 </button>
			</div><!--保存重置按钮-->
		</div>
		</form>
	</body>
		<script type="text/javascript">
			var nm = false;
			var ag = false;
			var sh = false;
			var sx = false;
			var mj = false;
			var bd = false;
			var dm = false;
			var ph = false;
			var th = false;
			var fm = false;
			var tp = false;
			var fp = false;
			var ad = false;
		$(function(){
			$("#name").blur(function(){
				var name = $(this).val();
				if(name != ""){
					nm = true;
				} else {
					nm = false;
				}
				onAll();
			});
			$("#age").blur(function(){
				var age = $(this).val();
				if(age != "") {
					ag = true;
				} else {
					ag = false;
				}
				onAll();
			});
			$("#school").blur(function(){
				var school = $(this).val();
				if(school != "") {
					sh = true;
				} else {
					sh = false;
				}
				onAll();
			});
			$("#sex").blur(function(){
				var sex = $(this).val();
				if(sex != "") {
					sx = true;
				} else {
					sx = false;
				}
				onAll();
			});
			$("#major").blur(function(){
				var major = $(this).val();
				if(major != "") {
					mj = true;
				} else {
					mj = false;
				}
				onAll();
			});
			$("#build").blur(function(){
				var build = $(this).val();
				if(build != "") {
					bd = true;
				} else {
					bd = false;
				}
				onAll();
			});
			$("#dorm").blur(function(){
				var dorm = $(this).val();
				if(dorm != "") {
					dm = true;
				} else {
					dm = false;
				}
				onAll();
			});
			$("#phone").blur(function(){
				var phone = $(this).val();
				if(phone != "") {
					ph = true;
				} else {
					ph = false;
				}
				onAll();
			});
			$("#teacher").blur(function(){
				var teacher = $(this).val();
				if(teacher != "") {
					th = true;
				} else {
					th = false;
				}
				onAll();
			});
			$("#family").blur(function(){
				var family = $(this).val();
				if(family != "") {
					fm = true;
				} else {
					fm = false;
				}
				onAll();
			});
			$("#tphone").blur(function(){
				var tphone = $(this).val();
				if(tphone != "") {
					tp = true;
				} else {
					tp = false;
				}
				onAll();
			});
			$("#fphone").blur(function(){
				var fphone = $(this).val();
				if(fphone != "") {
					fp = true;
				} else {
					fp = false;
				}
				onAll();
			});
			$("#address").blur(function(){
				var address = $(this).val();
				if(address != "") {
					ad = true;
				} else {
					ad = false;
				}
				onAll();
			});
			function onAll(){
				if(nm == true&&ag == true&&sh == true&&sx == true&&mj == true&&bd == true&&dm == true&&ph ==true&&th == true&&fm == true&&tp == true&&fp == true &&ad == true) {
					$("#button").removeAttr("disabled");
				} else {
					$("#button").attr("disabled","true");
				}
			};
			$(".button").click(function(){
				$("#name").val("");
				$("#age").val("");
				$("#school").val("");
				$("#sex").val("");
				$("#major").val("");
				$("#build").val("");
				$("#dorm").val("");
				$("#phone").val("");
				$("#teacher").val("");
				$("#family").val("");
				$("#tphone").val("");
				$("#fphone").val("");
				$("#address").val("");
			});
		});
		</script>
</html>
