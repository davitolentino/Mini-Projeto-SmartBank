/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.24
 * Generated at: 2020-03-04 11:32:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.*;
import java.io.*;
import org.json.*;
import java.lang.Object.*;

public final class debcre_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.net");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("java.io");
    _jspx_imports_packages.add("org.json");
    _jspx_imports_packages.add("java.lang.Object");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("<meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("<title>DÉBITO/CRÉDITO</title>\r\n");
      out.write("<script src=\"bootstrap/jquery/dist/jquery.slim.min.js\"></script>\r\n");
      out.write("<script src=\"jQuery Mask/jquery.mask.js\"></script>\r\n");
      out.write("<script src=\"bootstrap/popper.js/dist/umd/popper.min.js\"></script>\r\n");
      out.write("<script src=\"bootstrap/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"debcrecss.css\" />\r\n");
      out.write("<link rel=\"stylesheet\" href=\"bootstrap/dist/css/bootstrap.min.css\">\r\n");
      out.write("<link rel=\"icon\" type=\"image/png\" href=\"img/logo.png\" />\r\n");
      out.write("<style>\r\n");
      out.write("body, html {\r\n");
      out.write("\theight: 100%;\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\tpadding: 0;\r\n");
      out.write("\tmargin: 0;\r\n");
      out.write("\tbackground-color: #16182f;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a:link {\r\n");
      out.write("\ttext-decoration: none;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#h4 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-weight: normal;\r\n");
      out.write("\talign-items: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#h1 {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont-weight: normal;\r\n");
      out.write("\talign-items: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".btn {\r\n");
      out.write("\tbackground-color: #16182f;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".card-header {\r\n");
      out.write("\tbackground-color: #16182f;\r\n");
      out.write("\tcolor: white;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".img {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");

		String numConta = request.getParameter("num_conta");
		String valor = request.getParameter("valor");
		String descricao = request.getParameter("descricao");
		String tipagem = request.getParameter("tipagem");
		int tipo = 0;
		String saldo = "";

		if ((numConta != null) && (valor != null) && (descricao != null) && (tipagem != null)) {
			
			String data1 = request.getParameter("data");
			String data = data1.replace("/", "");
			
			URL url = new URL("http://10.87.203.16:8080/WebService/service");

			JSONObject json = new JSONObject();
			json.put("numero_conta", numConta);
			json.put("data", data);
			json.put("valor", valor);
			json.put("descricao", descricao);

			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setDoOutput(true);

			if (tipagem.equals("debito")) {
				tipo = 3;
			} else {
				tipo = 4;
			}

			String parametros = "id=2&tipo=" + String.valueOf(tipo) + "&valores=" + json.toString();
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);

			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));

			String apnd = "", linha = "";

			while ((linha = br.readLine()) != null) apnd += linha;
			saldo = apnd;
			JSONObject jon = new JSONObject(apnd);
			
			if(jon.has("cod")){
				int cod = jon.getInt("cod");
				
				if(cod == 301){
					out.print("<script>alert('Saldo insuficiente.')</script>");
				}else{
					out.print("<script>alert('Falha ao inserir.')</script>");
				}
			}else{
				int saldoDebCre = jon.getInt("saldo");
				out.print("<script>alert('Seu saldo atual é: "+saldoDebCre+"')</script>");
			}
		}

		String nb = "nobody";
		String whois = (session.getAttribute("usuario") == null) ? "{\"nobody\":"+nb+"}" : session.getAttribute("usuario").toString();
		if(whois.equals("{\"nobody\":"+nb+"}")){ 
      out.write("\r\n");
      out.write("\t\t<p class=\"text-center pt-3\"><a href=\"home.jsp\">LOGUE</a> EM SUA CONTA.</p>\r\n");
      out.write("\t\t");
}else{ 
      out.write("\r\n");
      out.write("\t<header>\r\n");
      out.write("\t\t<nav class=\"navbar navbar-default\">\r\n");
      out.write("\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t<a class=\"img\" href=\"home.jsp\" title=\"SmartBank\"><img\r\n");
      out.write("\t\t\t\t\tsrc=\"img/logot.png\"></a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</nav>\r\n");
      out.write("\t</header>\r\n");
      out.write("\r\n");
      out.write("\t<h1 class=\"text-white\" id=\"h1\">Débito e Crédito</h1>\r\n");
      out.write("\t<h4 class=\"text-white\" id=\"h4\">SmartBank in a Box - uma plataforma bancária completa com infinitas possibilidades.</h4>\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"card\">\r\n");
      out.write("\t\t\t\t<div class=\"card-header\">Fazer ação</div>\r\n");
      out.write("\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<form method=\"post\" action=\"#\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<label class=\"input-group-text\" for=\"inputGroupSelect01\">Opções</label>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t <select required name=\"tipagem\" class=\"custom-select\" id=\"inputGroupSelect01\" >\r\n");
      out.write("\t\t\t\t\t\t\t\t<option selected disabled>Escolher...</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"debito\">Débito</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t<option value=\"credito\">Crédito</option>\r\n");
      out.write("\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t\t\t<!-- <input type=\"radio\" name=\"tipagem\" value=\"debito\">\r\n");
      out.write("\t\t\t\t\t\t\t<label class=\"text-dark\" for=\"male\">Débito</label><br>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"radio\" name=\"tipagem\" value=\"credito\">\r\n");
      out.write("\t\t\t\t\t\t\t<label class=\"text-dark\" for=\"female\">Crédito</label><br>-->\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\" id=\"inputGroup-sizing-default\">Número da conta</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t");
 JSONObject jn = new JSONObject(whois);
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" readonly aria-describedby=\"inputGroup-sizing-default\" name=\"num_conta\" value=\"");
      out.print(jn.getString("numero_conta") );
      out.write("\" required>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\" id=\"inputGroup-sizing-default\">Data</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"data\" type=\"text\" class=\"form-control\" aria-describedby=\"inputGroup-sizing-default\" name=\"data\" required>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\">R$</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\t\taria-label=\"Quantia em Dollar (com ponto e duas casas decimais)\" name=\"valor\" required>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\" id=\"inputGroup-sizing-default\">Descrição</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" aria-describedby=\"inputGroup-sizing-default\" name=\"descricao\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-outline-dark\">Enviar</button>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<br> <br>\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-3\"></div>\r\n");
      out.write("\t\t\t\t<div class=\"col-6\">\r\n");
      out.write("\t\t\t\t\t<a type=\"button\" href=\"home.jsp\" class=\"btn btn-outline-dark btn-lg btn-block text-center\">Home</a>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t <br> <br>\r\n");
      out.write("\r\n");
      out.write("\t\t<section class=\"section section-text\" data-id=\"2\" data-type=\"text\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"ckeditor\" id=\"ckeditor2\">\r\n");
      out.write("\t\t\t\t\t<h1 style=\"text-align: center\">\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>É banco ou startup?<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t</h1>\r\n");
      out.write("\t\t\t\t\t<p style=\"text-align: center\">\r\n");
      out.write("\t\t\t\t\t\t<span style=\"color: #696969\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5>Juntamos o melhor dos dois! Costumamos dizer que o\r\n");
      out.write("\t\t\t\t\t\t\t\tSmartBank tem segurança de banco e agilidade de fintech. Isso\r\n");
      out.write("\t\t\t\t\t\t\t\tporque possui uma infraestrutura bancária completa, aprovada\r\n");
      out.write("\t\t\t\t\t\t\t\tpelo Banco Central, e seu DNA tem como base tecnologias como Big\r\n");
      out.write("\t\t\t\t\t\t\t\tData e Inteligência Artificial.</h5>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<p style=\"text-align: center\">\r\n");
      out.write("\t\t\t\t\t\t<span style=\"color: #696969\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5>Foi a sinergia entre solidez e dinamismo que permitiu a\r\n");
      out.write("\t\t\t\t\t\t\t\tcriação de uma plataforma bancária 100% digital. Essa é uma nova\r\n");
      out.write("\t\t\t\t\t\t\t\texperiência financeira com o propósito de apoiar quem empreende\r\n");
      out.write("\t\t\t\t\t\t\t\te administra suas próprias empresas, a partir de produtos mais\r\n");
      out.write("\t\t\t\t\t\t\t\tflexíveis, eficientes e acessíveis.</h5>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<p style=\"text-align: center\">\r\n");
      out.write("\t\t\t\t\t\t<span style=\"color: #696969\">\r\n");
      out.write("\t\t\t\t\t\t\t<h5>A integração entre a inteligência humana e da tecnologia\r\n");
      out.write("\t\t\t\t\t\t\t\tpermite construir soluçõµes transparentes e transformadoras com\r\n");
      out.write("\t\t\t\t\t\t\t\tclientes e parceiros, contribuindo para potencializar muitos\r\n");
      out.write("\t\t\t\t\t\t\t\tcrescimentos: de cada negócio envolvido, da economia âdo Brasil,\r\n");
      out.write("\t\t\t\t\t\t\t\tda nossa sociedade e de todos os indivíduos que fazem parte\r\n");
      out.write("\t\t\t\t\t\t\t\tdessa história.</h5>\r\n");
      out.write("\t\t\t\t\t\t</span>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t\t<h3 style=\"text-align: center\">\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t</h3>\r\n");
      out.write("\t\t\t\t\t<p style=\"text-align: center\">\r\n");
      out.write("\t\t\t\t\t\t<br>\r\n");
      out.write("\t\t\t\t\t</p>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</section>\r\n");
      out.write("\r\n");
      out.write("\t\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t<footer class=\"page-footer font-small blue\">\r\n");
      out.write("\t\t\t<div class=\"footer-copyright text-center py-3\">\r\n");
      out.write("\t\t\t\t© 2020: <a href=\"home.jsp\"> SmartBank.com</a>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</footer>\r\n");
      out.write("\t\t");
} 
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t");

			//if ((numConta != null) && (valor != null) && (descricao != null)) {
				//JSONObject obj = new JSONObject(saldo);
				//out.print("<script>alert('Seu saldo atual é: "+obj.getInt("saldo")+"')</script>");
			//}
		
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t<script src=\"debcrejs.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
