<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Setting confirmation</title>
</head>
<%
   String data= request.getParameter("preferableLanguage");
   String cookieName = "preferableLanguage";
   Cookie cookie = new Cookie(cookieName, data);
   cookie.setMaxAge(60*60*24);
   response.addCookie(cookie);
%>
<body>
Thanks for setting your preferable language to : ${param.preferableLanguage}
<br/>
<a href = "cookie-person-homepage.jsp">Return to home page</a>

</body>
</html>