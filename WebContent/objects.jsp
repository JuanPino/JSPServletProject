<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 
String userName = request.getParameter("name");

if (userName != null) {
	session.setAttribute("sessionUserName", userName);
	//application.setAttribute("applicationUserName", userName);
	pageContext.setAttribute("pageContextUserName", userName);
	pageContext.setAttribute("applicationUserName", userName, PageContext.APPLICATION_SCOPE); // pass the APPLICATION_SCOPE to the set.Attribute, it is going to set applicationUserName as userName  
	pageContext.findAttribute("name"); //handy attribute if you need to get an attribute and you don't know the scope (e.g request, session, application or pagaeContext)  
}



%>
<br>
The user name in the request is: <%=userName %>
<br>
User name in the session object is: <%=session.getAttribute("sessionUserName") %>
<br>
User name in the application object is: <%=application.getAttribute("applicationUserName") %> 
<br>
User name in the page context object is: <%=pageContext.getAttribute("pageContextUserName") %> 

</body>
</html>