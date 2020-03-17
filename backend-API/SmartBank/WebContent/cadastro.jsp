<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.net.*"
    import="java.io.*"
    import="org.json.*"
    import="java.lang.Object.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro</title>
	 

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>

	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
		integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

	<link rel="stylesheet" type="text/css" href="style.css">
	<link href="https://fonts.googleapis.com/css?family=Fjalla+One&display=swap" rel="stylesheet">

	<style>
		body {
			background-image: url("img/paisagem.jpg");
			background-size: cover;
		}
	</style>
	<script src="script.js"></script>
</head>
<body <%if(session.getAttribute("msg") != null){	
	out.print("onload=\"alerta("+session.getAttribute("codErro")+",'"+session.getAttribute("msg")+"');\"");
	session.removeAttribute("codErro");
	session.removeAttribute("msg");
}%>>
	
		
		<nav class="navbar navbar-expand-lg">
		<a class="navbar-brand" href="index.jsp">
			<h2><img class="nav-item" src="img/logo.png" width="45px">SmartBank</h2>
		</a>
		<button class="navbar-toggler navbar-dark" data-toggle="collapse" data-target="#menu" aria-expanded="false">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-end" id="menu">
			<ul class="navbar-nav">
				<li class="nav-item pt-lg-0 pt-3"><a class="nav-link text-white mr-3" href="login.jsp">Login</a></li>
				<li class="nav-item pt-lg-0 pt-5"><a class="nav-link text-white mr-3" href="cadastro.jsp">Cadastro</a>
				</li>
				<li class="nav-item dropdown pt-lg-0 pt-5 pb-3">
					<a class="nav-link dropdown-toggle text-white" href="#" id="navbarDropdown" role="button"
						data-toggle="dropdown">Contatos </a>
					<div class="dropdown-menu dropdown-menu-right text-dark" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="https://www.facebook.com">
							<img src="img/social/facebook.png" width="15px" height="23px">
							Facebook
						</a>
						<a class="dropdown-item" href="https://www.instagram.com">
							<img src="img/social/instagram.png" width="23px" height="19px">
							Instagram
						</a>
						<a class="dropdown-item" href="https://www.twitter.com">
							<img src="img/social/twitter.png" width="23px" height="19px">
							Twitter
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item disabled" href="#">
							<img src="img/social/tel.png" width="23px" height="19px">
							(19)99997-8697
						</a>
					</div>
				</li>
			</ul>
		</div>
	</nav>

<div id="login">
		<div class="card col-xl-4 col-6">
			<div class="card-body">
				<form method="post" action="servlet">
				<input type="hidden" name="tipo" value="1">
					<h2 class="text-center pt-4 pb-4">CADASTRO</h2>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="text" class="form-control" placeholder="Nome (completo)" name="nome" autocomplete="off" maxlength="152" required>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="number" class="form-control" placeholder="CPF (sem caracteres especiais)" name="cpf" autocomplete="off" size="999999999" required> 
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="date" class="form-control" name="dataNasc" autocomplete="off" placeholder="Data de nascimento" required>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="text" class="form-control" placeholder="Endereço" name="endereco" autocomplete="off" maxlength="200" required>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="text" class="form-control" placeholder="Telefone" name="telefone" autocomplete="off" maxlength="11" required>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="password" class="form-control" placeholder="Senha de login" name="senhaLogin" autocomplete="off" maxlength="16" required>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
						</div>
						<input type="password" class="form-control" placeholder="Senha de acesso" name="senhaAcesso" autocomplete="off" maxlength="6" required pattern="[0-9]{6}">
					</div>
					<input class="form-control" type="hidden" name="tipo" />
					<p class="text-center" style="color: rgb(0, 0, 0);">Já possui cadastro? <a href="login.jsp"
							class="text-center">Faça agora mesmo.</a></p>
					<div class="container-fluid mt-5 ml-0 mr-0 p-0">
						<button class="btn" value="Enviar">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>


	<!-- <form method="post" action="servlet">
		<input type="hidden" name="tipo" value="1">
		<p>Nome: <input type="text" name="nome" maxlength="152"></p>
		<p>Endereço: <input type="text" name="endereco" maxlength="200"></p>
		<p>Data: <input type="text" name="dataNasc" maxlength="8"></p>
		<p>Telefone: <input type="text" name="telefone" maxlength="11"></p>
		<p>CPF: <input type="text" name="cpf" maxlength="11"></p>
		<p>Senha Login: <input type="text" name="senhaLogin" maxlength="16"></p>
		<p>Senha Acesso: <input type="text" name="senhaAcesso" maxlength="6"></p>
		<p><input type="submit" value="Enviar"></p>	
	</form> -->
</body>
</html>