<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
		<%
			request.setCharacterEncoding("utf-8");//设置请求的编码
			String name =request.getParameter("uname");
			int age=Integer.parseInt(request.getParameter("uage"));
			String pwd =request.getParameter("upwd");
			String [] hobbies= request.getParameterValues("uhobbies");
		%>
		
		注册成功，信息如下：<br />
		姓名：<%=name %><br />
		年龄：<%=age %><br />
		密码：<%=pwd %><br />
		爱好：<br />
		<%
			for(String hobby:hobbies){
				out.print(hobby+"&nbsp;");
			}
		%>
		
		
</body>
</html>