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
        <li>申报入口</li>
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

 <div class="media">
    <!--<div class="media-left media-middle">
      <img src="http://static.runoob.com/images/mix/img_avatar.png" class="media-object" style="width:80px">
    </div>-->
    <div class="media-body">
      <h4 class="media-heading">申报须知</h4>
      	<pre>
	（一）申报主体 
		高校教学项目的申报主体是普通本科高等学校和军队高等教育院校中的本科以上高校。
	（二）申报材料
		1.《高校教学项目申报表》（简称申报表/申报书）
		2.申报内容应包括教学项目基本情况、教学过程、实验要求等。
	（三）申报程序
		1、平台用户在规定的时间期限内，填写项目内容并上传申报书电子版。项目信息包括，申报级别（校级一类、校级二类）、项目名称、负责人（默认登录用户）、
		手机号码、电子邮件、所属专业、项目成员（多个）、立项承诺等，填写完上述信息后，负责人还需上传申报书电子版。填写完的信息可以保存，也可以直接提交。
		2、管理人员对已提交的项目进行初步审核，初审通过后，修改项目状态为初审通过；
		3、对初审通过后的项目进行专家分配，分配完成后，项目记录状态变为立项评审中；
		4、专家用户登录平台，审核分配给自己的项目记录，进行打分和填写评语，所有专家都评审完成后，项目状态自动变更为立项评审完成；
		5、管理人员根据专家评审的结果确认那些项目适合立项，确认立项的项目状态修改为已立项、其它的设置为不立项；
	（四）申报注意事项
		1.申报的教学项目应为高校开展教学的基本单元，符合教学项目的要求。
		2.申报的教学项目应坚持“能实不虚”，支撑学生综合能力培养，至少满足2个课时的实验教学需求，学生实际参与的交互性实验操作步骤须不少于10步。
		3.申报的教学项目应确保符合相关知识产权法律法规，可以完全对外公开服务。
		4.申报的教学项目有效链接网址应直接指向实验项目，且保持链接畅通；应确保所承诺的并发数以内网络实验请求及时响应和对超过并发数的实验请求提供排队提示服务。
	（五）申报材料公示
		1.申报主体在确定拟申报的教学项目前，需在校内进行公示，并审核教学项目的内容是否符合申报要求和注意事项、是否违反相关法律法规和教学纪律要求等。
		2.教育部将对申报材料进行公示，公开接受高校和社会的监督。申报材料公示期间，发现并查实申报材料有信息、数据等造假、违法违规行为，将终止该实验教学项目
		的本次认定工作，并对相应申报主体或推荐主体今后的申报推荐行为进行适当限制。
		</pre>

      </div>
  </div>


<div class="row" style="padding:15px; padding-top:0px; ">
	<input type="checkbox">我已详细阅读该申报规则</input>
	<a class="btn btn-success" onclick="check()" href="${pageContext.request.contextPath }/declare/declareinfo/addItemInfoUI.action">申报入口</a>
</div>
<script type="text/javascript">
	function check(){
		var check = document.getElementsByTagName('input')[0];
		alert(check);
		console.log(check.checked);//false     
		if(!check){
			alert('请仔细阅读申报规则！');
			return false;
		}
		return true;
	}
</script>

</body>
</html>