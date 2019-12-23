<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	<script src="static/js/jquery-1.9.1.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#customers").change(function (){
				$.ajax({
					type:"POST",
				    url:"MyServlet2",
				    data:{id:$("#customers").val()},
				    dataType:"text",
				    success:function(rs){
				    	$("#info").html(rs);
				    }
				});
			});
		});
	</script>
</head>
<body>
	<p>请选择一位客户：
	<select id="customers">
		<option value="1001">1001</option>
		<option value="1002">1002</option>
		<option value="1003">1003</option>
		<option value="1004">1004</option>
	</select>
	<div id="info">客户信息将在此处列出 ...</div>
</body>
</html>