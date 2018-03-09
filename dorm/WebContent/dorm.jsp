<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="bootstrap-4.0.0-dist/css/bootstrap.min.css"/>
		<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="bootstrap-4.0.0-dist/js/bootstrap.js" type="text/javascript" charset="utf-8"></script>
		<title></title>
	</head>
	<body>
		<div class="container-fluid">
			<form class="form-inline">
			  <div class="form-group">
			    <label for="exampleInputName2">宿舍号检索</label>
			    <input type="text" class="form-control" id="exampleInputName2" placeholder="请输入内容">
			  </div>
			  <button type="submit" class="btn btn-primary">查询</button>
			</form>
	</div>
	<div class="row-fluid">
		<div class="span12">
			<table class="table table-striped">
			  	<thead>
					<tr>
						<th>
							宿舍号
						</th>
						<th>
							应住人数
						</th>
						<th>
							实住人数
						</th>
						<th>
							床位
						</th>
						<th>
							备注
						</th>
						<th>
							宿舍楼
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody>
				<c:Foreach items = "list" var = "ul">
					<tr>
						<td>
							<a href="#" id = "dormid">${ul.dormid}</a>
						</td>
						<td id = "num">
							${ul.dormnum}
						</td>
						<td id = "realnum">
							${ul.dormrealnum}
						</td>
						<td id = "beds">
							${ul.dormbeds}
						</td>
						<td id = "remark">
							${remark}
						</td>
						<td id = "buildid">
							${buildid}
						</td>
						<td>
							<button type="button"   class="btn btn-primary"  of = "${ul.dormid}" id = "update" name = "update">修改</button>
							<input type="button"  class="btn btn-primary" of = "${ul.dormid}" id = "delete" name = "delete" value = "删除" />
						</td>
					</tr>
				</c:Foreach>
				</tbody>
			</table>
		</div>
	</div>
	<!-- 模态框（Modal） -->
	<div class="modal fade ex-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog modal-lg" role="document">
	        <div class="modal-content " >
	            <div class="modal-header">
	                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	                <h4 class="modal-title" id="myModalLabel">信息修改</h4>
	            </div>
	            <div class="modal-body">
					<form class="form-horizontal" method="post" action="updatedorm" >
							  <div class="form-group hide">
							    <label for="inputEmail3" class="col-sm-2 control-label">宿舍号</label>
							    <div class="col-sm-6">
							      <input type="text" id = "dormid" class="form-control" value="" placeholder="请输入内容">
							    </div>
							  </div>
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
							    <label for="inputEmail3" class="col-sm-2 control-label">宿舍楼</label>
							    <div class="col-sm-6">
							      <input type="text" class="form-control" id="buildid" placeholder="请输入内容">
							    </div>
							  </div>
							   <div class="form-group">
							    <label for="inputEmail3" class="col-sm-2 control-label">备注</label>
							    <div class="col-sm-6">
							      <textarea class="form-control" id="remark" rows="3" placeholder="请输入内容"></textarea>
							    </div>
							  </div>
					</form>	            	
	            </div>
	            <div class="modal-footer">
	                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	                <button type="button" id = "sub" class="btn btn-primary" onclick="getAll()">提交更改</button>
	            </div>
	        </div><!-- /.modal-content -->
	    </div><!-- /.modal -->
	</div>
</div>
	</body>
</html>
<script type="text/javascript">
$(function(){
		$("#update").click(function(){
			alert("qq");
			var dormid = $(this).attr("of");
			alert(dormid);
			$("#dormid").val(dormid);
			$("#myModal").modal();
		})
		$("#sub").click(function(){
			var dormid = $("#dormid").val();
			alert(dormid);
			var num = $("#num").val();
			var realnum = $("#realnum").val();
			var beds = $("#beds").val();
			var remark = $("#remark").val();
			var buildid = $("#buildid").val();
			$.ajax({
				type : 'post',
				url : 'doUpdateDorm',
				data : {dormid:dormid,num:num,realnum:realnum,beds:beds,remark:remark,buildid:buildid},
				dataType : 'html',
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				success: function(data){
					window.location.href = "DoDorm";
				}
			})
		})
		$("#delete").click(function(){
			alert("delete");
			var dormid = $(this).attr("of");
			$.ajax({
				type:'post',
				url:'doDeleteDorm',
				data:{dormid:dormid},
				dataTyep:'html',
				success:function(data){
					window.location.href = "DoDorm";
				}
			})
		})
	
})
</script>