<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="domain.Employee"%>


<ul class="x xx ml-2">
	<%
	Employee employee = (Employee) session.getAttribute("admin");
	if (employee != null) {
	%>
	<li class=""><a href="WorkerProfileDetails.jsp">[<%=employee.getName()%>]
	</a></li>

	<li class="ml-4"><a href="<%=request.getContextPath()%>/logout?u=admin">log out </a></li>
	<%
	} else {
	response.sendRedirect("adminlogin.jsp");
	}
	%>
</ul>
