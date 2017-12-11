<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
		<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
		<title>Witaj</title>
	</head>
	<body>
		<section>
			<div class="jumbotron">
				<c:url var="logoutUrl" value="/j_spring_security_logout"/> 
					<form action="${logoutUrl}" method="post"> 
						<button type="submit" class="btn btn-danger btn-mini pull-right">Wyloguj się</button> 
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					</form>
			</div>
		</section>
		<section class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
		
					<div class="panel panel-default">
						<div class="panel-body">
							<a href="admin/usersList" class="btn btn-info btn-md btn-block">Zarządzaj użytkownikami</a>
							<a href="admin/realTeams" class="btn btn-info btn-md btn-block">Zarządzaj drużynami</a>
							<a href="admin/players/1" class="btn btn-info btn-md btn-block">Zarządzaj zawodnikami</a>
							<a href="admin/matches/1" class="btn btn-info btn-md btn-block">Zarządzaj meczami</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>