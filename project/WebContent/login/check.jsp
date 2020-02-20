<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		request.setCharacterEncoding("utf-8");
		String name=request.getParameter("uname");
		String pwd=request.getParameter("upwd");
		if(name.equals("zs")&&pwd.equals("abc")){
			//response.sendRedirect("success.jsp");//重定向会导致数据丢失
			request.getRequestDispatcher("success.jsp").forward(request,response);
		}else{
			out.println("error");
		}
	%>

</body>
</html>