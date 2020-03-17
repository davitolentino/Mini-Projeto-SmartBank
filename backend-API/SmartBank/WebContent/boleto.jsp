<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Débito</title>

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
		<div class="card col-xl-4 col-10">
			<div class="card-body text-center">
				<form method="post" action="servlet">
					<h2 class="text-center pt-4 pb-4">
						<img src="img/icon3.png"> PAGAMENTO DE BOLETO
					</h2>
					<input type="hidden" name="tipo" value="9">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">Codigo:</span>
						</div>
						<input type="number" class="form-control" name="code" min="0" autocomplete="off" required>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">Descrição:</span>
						</div>
						<input type="text" class="form-control" name="desc" maxlength="50" autocomplete="off" required>
					</div>
					<div class="container-fluid mt-5 ml-0 mr-0 p-0">
						<button class="btn">Realizar Pagamento</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!--<form method="post" action="servlet">
		<p>TIPO: 
			<select name="tipo">
				<option value="3">Debito</option>
				<option value="4">Credito</option>
			</select>
		</p>
		<p>Valor: <input type="number" name="valor" min="0" max="99999999.99"></p>
		<p>Descrição: <input type="text" name="descricao" maxlength="50"></p>
		<p><input type="submit" value="Realizar Movimento"></p>	
	</form>-->
</body>
</html>