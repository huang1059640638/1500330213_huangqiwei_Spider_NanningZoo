<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
		<html>

		<head>
			<base href="<%=basePath%>">
			<title>南宁动物园图片</title>

			<meta http-equiv="pragma" content="no-cache">
			<meta http-equiv="cache-control" content="no-cache">
			<meta http-equiv="expires" content="0">
			<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
			<meta http-equiv="description" content="This is my page">
			<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->

			<!-- //for-mobile-apps -->
			<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic'
			 rel='stylesheet' type='text/css'>
			<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
			<script src="js/jquery-2.1.4.min.js"></script>
			<!-- font-awesome icons -->
			<link href="css/font-awesome.css" rel="stylesheet">
			<!-- //font-awesome icons -->
			<!-- script for close -->
			<script>
				$(document).ready(function (c) {
					$('.alert-close').on('click', function (c) {
						$('.vlcone').fadeOut('slow', function (c) {
							$('.vlcone').remove();
						});
					});
				});
			</script>
			<!-- //script for close -->
		</head>

		<body>
			

			<div align="center" id="img">
				<table>
					<tr>
						<th>
							<img src="images/2.jpg">
						</th>
					</tr>

					<tr>
						<th>
							<img src="images/3.jpg" />
						</th>
					</tr>

					<tr>
						<th>
							<img src="images/4.jpg" />
						</th>
					</tr>
					
					<tr>
						<th>
							<img src="images/6.jpg" />
						</th>
					</tr>
					
					<tr>
						<th>
							<img src="images/7.jpg" />
						</th>
					</tr>
					
						<tr>
						<th>
							<img src="images/8.jpg" />
						</th>
					</tr>
					
					<tr>
						<th>
							<img src="images/9.jpg" />
						</th>
					</tr>
				
					<tr>
						<th>
							<img src="images/10.jpg" />
						</th>
					</tr>
					
						<tr>
						<th>
							<img src="images/11.jpg" />
						</th>
					</tr>
					
						<tr>
						<th>
							<img src="images/12.jpg" />
						</th>
					</tr>
					
						<tr>
						<th>
							<img src="images/13.jpg" />
						</th>
					</tr>
					
						<tr>
						<th>
							<img src="images/14.jpg" />
						</th>
					</tr>
						<tr>
						<th>
							<img src="images/15.jpg" />
						</th>
					</tr>
						<tr>
						<th>
							<img src="images/16.jpg" />
						</th>
					</tr>	
				</table>
			</div>




			<div align="center" style="color:#FFFFFF">
				<br>
				<br>
				<br>
				<%
	out.print("数据查询成功，恭喜你!点击下面按钮返回首页。");
%>
			</div>
			<div class="w3ls-form">
				<form action="index.jsp" method="post">
					<button class="btn1" onclick="window.location.href = 'index.jsp'">
						<i class="fa fa-paper-plane" aria-hidden="true"></i>
					</button>
				</form>
			</div>
		</body>

		</html>