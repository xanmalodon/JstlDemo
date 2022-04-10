<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
	
	<c:set var="str" value="Louis code en ce moment"></c:set>
	Lenght : ${fn:length(str)}
	
	<c:forEach items="${fn:split(str,' ')}" var="s">
		<br/> ${s}
	</c:forEach>
	
	<c:forEach items="${fn:split(str,'e')}" var="s">
		<br/> ${s}
	</c:forEach>
	
	<br/>
	
	<c:set var="str1" value="Louis code en ce moment"></c:set>
	
	index : ${fn:indexOf(str1,"is")}
	
	<c:set var="str2" value="Louis code en ce moment"></c:set>
	
	is there java in the sentence ? : ${fn:contains(str2,"java")}
	
	<c:if test="${fn:contains(str2,'ce')}">
		ce est dans la phrase
	</c:if>
	
	<c:if test="${fn:endsWith(str2,'ce')}">
		ce termine la phrase
	</c:if>
	
<%-- 	${fn:escapeXml() } --%>
<%--  	${fn:containsIgnoreCase() } --%>
<%--  	${fn:join() } --%>
<%--  	${fn:trim() } --%>
<table>
  <tr>
    <th>Column 1 Heading</th>
    <th>Column 2 Heading</th>
  </tr>
  <tr>
    <td>Row 1: Col 1</td>
    <td>Row 1: Col 2</td>
  </tr>
</table>
<br>
<datalist></datalist>
<keygen>
 	

</body>
</html>