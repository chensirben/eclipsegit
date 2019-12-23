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
			$("#btn1").click(function (){
				$.get(
					"MyServlet1",
					{name:$("#txtName").val(),like:$("#txtLike").val()},
					function(data){
						document.writeln("服务器回传数据为："+data);
					}
				);
			});
		});
	</script>
</head>
<body>
	<p>姓名：<input type="text" id="txtName" />
	<p>爱好：<input type="text" id="txtLike" />
	<p><input type="button" id="btn1" value="异步提交给服务器" />
</body>
</html>