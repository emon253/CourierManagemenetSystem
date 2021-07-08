<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="domain.Admin"%>


<ul class="x xx ml-2">
	<%
	Admin admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
	%>
	<li class=""><a href="#">[<%=admin.getName()%>]
	</a></li>

	<li class="ml-4"><a href="<%=request.getContextPath()%>/logout?u=admin">log out </a></li>
	<%
	} else {
	response.sendRedirect("adminlogin.jsp");
	}
	%>
</ul>
