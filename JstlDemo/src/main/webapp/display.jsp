<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- affiche le hashcode -->
<%-- 	<c:out value="${student}" /> --%>
	<c:out value="${student.name}"/>
<!-- 	si on ne met pas les getters et setters dans le bean ca ne fonctionne pas -->
	
<%-- 	<c:catch></c:catch> --%>
<%-- 	<c:import url="http://www.telusko.com/online.htm "></c:import> --%>
<%-- 	<c:set ></c:set> --%>

	<br/>

	<c:forEach items="${studs}" var="s">
		${s.name} <br/>
	</c:forEach>
</body>
</html>