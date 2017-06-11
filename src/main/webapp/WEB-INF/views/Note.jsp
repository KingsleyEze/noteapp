<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>InsightAfrica | Note</title>
<link rel="stylesheet"
	href="<spring:url value="/assets/vendors/bootstrap/bootstrap.css"/>" />
<link rel="stylesheet" href="<spring:url value="/assets/css/base.css"/>" />
</head>
<body>
	
	<div class="container">
		<div class="row">
			
			<div class="col-md-6 col-md-offset-3 note">
			
				<div style="padding:10px;">
				<div class="form-group">
					<h1>${note.title}</h1>
				</div>
				<div class="form-group">
					<label for="note">Note:</label><br/>
					<p>${note.content}</p>
				</div>
				<div class="row">
				<a class="btn btn-danger btn-lg" style="margin-left:10px; margin-bottom:15px; padding:0 10px;" href="javascript:history.back()"><i class="fa fa-chevron-circle-left"></i> Back</a>
				</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="<spring:url value="/assets/vendors/bootstrap/bootstrap.min.js"/>"></script>
</body>
</html>