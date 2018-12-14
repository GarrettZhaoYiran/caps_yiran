<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<html>
<head>
</head>
<body>

	<a href="${pageContext.request.contextPath}/admin/lecturer/create">Add
		Course to change</a>
	<div class="container">
		<div class="row" style="color: black;">
			<div class="col-xs-12">
				<h1>Lecturer Management</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<c:if test="${fn:length(lecturers) gt 0}">
				
						<table class="table table-striped table-bordered"
							style="width: 100%" id="courseDetails">
							<thead>
								<tr>
									<td>LecturerID</td>
									<td>CourseIndex</td>
									<td>FirstMidName</td>
									<td>LastName</td>
									<td>Phone</td>
									<td>Email</td>
									<td>Action</td>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="l" items="${lecturers}" varStatus="status">
									<tr class="${status.index%2==0?'even':'odd'}">
									<tr>
										<td>${l.id.getLecturerID()}</td>
										<td>${l.id.getCourseIndex()}</td>
										<td>${Users[status.index].getFirstMidName()}</td>
										<td>${Users[status.index].getLastName()}</td>
										<td>${Users[status.index].getPhone()}</td>
										<td>${Users[status.index].getEmail()}</td>
										<td align="center"><a
											href="${pageContext.request.contextPath}/admin/lecturer/edit/${l.id.getLecturerID()}">Edit</a>
										</td>


									</tr>
									<%-- 			<td>
				<button onclick = "window.location = '${pageContext.request.contextPath}/admin/course/students/${Course.courseIndex}.html'">view course</button>
				</td>
				</tr> --%>
								</c:forEach>
							</tbody>
							<%-- 		<table class="cell-border" style="width: 100%" id="courseDetails">
		<tr>
				<td>Lastname</td>
				<td>Firstname</td>
				<td>Phone</td>
				<td>Email</td>
		</tr>
		<c:forEach var="u" items="${User}" varStatus="status">
			<tr class="${status.index%2==0?'even':'odd'}">
				<tr>
				<td>${u.firstMidName}</td>
				<td>${u.lastName}</td>
				<td>${u.phone}</td>
				<td>${u.email}</td>
				</tr>
			 	<td align="center"><a href="${pageContext.request.contextPath}/admin/lecturer/edit/${lecturer_LecturerID}.html">
						<s:message code="edit" />
				</a></td>
				<td><a
					href="${pageContext.request.contextPath}/admin/course/delete/${lecturer_LecturerID}.html">
						<s:message code="delete" /> 
				</a></td>
				<td>
				<button onclick = "window.location = '${pageContext.request.contextPath}/admin/course/students/${Course.courseIndex}.html'">view course</button>
				</td>
				</tr>
		</c:forEach> --%>

						</table>
						</c:if>
					</div>
					
			</div>
			
		</div>

	<script
		src="<c:url value='/js/DataTables/jQuery-3.3.1/jquery-3.3.1.min.js'/>"
		type="text/javascript"></script>
	<script src="<c:url value='/js/DataTables/datatables.min.js'/>"
		type="text/javascript"></script>

	<script>
		$(document).ready(function() {
			$('#selectedCourseView').DataTable();
		});
	</script>


</body>
</html>