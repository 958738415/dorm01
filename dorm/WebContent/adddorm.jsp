<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<script src="js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<title>宿舍添加</title>
		</head>
		<body>
			<div style="background-color: blue; width: 100%; height: 100px;align-content: center;border: solid white;">
							<h3 style="text-align: center; margin-top: 30px;">您可以在这里添加学生信息</h3>
				</div>
				<form class="form-horizontal" method="post" action="" style="margin-top: 65px; margin-left: 300px;" >
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">应住人数</label>
				    <div class="col-sm-6">
				      <input type="text" id = "num" class="form-control"  placeholder="请输入内容">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-2 control-label">实住人数</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="realnum" placeholder="请输入内容">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">床位</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="beds" placeholder="请输入内容">
				    </div>
				  </div>
				   <div class="form-group">
				    <label for="inputEmail3" class="col-sm-2 control-label">备注</label>
				    <div class="col-sm-6">
				      <textarea class="form-control" id="remark" rows="3" placeholder="请输入内容"></textarea>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" id = "add" disabled="disabled" class="btn btn-primary">添 加</button>
				      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				       <button type="button" id = "reset" class="btn btn-primary">重 置</button>
				    </div>
				  </div>
				</form>
		</body>
</html>