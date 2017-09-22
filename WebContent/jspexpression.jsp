<html>
<body>
<h3>
convert string to upper case <%= new String("Hello World!").toUpperCase()%>
<br /> <br />
25*4 = <%= 25 *4  %>
<br /> <br />
75 smaller than 49 ?  <%= (75 < 49) %>
<%
for (int i = 0; i < 5;  i++){
	out.println("<br/>i love jsp "+i);
}
%>
<%! String makeItLower(String data){
	return data.toLowerCase();
}
%>
<br/><br/>
HELLO to lower case <%=makeItLower("HELLO") %>
</h3>
</body>
</html>