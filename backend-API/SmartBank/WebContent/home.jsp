<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="control.ContaDAO"%>
<%@page import="model.Conexao"%>
<%@page import="org.json.JSONArray"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="org.json.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

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
<script type="text/javascript" src="script.js"></script>
</head>
<body
	<%if (session.getAttribute("msg") != null) {
				out.print("onload=\"alerta(" + session.getAttribute("codErro") + ",'" + session.getAttribute("msg")
						+ "');\"");
				session.removeAttribute("codErro");
				session.removeAttribute("msg");
			}%>>
	<%
		HttpSession hs = request.getSession();
	%>

	<div class="header" style="height: 63px;">
		<nav class="navbar navbar-expand"
			style="background-color: rgb(31, 31, 31);">
			<a class="navbar-brand" href="home.jsp">
				<h2>
					<img class="nav-item" src="img/logo.png" width="45px">SmartBank
				</h2>
			</a>
			<div class="collapse navbar-collapse justify-content-end">
				<ul class="navbar-nav ">
					<li class="nav-item pt-0">
						<form action="servlet" method="post">
							<input type="hidden" name="tipo" value="8">
							<button class="btn text-white mr-3"
								style="background-color: transparent;">
								<img src="img/sair.png" height="30px"> SAIR
							</button>
						</form>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<%
		String numeroConta = String.valueOf(hs.getAttribute("numeroConta"));
		ContaDAO cd = new ContaDAO();
	%>
	<div class="content col-xl-8 col-10 center">
		<div class="card-deck mt-5" id="vitrine-cli">
			<div class="card">
				<div class="card-header"> 
					<h5 class="card-title">
						<img src="img/user.png" width="50px" class="mr-3">
						<%
							out.println(hs.getAttribute("numeroConta"));
						%>
						-
						<%
							out.println(hs.getAttribute("nome"));
						%>
					</h5>
				</div>
				<div class="card-body">

					<div class="card-text">
						<ul style="list-style: none;">
							<li>Data Nasc : <%
								out.println(hs.getAttribute("dataNasc"));
							%></li>
							<li>Telefone : <%
								out.println(hs.getAttribute("telefone"));
							%></li>
							<li>Endereço : <%
								out.println(hs.getAttribute("endereco"));
							%></li>
						</ul>
					</div>
					<div class="card-text" style="text-align: right;">
						<h5>
							<%
								out.print("R$"+cd.saldo(numeroConta));
							%>
						</h5>
					</div>
				</div>
			</div>
		</div>
		<div class="card-deck mt-5" id="vitrine-cli">
			<div class="card pr-0 pl-0">
				<div class="card-header">
					<img src="img/codigo-de-barras.png" height="64px">
				</div>
				<div class="card-body">
					<h5 class="card-title">Boleto</h5>
					<p class="card-text">Acesse para realizar o pagamentos de boletos.</p>
					<a href="boleto.jsp" class="btn btn-primary">Acesse</a>
				</div>
			</div>
			<div class="card pr-0 pl-0">
				<div class="card-header">
					<img src="img/icon2.png">
				</div>
				<div class="card-body">
					<h5 class="card-title">Pagamentos</h5>
					<p class="card-text">Acesse para realizar pagamentos.</p>
					<a href="debito.jsp" class="btn btn-primary">Acesse</a>
				</div>
			</div>
			<div class="card pr-0 pl-0">
				<div class="card-header">
					<img src="img/icon2.png">
				</div>
				<div class="card-body">
					<h5 class="card-title">Depósito</h5>
					<p class="card-text">Acesse para saber as fucionalidades do
						depósito.</p>
					<a href="credito.jsp" class="btn btn-primary">Acesse</a>
				</div>
			</div>
		</div>

		<div class="card-deck mt-5" id="vitrine-cli">
			<div class="card pr-0 pl-0">
				<div class="card-header">
					<img src="img/icons8-embaralhar-64.png">
				</div>
				<div class="card-body">
					<h5 class="card-title">Transferência</h5>
					<p class="card-text">Acesse para obter informações da
						transferência.</p>
					<a href="transferencia.jsp" class="btn btn-primary">Acesse</a>
				</div>
			</div>
			<div class="card pr-0 pl-0">
				<div class="card-header">
					<img src="img/extrato.png">
				</div>
				<div class="card-body">
					<h5 class="card-title">Extrato</h5>
					<p class="card-text">Acesse seu extrato.</p>
					<a href="extrato.jsp" class="btn btn-primary">Acesse</a>
				</div>
			</div>
		</div>
	</div>
	<footer class="rodape mt-4" style="position: absolute; top:100%;">
		<p class="text-white text-center m-0 p-2">©2019 SmartBank Brasil</p>
	</footer>
</body>
</html>