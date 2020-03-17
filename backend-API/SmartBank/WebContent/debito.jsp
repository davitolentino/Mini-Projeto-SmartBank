<%@page import="model.Conexao"%>
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
<title>D�bito</title>

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

<style>

</style>
</head>
<body
	<%if (session.getAttribute("msg") != null) {
				out.print("onload=\"alerta(" + session.getAttribute("codErro") + ",'" + session.getAttribute("msg")
						+ "');\"");
				session.removeAttribute("codErro");
				session.removeAttribute("msg");
			}%>>
	<div class="header" style="height: 63px;">
		<nav class="navbar navbar-expand"
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
	
	<div id="cliente" class="row">
		<div class="card col-xl-4 col-10 ml-lg-5 ml-0">
			<div class="card-body text-center">
				<form method="post" action="servlet">
					<h2 class="text-center pt-4 pb-4">
						<img src="img/icon3.png"> PAGAMENTO DE CONTAS
					</h2>
					<input type="hidden" name="tipo" value="3">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">Valor:</span>
						</div>
						<input type="number" class="form-control" name="valor" min="0" max="99999999.99" autocomplete="off">
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">Descri��o:</span>
						</div>
						<input type="text" class="form-control" name="descricao"
							autocomplete="off">
					</div>
					<div class="container-fluid mt-5 ml-0 mr-0 p-0">
						<button class="btn">Realizar Movimento</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(() => {
		$(window).on('scroll', function () {
			if ($(window).scrollTop()) {
				$(".navbar").css({ "background-color": "rgb(31, 31, 31) " });
			} else {
				$(".navbar").css({ "background-color": "transparent" });
			}
		});

		$(".navbar-toggler").click(() => {
			var data = document.querySelector(".navbar-toggler").getAttribute("aria-expanded");
			$(".navbar").css({ "background-color": "rgb(31, 31, 31)" });
		});
	});
	</script>
</body>
</html>