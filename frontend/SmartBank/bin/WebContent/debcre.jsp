<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.net.*"
    import="java.io.*"
    import="org.json.*"
    import="java.lang.Object.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Débito e crédito</title>
</head>
<body>
	<%
		String numConta = request.getParameter("num_conta");
		String data = request.getParameter("data");
		String valor = request.getParameter("valor");
		String descricao = request.getParameter("descricao");
		String tipo = request.getParameter("tipo");
		String saldo = "";
		
		if( (numConta != null) && (data != null) && (valor != null) && (descricao != null) ){
			URL url = new URL("http://10.87.203.16:8080/WebService/service");
			
			JSONObject json = new JSONObject();
			json.put("numero_conta", numConta);
			json.put("data", data);
			json.put("valor", valor);
			json.put("descricao", descricao);
			
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setDoOutput(true);
			
			String parametros = "tipo="+tipo+"&valores="+json.toString();
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			
			String apnd = "", linha = "";
			
			while((linha = br.readLine()) != null) apnd += linha;

			saldo = apnd;
		}
	%>
	<form method="post" action="#">
		<p>Débito</p>
		<input type="text" placeholder="Número da conta" name="num_conta" /><br>
		<input type="text" placeholder="Data" name="data" /><br>
		<input type="text" placeholder="Valor" name="valor" /><br>
		<input type="text" placeholder="Descrição" name="descricao" /><br>
		<input type="hidden" name="tipo" value="3" />	
		<button type="submit">Enviar</button><br>
	</form><br>
	<hr>
	<form method="post" action="#">
		<p>Crédito</p>
		<input type="text" placeholder="Número da conta" name="num_conta" /><br>
		<input type="text" placeholder="Data" name="data" /><br>
		<input type="text" placeholder="Valor" name="valor" /><br>
		<input type="text" placeholder="Descrição" name="descricao" /><br>
		<input type="hidden" name="tipo" value="4" />	
		<button type="submit">Enviar</button><br>
	</form>
	<hr>
	<p>
	<%
		if( (numConta != null) && (data != null) && (valor != null) && (descricao != null) ){
			JSONObject obj = new JSONObject(saldo);
			out.print("Seu saldo atual é: "+obj.getInt("saldo"));
		}
	%></p>
</body>
</html>