<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InsightAfrica | Create Note</title>
<link rel="stylesheet"
	href="<spring:url value="/assets/vendors/bootstrap/bootstrap.css"/>" />
<link rel="stylesheet" href="<spring:url value="/assets/css/base.css"/>" />
</head>
<body>
	<spring:url value="/save" var="formUrl" />
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-3 note">

				<form:form action="${formUrl}" method="post" modelAttribute="note" id="noteForm" cssStyle="margin:10px 0 20px 0;">
				<form:hidden path="noteId"/>
					<div class="form-group">
						<label>Title:</label>
						<form:input path="title" cssClass="form-control" required="required"/>
					</div>
					<div class="form-group">
						<label>Note:</label>
						<form:textarea path="content" cssClass="form-control" rows="10" required="required"/>
					</div>
					<a class="btn btn-warning" href="javascript:history.back()"><i class="fa fa-chevron-circle-left"></i> Cancel</a>
					<button type="submit" class="btn btn-success pull-right">Save</button>
				</form:form>
			</div>
		</div>
	</div>

	<script type="text/javascript"
		src="<spring:url value="/assets/vendors/jquery/jquery-1.11.1.js"/>"></script>
		<script type="text/javascript"
		src="<spring:url value="/assets/vendors/bootstrap/bootstrap.min.js"/>">
		</script>
		<script type="text/javascript"
		src="<spring:url value="/assets/vendors/jquery/jquery.validate.js"/>"></script>
		<script type="text/javascript"
		src="<spring:url value="/assets/js/base.js"/>"></script>
</body>
</html>