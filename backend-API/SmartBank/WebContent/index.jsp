<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>

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
	<div id="carousel-header" class="carousel mb-5" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carousel-header" data-slide-to="0" class="active"></li>
			<li data-target="#carousel-header" data-slide-to="1"></li>
			<li data-target="#carousel-header" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active" style="background-image:url('img/coffee-1283672_1920.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h2>
						<b>SmartBank</b>
					</h2>
					<h4>
						<b>Um banco totalmente digital</b>
					</h4>
				</div>
			</div>
			<div class="carousel-item" style="background-image:url('img/imagem2.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h2>
						<b>Contatos</b>
					</h2>
					<h4>
						<b>Acesse nossas redes sociais</b>
					</h4>
				</div>
			</div>
			<div class="carousel-item" style="background-image:url('img/write-593333_1920.jpg')">
				<div class="carousel-caption d-none d-md-block">
					<h2>
						<b>Objetivos</b>
					</h2>
					<h4>
						<b>Aqui seus planos também são nossos</b>
					</h4>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carousel-header" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Anterior</span>
		</a>
		<a class="carousel-control-next" href="#carousel-header" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Próximo</span>
		</a>
	</div>

	<div class="text-center" style="margin-top: 100px;margin-bottom:100px;">
		<h3>Conheça algumas das nossas funcionalidades :</h3>
	</div>
	<div class="d-center">
		<div class="col-10 col-lg-8">
			<div class="card-deck" id="vitrine">
				<div class="card text-white pr-0 pl-0" style="width: 18rem;">
					<div class="card-header">
						<img src="img/icon3.png">
					</div>
					<div class="card-body">
						<h5 class="card-title">Pagamentos</h5>
						<p class="card-text">Acesse para realizar pagamentos.</p>
						<%if (session.getAttribute("numeroConta") == null) { %>
						<a href="login.jsp" class="btn btn-primary">Acesse</a>
						<%} else { %>
						<a href="debito.jsp" class="btn btn-primary">Acesse</a>
						<%} %>
					</div>
				</div>
				<div class="card text-white pr-0 pl-0" style="width: 18rem;">
					<div class="card-header">
						<img src="img/icon2.png">
					</div>
					<div class="card-body">
						<h5 class="card-title">Depósito</h5>
						<p class="card-text">Acesse para saber as fucionalidades do depósito.</p>
						<%if (session.getAttribute("numeroConta") == null) { %>
						<a href="login.jsp" class="btn btn-primary">Acesse</a>
						<%} else { %>
						<a href="credito.jsp" class="btn btn-primary">Acesse</a>
						<%} %>
					</div>
				</div>
				<div class="card text-white pr-0 pl-0" style="width: 18rem;">
					<div class="card-header">
						<img src="img/icon4.png">
					</div>
					<div class="card-body">
						<h5 class="card-title">Transferência</h5>
						<p class="card-text">Acesse para obter informações da transferência.</p>
						<%if (session.getAttribute("numeroConta") == null) { %>
						<a href="login.jsp" class="btn btn-primary">Acesse</a>
						<%} else { %>
						<a href="transferencia.jsp" class="btn btn-primary">Acesse</a>
						<%} %>
					</div>
				</div>
			</div>
		</div>
	</div>
	<span id="wave"></span>
	<div class="text-center d-center" id="card-vitrine">
		<div class="card-deck col-xl-8">
			<div class="card">
				<div class="card-img-top">
					<img src="img/imagem4.jpg">
				</div>
				<div class="card-body pb-5 pt-5">
					<h5 class="card-title">Utilize também nosso app. <img src="img/icons8-android-48.png" height="20px">
					</h5>
					<p class="card-text">Faça o download do nosso aplicativo SmartBank - Mobile e tenha acesso a sua
						conta quando quiser. </p>
				</div>
			</div>
			<div class="card">
				<div class="card-img-top">
					<img src="img/media-998990_1920.jpg">
				</div>
				<div class="card-body pb-5 pt-5">
					<h5>Acesse nossas redes sociais.</h5>
					<p class="card-text">Faça o download do nosso aplicativo SmartBank - Mobile e tenha acesso a sua
						conta quando quiser. </p>
				</div>
			</div>
			<div class="card">
				<div class="card-img-top">
					<img src="img/woman-3083379_1920.jpg">
				</div>
				<div class=" card-body pb-5 pt-5">
					<h5>Entre em contato conosco.</h5>
					<p class="card-text">
						Fale conosco atraves das redes sociais ou então ligue para o telefone (19)99997-8697.
					</p>
				</div>
			</div>
		</div>
	</div>

	<footer class="rodape">
		<p class="text-white text-center m-0 p-2">©2019 SmartBank Brasil</p>
	</footer>
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