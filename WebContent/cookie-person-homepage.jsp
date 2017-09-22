<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cookie home page</title>
</head>
<body>
<%
 String defaultLang = "Java";

Cookie [] cookies = request.getCookies();
if (cookies != null){
	for (Cookie temp : cookies){
		if (temp.getName().equals("preferableLanguage")){
			defaultLang = temp.getValue();
			break;
		}
	}
}

%>
	<!-- show personalize page according to the cookie -->
	<h3>
		New books for
		<%=defaultLang %></h3>
	<ul>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
		<li>blah blah blah</li>
	</ul>
	<br/>
	<h3>
		Hot jobs for
		<%=defaultLang%></h3>
	<ul>
		<li>blah blah blah blah</li>
		<li>blah blah blah blah</li>
		<li>blah blah blah blah</li>
		<li>blah blah blah blah</li>
	</ul>
	<a href  = "cookie-personalize.html"> Change my preferable language setting</a>
</body>
</html>