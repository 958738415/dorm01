<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
	</head>
	<body>
		<form method="post" action="" id = "form">
			<div class="panel panel-primary">
				<div class="panel-heading center">
						<h3 class="panel-title">
							条件检索
						</h3>
				</div>
				<div class="panel-body">
						<span style="font-size: 42;">综合查询</span>
						<input id = "text" name = "text" style="width: 400px; height: 40px;" class="form-group" type="text" placeholder="请输入内容" />
						<input type="submit" style="width: 60px; height: 40px;" class="btn-group" value="查询"  id = "select" />
				</div>
				<table class="table table-hover">
					<tr>
						<th>
							学号
						</th>
						<th>
							姓名
						</th>
						<th>
							年龄
						</th>
						<th>
							性别
						</th>
						<th>
							专业
						</th>
						<th>
							学院
						</th>
						<th>
							宿舍楼
						</th>
						<th>
							宿舍号
						</th>
						<th>
							联系电话
						</th>
						<th>
							家庭地址
						</th>
						<th>
							辅导老师
						</th>
						<th>
							家庭联系方式
						</th>
						<th>
							家庭联系人
						</th>
						<th>
							辅导老师联系方式
						</th>
					</tr>
					<c:forEach items = "${list}" var = "ul">
						<tr>
							<td>${ul.id}</td>
							<td>${ul.name}</td>
							<td>${ul.age}</td>
							<td>${ul.sex}</td>
							<td>${ul.major}</td>
							<td>${ul.school}</td>
							<td>${ul.buildid}</td>
							<td>${ul.dormid}</td>
							<td>${ul.phone}</td>
							<td>${ul.address}</td>
							<td>${ul.teacher}</td>
							<td>${ul.hometel}</td>
							<td>${ul.familycontact}</td>
							<td>${ul.teacherphone}</td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</form>
	</body>
</html>
<script type="text/javascript">
	$(function(){
		$("#select").click(function(){
			$("#form").attr("action","SelectAllStu");
		})
	})
</script>