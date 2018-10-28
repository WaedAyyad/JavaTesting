<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>First JSP Page</title>
</head>
<body>

	<%--The First JSP Tutorial  --%>
	<%
		String name = request.getParameter("name");
	%>
	<h1>
		Welcome, User
		<%
		out.println(name);
	%>
	</h1>

	<table border=1>

		<%
			for (int i = 0; i < 5; i++) {
		%>

		<tr>
			<td>Number</td>
			<td><%=i + 1%></td>
		</tr>

		<%
			}
		%>



	</table>

	<%
		if (false) {
	%>
	<p>Hello World</p>
	<%
		} else {
	%>

	<p>Good Bye!!!!</p>
	<%
		}
	%>


	<%!int count = 3;

	int getCount() {

		System.out.println("FROM GETCOUNT METHOD");

		return count;
	}%>
	<h3>
		Declaration inside JSP :
		<%
		out.println(getCount());
	%>
	</h3>
</body>
</html>