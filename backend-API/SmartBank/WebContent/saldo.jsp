<%@page import="control.ContaDAO"%>
<%@page import="model.Conexao"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Saldo</title>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">

<link rel="stylesheet" type="text/css" href="style.css">
<link
	href="https://fonts.googleapis.com/css?family=Fjalla+One&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
		HttpSession hs = request.getSession();
	%>

	<div class="header" style="height: 63px;">
		<nav class="navbar navbar-expand-"
			style="background-color: rgb(31, 31, 31);">
			<a class="navbar-brand" href="home.jsp">
				<h2>
					<img class="nav-item" src="img/logo.png" width="45px">SmartBank
				</h2>
			</a>
			<button class="navbar-toggler navbar-dark" data-toggle="collapse"
				data-target="#menu" aria-expanded="false">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="menu">
						<form action="servlet" method="post">
							<input type="hidden" name="tipo" value="8">
							<button class="btn text-white mr-3"
								style="background-color: transparent;">
								<img src="img/sair.png" height="30px"> SAIR
							</button>
						</form>
			</div>
		</nav>
	</div>
	</%
		String numeroConta = String.valueOf(hs.getAttribute("numeroConta"));
		ContaDAO cd = new ContaDAO();
		out.print(cd.saldo(numeroConta));
	%>
	<div id="cliente">
		<div class="card col-xl-4 col-6">
			<div class="card-body">
				<h2 class="text-center pt-4 pb-4"><img src="img/icon5.png"> SALDO</h2>
				<div class="card-header rounded">
					<h5 class="card-title">
						<img src="img/user.png" width="50px" class="mr-3"><%
							out.println(hs.getAttribute("numeroConta"));
						%>
						-
						<%
							out.println(hs.getAttribute("nome"));
						%>
					</h5>
				</div>
				<div class="card-body">

					<div class="card-text t">
						<ul>
							<li class="list-group-item">Data Nasc : </%
								out.println(hs.getAttribute("dataNasc"));
							%></li>
							<li class="list-group-item">Telefone : </%
								out.println(hs.getAttribute("telefone"));
							%></li>
							<li class="list-group-item">Endereço : </%
								out.println(hs.getAttribute("endereco"));
							%></li>
						</ul>
					</div>
					<div class="card-text t" style="text-align: center;">
						<h5></%
								out.print(cd.saldo(numeroConta));
							%/></h5>
					</div>
				</div>
			</div>
		</div>
	</div>
	 
</body>
</html>