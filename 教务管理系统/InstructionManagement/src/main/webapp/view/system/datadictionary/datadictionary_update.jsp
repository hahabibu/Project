<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<%@ include file="/view/public/commons.jspf" %>
</head>

<body>
<div style="padding:0px; margin:0px;">
 <ul class="breadcrumb" style="  margin:0px; " >
    	<li><a href="#">系统管理</a></li>
        <li>数据字典</li>
        <li>修改信息</li>
    </ul>
</div>

<form action="${pageContext.request.contextPath }/system/datadictionary/updateDataDictionary.action" class="form-horizontal">

    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">基本信息</h5>
	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-9">
                	<input type="text" value="${dataDictionary.dataId}" name="dataId" class="form-control input-sm" readonly="readonly" />
                </div>
            </div>
        
        </div>
        <div class="col-sm-5">
            <div class="form-group">
            	<label class="col-sm-3 control-label">名称</label>
                <div class="col-sm-9">
                	<input type="text" value="${dataDictionary.dataContent}" name="dataContent" class="form-control input-sm" />
                </div>
            </div>
        </div>

    </div>
    	<div class="row">
    	<div class="col-sm-5">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">类型</label>
                <div class="col-sm-9">
                	<input type="text" value="${dataDictionary.dataType}" name="dataType" class="form-control input-sm" />
                </div>
            </div>
        
        </div>


    </div>
    <h5 class="page-header alert-info" style="padding:10px; margin:0px; margin-bottom:5px;">描述信息</h5>
    	<div class="row">
    	<div class="col-sm-10">
        	<div class="form-group">
            	<label class="col-sm-3 control-label">描述</label>
                <div class="col-sm-9">
                	<textarea class="form-control" name="dataDesc">${dataDictionary.dataDesc}</textarea>
                </div>
            </div>
        
        </div>

    </div>
 
   	<div class="row">
    	<div class="col-sm-3 col-sm-offset-4">
        	<input  type="submit" class="btn btn-success" value="保存"/>
            <input  type="reset" class="btn  btn-danger" value="取消"/>
        </div>
    </div>
</form>

</body>
</html>