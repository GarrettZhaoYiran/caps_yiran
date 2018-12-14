<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value='/css/style.css'/>" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<h1>This is New Academic Time Page</h1>
	<form:form action="${pageContext.request.contextPath}/academic/new.html" method="POST" modelAttribute="Academictime">
		<center>
			<table cellpadding=4 cellspacing=2 border=0>
					<th width="45%">Description</th>
					<th width="55%">Detail</th>	

			<tr>
				   <td><s:message code="Year" /></td>
				   <td><form:input path="year"/>
				   <form:errors path="year" cssStyle="color: red;" /></td>
			</tr>
			
				<tr>
					<td><s:message code="Term1 StartDate" /></td>
					<td><form:input size="20" path="term1RegStartDate" type="datetime"
							id="datepicker1" /> <form:errors path="term1RegStartDate"
							cssStyle="color: red;" /></td>
				</tr>

				<tr>
					<td><s:message code="Term1 EndDate" /></td>
					<td><form:input size="20" path="term1RegEndDate" type="datetime"
							id="datepicker2" /> <form:errors path="term1RegEndDate"
							cssStyle="color: red;" /></td>
				</tr>

				<tr>
					<td><s:message code="Term1 ExamDate" /></td>
					<td><form:input size="20" path="term1ExmResRlsDate"
							type="datetime" id="datepicker2" /> <form:errors
							path="term1ExmResRlsDate" cssStyle="color: red;" /></td>
				</tr>
				<tr>
					<td><s:message code="Term2 StartDate" /></td>
					<td><form:input size="20" path="term2RegStartDate" type="datetime"
							id="datepicker1" /> <form:errors path="term2RegStartDate"
							cssStyle="color: red;" /></td>
				</tr>

				<tr>
					<td><s:message code="Term2 EndDate" /></td>
					<td><form:input size="20" path="term2RegEndDate" type="datetime"
							id="datepicker2" /> <form:errors path="term2RegEndDate"
							cssStyle="color: red;" /></td>
				</tr>

				<tr>
					<td><s:message code="Term2 ExamDate" /></td>
					<td><form:input size="20" path="term2ExmResRlsDate"
							type="datetime" id="datepicker2" /> <form:errors
							path="term2ExmResRlsDate" cssStyle="color: red;" /></td>
				</tr>
			<tr>
				<td><input type="submit" value="Submit"> </td>
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>	
		</center>			
			
	</form:form>
	
</body>
</html>