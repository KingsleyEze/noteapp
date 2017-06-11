<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InsightAfrica | Notes</title>
<link rel="stylesheet"
	href="<spring:url value="/assets/vendors/bootstrap/bootstrap.css"/>" />
<link rel="stylesheet" href="<spring:url value="/assets/css/base.css"/>" />
</head>
<body>

	<div class="container">

		<div class="row">

			<div class="col-md-6 col-md-offset-3 note">

				<div class="row" style="margin-top: 20px; margin-right: 10px;">
					<a href="<spring:url value="/create"/>"
						class="btn btn-danger pull-right">Create Note</a>
				</div>
				<div style="padding: 5px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th colspan="1">Title</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${notes}" var="note">
								<tr>
									<td><a href="<spring:url value="/view/${note.noteId}"/>">
											${note.title} </a></td>
									<td><a href="<spring:url value="edit?id=${note.noteId}"/>"
										class="btn btn-success">Edit</a> <a
										href="<spring:url value="delete?id=${note.noteId}"/>"
										class="btn btn-danger">Delete</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<spring:url value="/assets/vendors/bootstrap/bootstrap.min.js"/>"></script>
</body>
</html>