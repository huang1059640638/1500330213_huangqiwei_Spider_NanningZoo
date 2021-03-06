	<!--
	景点简介界面
	-->
<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%> 
<%@ page contentType="text/html;charset=utf-8"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Nanning Zoo Introduction</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	  <!-- //for-mobile-apps -->
	<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome icons -->
	<!-- script for close -->
	<script>
		$(document).ready(function(c) {
			$('.alert-close').on('click', function(c) {
				$('.vlcone').fadeOut('slow', function(c) {
					$('.vlcone').remove();
				});
			});
		});
	</script>
	<!-- //script for close -->


<style type="text/css">
table {  
    border: 2px #CCCCCC solid;  
    width: 800px;  
    margin:auto;
    color: white;
}  
  
td,th {  
    height: 30px;  
    border: #CCCCCC 1px solid;
    text-align:center;
}  
</style>
	</head>
  
	<body>
	
	<!-- 调用谷歌翻译，翻译整个网页 -->
  		<div id="google_translate_element"></div>
  		<script type="text/javascript">
			function googleTranslateElementInit() {
  				new google.translate.TranslateElement({pageLanguage: 'zh-CN', includedLanguages: 'en'}, 'google_translate_element');
			}
		</script>
		<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit">
		</script>
        
    <%  
        //驱动程序名   
        String driverName = "com.mysql.jdbc.Driver";  
        //数据库用户名   
        String userName = "root";  
        //密码   
        String userPasswd = "huangqiwei";  
        //数据库名   
        String dbName = "spider_data";  
        //表名   
        String tableName = "spider_information";  
        //联结字符串   
        String url = "jdbc:mysql://localhost:3306/" + dbName + "?user="  
                + userName + "&password=" + userPasswd;  
        Class.forName("com.mysql.jdbc.Driver").newInstance();  
        Connection connection = DriverManager.getConnection(url);  
        Statement statement = connection.createStatement();  
        String sql = "SELECT * FROM " + tableName;  
        ResultSet rs = statement.executeQuery(sql);  
    %>  
    <br>  
    <br>  
    <div align="center">  
    <table >  
        <%  
            while (rs.next()) {  
        %>  
        <tr>   
            <th>  
                <%  
                    out.print(rs.getString(2));  
                %>   
            </th>
        </tr> 
        <tr>   
            <td>  
                <%  
                    out.print(rs.getString(7));  
                %>  
            </td>  
        </tr>  
        <%  
           break; }  
        %>  
    </table>  
    </div>
    
        <div align="center" style="color:#FFFFFF">  
        <br> 
        <br>
        <iframe name="weather_inc" src="http://i.tianqi.com/index.php?c=code&id=64" width="540" height="291" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"></iframe>
        <br> 
        <br> 
        <br>  
        <%  
            out.print("Data query success, congratulations! Click the button below to return home.");  
        %>  
      </div>  
    <div class="w3ls-form">
			<form action="index.jsp" method="post">
				<button class="btn1" onclick="window.location.href = 'index.jsp'"><i class="fa fa-paper-plane" aria-hidden="true"></i></button>
			</form>
		</div>
	</body>
</html>
