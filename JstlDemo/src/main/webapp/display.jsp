<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/ecole?zeroDateTimeBehavior=CONVERT_TO_NULL&serverTimezone=UTC" user="root" password="root"/>

	<sql:query var="rs" dataSource="${db}">select * from etudiant</sql:query>
	
	<c:forEach items="${rs.rows}" var="row">
		<c:out value="${row.PrenomEtudiant}"></c:out> : <c:out value="${row.NomEtudiant}"></c:out>  
	</c:forEach>
</body>
</html>