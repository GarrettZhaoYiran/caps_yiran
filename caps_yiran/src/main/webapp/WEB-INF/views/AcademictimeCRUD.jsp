<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/admin/academic/new">Add Academic Time</a>
	<c:if test="${fn:length(Academictime) gt 0}">
	<table>
		<tr>

				<td>Year</td><td></td><td></td>
				<td>Term1StartDate</td><td></td>
				<td>term1EndDate</td><td></td>
				<td>Term1ExamDate</td><td></td>
				<td>Term2StartDate</td><td></td>
				<td>Term2EndDate</td><td></td>
				<td>Term2ExamDate</td><td></td>
				<td>EDIT</td>
				<td>DELETE</td>

		</tr>
		<td></td>
		<c:forEach items = "${Academictime}" var="a" varStatus="index">
			<tr>
				<td>${a.year}</td><td></td><td></td>
				<td>${a.term1RegStartDate}</td><td></td>
				<td>${a.term1RegEndDate}</td><td></td>
				<td>${a.term1ExmResRlsDate}</td><td></td>
				<td>${a.term2RegStartDate}</td><td></td>
				<td>${a.term2RegEndDate}</td><td></td>
				<td>${a.term2ExmResRlsDate}</td><td></td>
				
				<td><a href="${pageContext.request.contextPath}/admin/academic/edit/${a.year}">Edit</a></td>
				<td><a href="${pageContext.request.contextPath}/admin/academic/delete/${a.year}">Delete</a></td>
			</tr>
		</c:forEach>
	
	</table>
	</c:if>
</body>
</html>