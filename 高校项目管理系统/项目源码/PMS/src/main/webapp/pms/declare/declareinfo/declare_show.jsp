<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>首页</title>
	<!-- 引入相关的文件 -->
    <%@include file="/pms/public/commons.jspf"%>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">申报管理</a></li>
        <li>申报详情</li>
    </ul>
</div>
<div class="row alert alert-info"  style="margin:0px; padding:3px;" >
	<!--<form class="form-horizontal">
		<div class="col-sm-2">记录类型</div>
	    <div class="col-sm-3">
	    	<input type="text"  class="form-control input-sm"/>
	    </div>
	    <input type="button"   class="btn btn-danger"   value="查询"/>
    </form>-->
</div>

<script type="text/javascript">
	function addMore(){
		// 获取当前的父标签
		var td = document.getElementById("upload");
		// 定义要新建的标签
		var br = document.createElement("br");
		var input = document.createElement("input");
		input.type="file";
		input.name="file";
		var button = document.createElement("input");
		button.type="button";
		button.value="remove";
		button.onclick=function removeElement(){
			// 移除
			td.removeChild(br);
			td.removeChild(input);
			td.removeChild(button);
		}
		// 将标签进行添加
		td.appendChild(br);
		td.appendChild(input)
		td.appendChild(button);
	}
</script>
						
<div class="row" style="padding:15px; padding-top:0px; ">
	
	<form action="" method="post" name="form1" class="form-horizontal">
			<table class="table table-bordered table-striped table-hover" align="center">
				<tr class="text-center">
					<th colspan="4">项目申报表</th>
				</tr>
				
				<tr>
					<td>项目名称</td>
					<td colspan="3"><input type="text" name="username"/></td>
				</tr>
				
				<tr>
					<td>负责人</td>
					<td><input type="password" name="pwd"/></td>
					<td>所属专业</td>
					<td><input type="password" name="pwd"/></td>
					
				</tr>
				
				<tr>
					<td>联系方式</td>
					<td><input type="password" name="pwd"/></td>
					<td>电子邮箱</td>
					<td><input type="password" name="pwd"/></td>
				</tr>
				
				<tr>
					<td>申报级别</td>
					<td colspan="3">
						<!--<input type="radio" name="sex" value="male"checked="checked"/>男
						<input type="radio" name="sex" value="female" />女-->
						<select>
							<option value="">校级</option>
							<option value="">院级</option>
						</select>
					</td>
				</tr>
				
				<tr>
					<td>项目成员（全体）</td>
					<td colspan="3">
						<textarea rows="5" cols="75">hhhhh</textarea>						
					</td>
				</tr>
				
				<tr>
					<td colspan="4">项目内容（附件资料）</td>
				</tr>
				
				<tr>
					<!--<form action="${pageContext.request.contextPath }/FileUploadServletDemo2" method="post" enctype="multipart/form-data">-->
					<td colspan="4" id="upload">
						<input type="file" name="file" />
						<button type="button" onclick="addMore()">上传更多</button>
					</td>
					<!--</form>-->
				</tr>
				
				<tr>
					<td colspan="4">立项承诺</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<input type="submit" class="btn btn-grey" value="保存"/>
					</td>
					<td colspan="2">
						<input type="submit" class="btn btn-success" value="提交"/>
					</td>
				</tr>
				
			</table>
		</form>
</div>
</body>
</html>
