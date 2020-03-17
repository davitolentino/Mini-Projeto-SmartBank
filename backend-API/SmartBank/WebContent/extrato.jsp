<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Conta"%>
<%@page import="java.util.Spliterator"%>
<%@page import="org.json.JSONArray"%>
<%@page import="model.Conexao"%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Extrato</title>

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

<style>
html, body {
	
}

.navbar {
	position: none;
}
</style>

<script type="text/javascript" src="script.js"></script>
</head>
<body
	<%if (session.getAttribute("msg") != null) {
				out.print("onload=\"alerta(" + session.getAttribute("codErro") + ",'" + session.getAttribute("msg")
						+ "');\"");
				session.removeAttribute("codErro");
				session.removeAttribute("msg");
			}%>>

	<nav class="navbar navbar-expand"
		style="background-color: rgb(31, 31, 31); position: unset;">
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
	<div class="col-8 center">

		<%
			HttpSession hs = request.getSession();
			String numeroConta = String.valueOf(hs.getAttribute("numeroConta"));

			JSONObject obj = new JSONObject();

			Date dataFim = new Date();
			SimpleDateFormat df = new SimpleDateFormat("ddMMyyyy");
			SimpleDateFormat df2 = new SimpleDateFormat("yyyy-MM-dd");

			Calendar dataInicio = Calendar.getInstance();
			dataInicio.setTime(new Date());
			dataInicio.add(Calendar.MONTH, -1);

			String inicioPeriodo, fimPeriodo;

			obj.put("numero_conta", numeroConta);
			if (request.getParameter("datafim") != null && request.getParameter("datainicio") != null) {
				String[] dataInicial = request.getParameter("datainicio").split("-");
				String[] dataFinal = request.getParameter("datafim").split("-");

				inicioPeriodo = dataInicial[2] + "" + dataInicial[1] + "" + dataInicial[0];
				fimPeriodo = dataFinal[2] + "" + dataFinal[1] + "" + dataFinal[0];
		%>

		<div class="mt-5 d-center">
			<div class="col-12">
				<form method="post">
					<div class="row">
						<input type="date" name="datainicio" placeholder="Data inicial"
							class="form-control col-4 mr-3"
							value="<%=request.getParameter("datainicio")%>"> <input
							type="date" name="datafim" placeholder="Data final"
							class="form-control col-4 mr-3"
							value="<%=request.getParameter("datafim")%>"> <input
							class="btn btn-primary" type="submit" value="Enviar"
							class="col-12">
					</div>
				</form>
			</div>
		</div>
		<%
			} else {
				inicioPeriodo = df.format(dataInicio.getTime());
				fimPeriodo = df.format(dataFim);
		%>
		<div class="mt-5 d-center">
			<div class="col-12">
				<form method="post">
					<div class="row">
						<input type="date" name="datainicio" placeholder="Data inicial"
							class="form-control col-4 mr-3"
							value="<%=df2.format(dataInicio.getTime())%>"> <input
							type="date" name="datafim" placeholder="Data final"
							class="form-control col-4 mr-3" value="<%=df2.format(dataFim)%>">
						<input class="btn btn-primary" type="submit" value="Enviar"
							class="col-12">
					</div>
				</form>
			</div>
		</div>
		<%
			}
			obj.put("inicio_periodo", inicioPeriodo);
			obj.put("fim_periodo", fimPeriodo);

			String parametros = "id=1&tipo=7&valores=" + obj.toString();
			Conexao cone = new Conexao();
			String apnd = cone.conexao(parametros);
			JSONArray arr = new JSONArray(apnd);

			for (int i = 0; i < arr.length(); i++) {
				Conta conta = new Conta();
				JSONObject ob = arr.getJSONObject(i);
				System.out.println(ob.toString());
		%>
		<div class="card mt-3 mb-3">
			<div class="card-body">
				<div class="row">
					<div class="col-11">
						<%
                        String tipo = "", color= "";
                        if(ob.getString("tipo").equals("CR")){
                            tipo = "CRÉDITO";
                            color = "green";
                        } else if(ob.getString("tipo").equals("DE")){
                            tipo = "DÉBITO";
                            color = "red";
                        }
						out.print("<h5 style='color:"+color+"';>"+tipo+"</h5>");
						%>
					</div>
					<div align="right">
						<%
							out.println(ob.getString("data"));
						%>
					</div>
				</div>
				<div class="container-fluid p-0">
					<%
						out.println(ob.getString("descricao"));
					%>
				</div>
				<div class="container-fluid p-0">
					R$<%
					out.println(ob.getString("valor"));
				%>
				</div>
			</div>
		</div>
		<%
			}
		%>
	</div>
	<script>
	$(document).ready(() => {
		$(window).on('scroll', function () {
			if ($(window).scrollTop()) {
				$(".navbar").css({"position":"fixed"});
			} else {
				$(".navbar").css({ "position":"unset" });
			}
		});

	});
	</script>
</body>
</html>






