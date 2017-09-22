
<html>
<body>
	<h3>Well confirmed your information</h3>
	Your name :
	<%= request.getParameter("firstname").toUpperCase() %>
	<%= request.getParameter("lastname").toUpperCase() %>
	<br /> Country:
	<%= request.getParameter("country") %><br /> Preferable language:
	<%= request.getParameter("preferlanguage") %>
	<br /> Acceptable languages:
		<!-- display  list create html dynamic -->
	<ul>		
		<%
		    String [] languages = request.getParameterValues("language");
			if (languages != null){
			    for (String language: languages){
			    	out.println("<li>"+language+"</li>");
			    }	
			}else{
				out.println("You did not choose any acceptable languages!");
			}

	    %>
	</ul>

</body>
</html>