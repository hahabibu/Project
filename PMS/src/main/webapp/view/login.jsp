<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>用户登录</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<%@ include file="/view/public/commons.jspf"%>
</head>
<body class="login-layout">


	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i> <span class="red">杭州归谷</span> <span
									class="white">教务管理</span>
							</h1>
							<h4 class="blue">刘老师</h4>
						</div>
						<div class="space-6"></div>
						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i> 请输入您的账号和密码
										</h4>

										<div class="space-6"></div>
										<form
											action="${pageContext.request.contextPath }/view/index.jsp"
											method="post" onsubmit="return check()">
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="userId" name="userId" type="text" class="form-control"
														placeholder="请输入账号" /> <i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														id="userPw" name="passWord" type="password"
														class="form-control" placeholder="请输入密码" /> <i
														class="icon-lock"></i>
												</span>
												</label>

												<div class="clearfix">


													<button type="submit"
														class="width-35 pull-right btn btn-sm btn-primary">
														<i class="icon-key"></i> 登陆
													</button>
												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>

									</div>

								</div>

							</div>


						</div>

					</div>
				</div>

			</div>
		</div>
	</div>

	<%
		String userId=request.getParameter("userId");
		String pdw=request.getParameter("passWord");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		//存储cookie
		Cookie cookie1 = new Cookie("user", userId);
		Cookie cookie2 = new Cookie("pwd", pdw);
		cookie1.setMaxAge(3600);
		cookie2.setMaxAge(3600);
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		response.getWriter().print("OK");
	%>
</body>
</html>