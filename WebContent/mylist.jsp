<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import = "java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<br />
	<br />
	<br />
	<!-- create FORM -->
	<form action="mylist.jsp">
		Add new Item: <input type="text" name="items"> <input
			type="submit" value="Submit">
	</form>
	<!-- submit items  -->
	<%  //get session attribute the list
    	List<String> itemsEntered = (List<String>)session.getAttribute("itemsEnteredByFar");
    	//if does not exist, create it
    	if (itemsEntered == null){
    		itemsEntered = new ArrayList<String>();
    		session.setAttribute("itemsEnteredByFar", itemsEntered);
    	}
    	//add data to the list
    	String itemToAdd = request.getParameter("items");
    	if( itemToAdd!= null){
    		itemsEntered.add(itemToAdd);
    	}
    %>
	<br />
	<br />
	<br />
	<hr>
	<br />
	<br />
	<br /> Item entered:
	<!-- display items -->
	<ol>
		<%
            for (String tempItem:itemsEntered ){
            	out.println("<li>"+tempItem+"</li>");
            }
        %>
	</ol>

</body>
</html>