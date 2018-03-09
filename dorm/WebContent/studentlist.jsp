<%@page import="java.util.ArrayList"%>
<%@page import="org.xinke.entity.Student"%>
<%@page import="org.xinke.dao.impl.StudentImpl"%>
<%@page import="org.xinke.dao.StudentDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>展示漫画</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
		<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="layui/layui.js"></script>
		<!--这是时间表的引入 -->
		<!--引入-->
		<style type="text/css">
			.page_div {
				margin-top: 20px;
				margin-bottom: 20px;
				font-size: 15px;
				font-family: "microsoft yahei";
				color: #666666;
				margin-right: 10px;
				padding-left: 20px;
				box-sizing: border-box;
			}
			/*
			 * 页数按钮样式
			 */
			
			.page_div a {
				min-width: 30px;
				height: 28px;
				border: 1px solid #dce0e0!important;
				text-align: center;
				margin: 0 4px;
				cursor: pointer;
				line-height: 28px;
				color: #666666;
				font-size: 13px;
				display: inline-block;
			}
			
			#firstPage,
			#lastPage {
				width: 50px;
				color: #0073A9;
				border: 1px solid #0073A9!important;
			}
			
			#prePage,
			#nextPage {
				width: 70px;
				color: #0073A9;
				border: 1px solid #0073A9!important;
			}
			
			.page_div .current {
				background-color: #0073A9;
				border-color: #0073A9;
				color: #FFFFFF;
			}
			
			.totalPages {
				margin: 0 10px;
			}
			
			.totalPages span,
			.totalSize span {
				color: #0073A9;
				margin: 0 5px;
			}
			
			.kk-center>tr>td {
				display: inline-block;
				margin: 0 auto;
				padding: 0px;
				align-content: center;
			}
			
			.modal-body {
				height: 460px;
			}
			div table tbody tr td input{
				border: solid red;
				margin-right: 30px;
			}
		</style>
	</head>

	<body>
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
												条件检索
											</h3>
					</div>
					<!--查询开始-->
					<div class="panel-body">
						<table class="stu_query" border="0">
							<tbody>
								<tr>
									<td>学号</td>
									<td>
										<input class="form-control" name="sid" id="id" value="" type="text">
									</td>
									<td>姓名</td>
									<td>
										<input class="form-control" name="sname" id="name" value="" type="text">
									</td>
									<td>专业</td>
									<td>
										<%
											StudentDao sd = new StudentImpl();
											List<Student> list = new ArrayList<>();
											list = sd.findAll();
											session.setAttribute("list",list);
										%>
										<select id = "major" name = "smajor" class="form-control">
											<option>---请选择---</option>
											<c:forEach items="${list }" var = "l">
												<option value="${l.major }">${l.major }</option>
											</c:forEach>
										</select>
									</td>
									<td>电话</td>
									<td>
										<input class="form-control" name="sphone" id="phone" value="" lay-key="1">
									</td>
									<td colspan="2" align="center">
										<input class="btn btn-success" name="sid" id="commit" value=" 查 询 " type="button">
										<input class="btn btn-danger" name="sid" id="reset" value=" 重 置 " type="reset">
									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!--查询结束-->
					<!--查询结果展示开始-->
					<table id="test" lay-filter="test">

					</table>
					<!--查询结果展示结束-->

				</div>
			</div>
		</div>
		<div class="row-fluid clearfix">
			<div id="page" class="page_div"></div>
		</div>
		<!--模态框
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							
						</h4>
					</div>
					<div class="modal-body">
						<iframe src="updatecartoon.html" frameborder="0" width="100%" height="100%"></iframe>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<button type="button" class="btn btn-primary">
							提交更改
						</button>
					</div>
				</div>
			</div>-->
		</div>
	</body>
	<script type="text/javascript">
		var laytable = layui.use('table', function() {
			var table = layui.table;
			var tableInt = table.render({
				elem: '#test',
				id: 'idtest',
				cols: [
					[ //标题栏	
						{
							checkbox: true
						}, {
								field: 'id',
								title: 'ID',
								width: 60,
								sort: true
							}, {
								field: 'name',
								title: '姓名',
								width: 60,
								edit: 'text'
							}, {
								field: 'age',
								title: '年龄',
								width: 60,
								edit: 'text'
							}, {
								field: 'sex',
								title: '性别',
								width: 60,
								edit: 'text'
							}, {
								field: 'school',
								title: '院校',
								width: 80,
								edit: 'text'
							}, {
								field: 'major',
								title: '专业',
								width: 60,
								edit: 'text'
							}, {
								field: 'buildid',
								title: '宿舍楼',
								width: 80,
								edit: 'text'
							}, {
								field: 'dormid',
								title: '宿舍号',
								width: 80,
								edit: 'text'
							},{
								field: 'phone',
								title: '联系电话',
								width: 120,
								edit: 'text'
							},{
								field: 'address',
								title: '家庭住址',
								width: 180,
								edit: 'text'
							},{
								field: 'teacher',
								title: '辅导老师',
								width: 100,
								edit: 'text'
							},{
								field: 'familycontact',
								title: '家庭联系人',
								width: 120,
								edit: 'text'
							},{
								field: 'hometel',
								title: '家庭联系方式',
								width: 140,
								edit: 'text'
							},{
								field: 'teacherphone',
								title: '老师联系方式',
								width: 140,
								edit: 'text'
							}, {
							fixed: 'right',
							width: 150,
							align: 'center',
							toolbar: '#barDemo'
						}
					]
				],
				//limits:[1,2,3,9,12],
				//limit:12,
				height: 315,
				method: 'post',
				url: 'SelectStudentService',
				//page:true,
			});
			table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
				var data = obj.data; //获得当前行数据
				var layEvent = obj.event; //获得 lay-event 对应的值
				if(layEvent === 'del') { //删除
					layer.confirm('真的删除行么', function(index) {
						obj.del(); //删除对应行（tr）的DOM结构
						layer.close(index);
						//向服务端发送删除指令
						table.reload('idtest', {
							where: { //请求参数
								method: 'delete',
								data_id: data.id //这行的数据
							}
						});
					});
				}
				if(layEvent === 'edit') { //修改
					table.reload('idtest', {
						where: {
							method: 'update',
							id: data.id,
							name: data.name,
							age: data.age,
							sex: data.sex,
							school: data.school,
							major: data.major,
							buildid: data.buildid,
							dormid: data.dormid,
							phone: data.phone,
							address: data.address,
							teacher: data.teacher,
							hometel: data.hometel,
							familycontact: data.familycontact,
							teacherphone: data.teacherphone
						}
					});
					 obj.update({
						    id: data.id,
							name: data.name,
							age: data.age,
							sex: data.sex,
							school: data.school,
							major: data.major,
							buildid: data.buildid,
							dormid: data.dormid,
							phone: data.phone,
							address: data.address,
							teacher: data.teacher,
							hometel: data.hometel,
							familycontact: data.familycontact,
							teacherphone: data.teacherphone
					    }); 
				}

			});
		});
		$("#commit").click(function() {
			var sname = $("#name").val();
			var sid = $("#id").val();
			var smajor = $("#major").val();
			var sphone = $("#phone").val();
			alert(sid+""+sname+""+smajor+""+sphone);
			var laytable = layui.use('table', function() {
				var table = layui.table;
				var tableInt = table.render({
					elem: '#test',
					id: 'id_test',
					cols: [
						[ //标题栏					   
							{
								checkbox: true
							}, {
								field: 'id',
								title: 'ID',
								width: 80,
								sort: true
							}, {
								field: 'name',
								title: '姓名',
								width: 80,
								edit: 'text'
							}, {
								field: 'age',
								title: '年龄',
								width: 80,
								edit: 'text'
							}, {
								field: 'sex',
								title: '性别',
								width: 80,
								edit: 'text'
							}, {
								field: 'school',
								title: '院校',
								width: 120,
								edit: 'text'
							}, {
								field: 'major',
								title: '专业',
								width: 80,
								edit: 'text'
							}, {
								field: 'buildid',
								title: '宿舍楼',
								width: 80,
								edit: 'text'
							}, {
								field: 'dormid',
								title: '宿舍号',
								width: 80,
								edit: 'text'
							},{
								field: 'phone',
								title: '联系电话',
								width: 80,
								edit: 'text'
							},{
								field: 'address',
								title: '家庭住址',
								width: 200,
								edit: 'text'
							},{
								field: 'teacher',
								title: '辅导老师',
								width: 80,
								edit: 'text'
							},{
								field: 'familycontact',
								title: '家庭联系人',
								width: 80,
								edit: 'text'
							},{
								field: 'hometel',
								title: '家庭联系方式',
								width: 80,
								edit: 'text'
							},{
								field: 'teacherphone',
								title: '老师联系方式',
								width: 80,
								edit: 'text'
							},{
								fixed: 'right',
								width: 150,
								align: 'center',
								toolbar: '#barDemo'
							}
						]
					],
					limits: [1, 2, 3, 9, 12],
					limit: 12,
					height: 315,
					method: 'post',
					url: 'SelectStudentService',
					//page:true,
					where: {
						sid: sid,
						sname: sname,
						smajor: smajor,
						sphone: sphone
					}
				});
				/* table.on('tool(test)', function(obj) { //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"
					var data = obj.data; //获得当前行数据
					alert(data.id);
					var layEvent = obj.event; //获得 lay-event 对应的值
					if(layEvent === 'del') { //删除
						layer.confirm('真的删除行么', function(index) {
							obj.del(); //删除对应行（tr）的DOM结构
							layer.close(index);
							//向服务端发送删除指令
							table.reload('idtest', {
								where: { //请求参数
									method: 'delete',
									data_id: data.id //这行的数据
								}
							});
						});
					}
					if(layEvent === 'edit') { //修改
						table.reload('idtest', {
							where: {
								method: 'update',
								id: data.id,
								name: data.name,
								age: data.age,
								sex: data.sex,
								school: data.school,
								major: data.major,
								buildid: data.buildid,
								dormid: data.dormid,
								phone: data.phone,
								address: data.address,
								teacher: data.teacher,
								hometel: data.hometel,
								familycontact: data.familycontact,
								teacherphone: data.teacherphone
							}
						});
					}

				}); */

				/* table.reload('test', {
					  where: { //设定异步数据接口的额外参数，任意设
					    name: name,1d
					    author: author,
					    date:date,
					    type_name:type_name
					  }
					});*/

			});
			//location = "SelectCartoonService";

		})
		$("#reset").click(function() {
			$("#id").val("");
			$("#name").val("");
			$("#major").val("");
			$("#phone").val("");
			//location = "SelectCartoonService";

		})
		layui.use('laydate', function() {
			var laydate = layui.laydate;
			//执行一个laydate实例
			laydate.render({
				elem: '#startDate', //指定元素
				value: '2016-06-06'
			});
		});
	</script>

</html>
<script type="text/html" id="barDemo">
	<a class="layui-btn layui-btn-mini" lay-event="edit">编辑</a>
	<a class="layui-btn layui-btn-danger layui-btn-mini" lay-event="del">删除</a>
</script>