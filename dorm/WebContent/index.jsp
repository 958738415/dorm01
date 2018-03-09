<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>后台管理</title>

		<meta name="description" content="This is page-header (.page-header &gt; h1)" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
		<link rel="stylesheet" href="assets/css/ace.min.css" id="main-ace-style" />
		
		<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
		
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default">
			<div class="navbar-container" id="navbar-container">

				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<!-- /section:basics/sidebar.mobile.toggle -->
				<div class="navbar-header pull-left">
					<!-- #section:basics/navbar.layout.brand -->
					<a href="index.html" class="navbar-brand">
						<small>
							<img src="assets/avatars/logo.png" alt="" />
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">

						<!-- #section:basics/navbar.user_menu -->
						<li class="light-blue" style="margin-top: 10px;">
							
								<span style="color: white;">
									欢迎您:
									${u_name }
								</span>
								<button id="btn_lt" class="btn">注销</button>
						</li>

						<!-- /section:basics/navbar.user_menu -->
					</ul>
				</div>

				<!-- /section:basics/navbar.dropdown -->
			</div><!-- /.navbar-container -->
		</div>

		<!-- /section:basics/navbar.layout -->
		<div class="main-container" id="main-container">

			<!-- #section:basics/sidebar -->
			<div id="sidebar" class="sidebar responsive">


				<ul class="nav nav-list">
					<li class="active">
						<a href="index.html">
							<i class="menu-icon fa fa-tachometer"></i>
							<span class="menu-text"> 总控制台 </span>
						</a>

						<b class="arrow"></b>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-desktop"></i>
							<span class="menu-text"> 宿舍楼管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">

							<li class="">
								<a href="#" class="addnovel">
									<i class="menu-icon fa fa-caret-right"></i>
									添加宿舍楼
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="#" class="novellist">
									<i class="menu-icon fa fa-caret-right"></i>
									宿舍楼列表
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="#" class="addnovelchapters">
									<i class="menu-icon fa fa-caret-right"></i>
									编辑小说章节
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
					<!--宿舍楼管理结束-->
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> 宿舍管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>
						<ul class="submenu">
							<li class="">
								<a href="#" class="addvideo">
									<i class="menu-icon fa fa-caret-right"></i>
									宿舍信息管理
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="#" class="videolist">
									<i class="menu-icon fa fa-caret-right"></i>
									宿舍信息浏览
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
						<!--宿舍管理结束-->
						<b class="arrow"></b>
					</li>
					<!--漫画管理开始-->
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list"></i>
							<span class="menu-text"> 学生管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>
						<ul class="submenu">
							<li  class="">
								<a href="#" class="addcartoon">
									<i class="menu-icon fa fa-caret-right"></i>
									添加学生
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="#" class="cartoonchapter">
									<i class="menu-icon fa fa-caret-right"></i>
									学生查询
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="#" class="cartoonlist">
									<i class="menu-icon fa fa-caret-right"></i>
									漫画列表
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
					<!--漫画管理结束-->
					<!--视频管理开始-->
					
					<!--分类管理开始-->
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> 分类管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>
						<ul class="submenu">
							<li class="">
								<a href="#" class="type">
									<i class="menu-icon fa fa-caret-right"></i>
									分类列表
								</a>
								<b class="arrow"></b>
							</li>
						</ul>
						<!--视频管理结束-->
						<b class="arrow"></b>
					</li>
					<!--分类管理结束-->
					<!--用户管理开始-->
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-tag"></i>
							<span class="menu-text"> 用户管理 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="#" class="userlist">
									<i class="menu-icon fa fa-caret-right"></i>
									用户信息
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>
					<!--用户管理结束-->
				</ul><!-- /.nav-list -->
			</div>

			<!-- /section:basics/sidebar -->
			<div class="main-content">
				<!-- #section:basics/content.breadcrumbs -->

				<div class="page-content" style="width: 100%px;height: 620px;">
					<iframe src="welcome.html" name="main" width="100%" height="620px" id="iframe-content" frameborder="0"></iframe>
				</div><!-- /.page-content -->
				
			</div><!-- /.main-content -->

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse" >
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

			<script type="text/javascript">
				window.jQuery || document.write("<script src='assets/js/jquery.min.js'>"+"<"+"/script>");
			</script>
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>
		<!--[if lte IE 8]>
		  <script src="assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="assets/js/jquery-ui.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
	</body>
	<script type="text/javascript">
		$(function(){
			$(".addnovel").click(function(){
				$("#iframe-content").attr('src','doAddnovel');
			})
			$(".addcartoon").click(function(){
				$("#iframe-content").attr('src','addstudent.jsp');
			})
			$(".addvideo").click(function(){
				$("#iframe-content").attr('src','doVideoGetType');
			})
			$(".novellist").click(function(){
				$("#iframe-content").attr('src','NovellistServlet');
			})
			$(".cartoonlist").click(function(){
				$("#iframe-content").attr('src','studentlist.jsp');
			})
			$(".type").click(function(){
				$("#iframe-content").attr('src','doTypeServlet');
			})
			$(".videolist").click(function(){
				$("#iframe-content").attr('src','doVideoList');
			})
			$(".userlist").click(function(){
				$("#iframe-content").attr('src','doUserSel');
			})
			$(".cartoonchapter").click(function(){
				$("#iframe-content").attr('src','selectStu.jsp');
			})
			$(".addnovelchapters").click(function(){
				$("#iframe-content").attr('src','doAddnovelchapters');
			})
			$("#btn_lt").click(function(){
				alert("这是注销事件");
				location.href = "login.jsp";
			})
		})
	</script>
</html>
