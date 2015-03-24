<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java and JSP</title>
</head>
<body>

<h3>Testing JSPs


<%! // tag use to declare a method that is available to all script tags

public int add (int a, int b) {
	return a+b;
} 



%>
	
<%  // tag use to execute code 
	
	int i = 1;
	int j = 2;
	int k;
	
	k = i + j;
	
	
	
%>
The value of k is: <%=1 + 2 %>!!

<% 
k=add(234554, 987678 );

%>

<br>

The value of k is: <%=k %>!!

<% for (i=0; i<5; i++){ 
%>
	<br> The new value of i = <%=i %>
<%} %>

</h3>


</body>
</html>