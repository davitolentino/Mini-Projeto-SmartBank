/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2020-03-05 13:47:47 UTC
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

public final class pagarboleto_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
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
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\r\n");
      out.write("    <title>BOLETO</title>\r\n");
      out.write("    <script src=\"bootstrap/jquery/dist/jquery.slim.min.js\"></script>\r\n");
      out.write("\t<script src=\"jQuery Mask/jquery.mask.js\"></script>\r\n");
      out.write("\t<script src=\"bootstrap/popper.js/dist/umd/popper.min.js\"></script>\r\n");
      out.write("\t<script src=\"bootstrap/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"bootstrap/dist/css/bootstrap.min.css\">\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"img/logo.png\">\r\n");
      out.write("    <style>\r\n");
      out.write("    \tbody, html {\r\n");
      out.write("\t\t\theight: 100%;\r\n");
      out.write("\t\t\twidth: 100%;\r\n");
      out.write("\t\t\tpadding: 0;\r\n");
      out.write("\t\t\tmargin: 0;\r\n");
      out.write("\t\t\tbackground-color: #16182f;\r\n");
      out.write("\t\t\tcolor: white;\r\n");
      out.write("\t\t}\r\n");
      out.write("  \t\r\n");
      out.write("        .page-footer {\r\n");
      out.write("            background-color: #16182f;\r\n");
      out.write("            color: white;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        #h4 {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            font-weight: normal;\r\n");
      out.write("            color: #80bfff;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        #h1 {\r\n");
      out.write("            text-align: center;\r\n");
      out.write("            font-weight: normal;\r\n");
      out.write("            color: #16182f;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn {\r\n");
      out.write("            background-color: #16182f;\r\n");
      out.write("            color: white;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        img {\r\n");
      out.write("            max-width: 100%;\r\n");
      out.write("            height: auto;\r\n");
      out.write("        }\r\n");
      out.write("        .page-footer{\r\n");
      out.write("            max-width: 1300%;\r\n");
      out.write("            margin: auto;\r\n");
      out.write("            padding: 0 20px;\r\n");
      out.write("        }\r\n");
      out.write("        a:link{\r\n");
      out.write("        \ttext-decoration: none;\r\n");
      out.write("        \tcolor: white;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("<body class=\"body\">\r\n");
      out.write("\t");

		String nb = "nobody";
		String whois = (session.getAttribute("usuario") == null) ? "{\"nobody\":"+nb+"}" : session.getAttribute("usuario").toString();
		JSONObject j = new JSONObject(whois);
		String cod = request.getParameter("cod");
		String saldo = "";

		if(cod != null) {
			String[] cd = cod.split("");
			
			if(cd.length >=18){
				String ag = cd[0]+""+cd[1];
				String acc = cd[2]+""+cd[3]+""+cd[4]+""+cd[5];
				String data = cd[6]+""+cd[7]+""+cd[8]+""+cd[9]+""+cd[10]+""+cd[11]+""+cd[12]+""+cd[13];
	
				String dinheiro = "";
				String cents = "";
	
				cents = "."+cd[cd.length-2]+""+cd[cd.length-1];
	
				for(int i = 14; i <cd.length-2; i++){
				    dinheiro += cd[i]+"";
				}
				
				String total = dinheiro+""+cents;
				String descricao = "Pagamento de boleto.";
				
				URL url = new URL("http://10.87.207.6:8080/WebService/service");
	
				JSONObject json = new JSONObject();
				json.put("numero_conta", j.getString("numero_conta"));
				json.put("data", data);
				json.put("valor", total);
				json.put("descricao", descricao);
	
				HttpURLConnection con = (HttpURLConnection) url.openConnection();
				con.setRequestMethod("POST");
				con.setDoOutput(true);
	
				String parametros = "id=2&tipo=3&valores=" + json.toString();
				DataOutputStream wr = new DataOutputStream(con.getOutputStream());
				wr.writeBytes(parametros);
	
				BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
	
				String apnd = "", linha = "";
	
				while ((linha = br.readLine()) != null) apnd += linha;
	
				saldo = apnd;
				
				JSONObject jon = new JSONObject(apnd);
				
				if(jon.has("cod")){
					int codwrong= jon.getInt("cod");
					
					if(codwrong == 301){
						out.print("<script>alert('Saldo insuficiente.')</script>");
					}else{
						out.print("<script>alert('Falha ao inserir.')</script>");
					}
				}else{
					out.print("<script>alert('Boleto pago com sucesso.')</script>");
				}
			}else{
				out.print("<script>alert('Código de barra inválido.')</script>");
			}
		}
		if(whois.equals("{\"nobody\":"+nb+"}")){
      out.write("\r\n");
      out.write("\t\t<p class=\"text-center pt-4\"><a href=\"home.jsp\">LOGUE</a> EM SUA CONTA.</p>\r\n");
      out.write("\t\t");
}else{ 
      out.write("\r\n");
      out.write("    <header>\r\n");
      out.write("        <nav class=\"navbar navbar-default\">\r\n");
      out.write("            <div class=\"container-fluid\">\r\n");
      out.write("                <div class=\"navbar-header\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"container-company-img\">\r\n");
      out.write("                        <a href=\"home.jsp\" title=\"SmartBank\">\r\n");
      out.write("                            <img src=\"img/logot.png\"\r\n");
      out.write("                                title=\"SmartBank\" alt=\"SmartBank\" class=\"header-image\"></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("                    <ul class=\"nav navbar-nav primary-nav navbar-menu\">\r\n");
      out.write("                        <li class=\"no-mobile\">\r\n");
      out.write("                            <a href=\"https://portal.kenoby.com/smartbank/dashboard\" title=\"#\" target=\"_blank\">\r\n");
      out.write("                                <img alt=\"Avatar candidato\" src=\"/assets/images/avatar-empty.png\" class=\"img-avatar\">\r\n");
      out.write("                                <span class=\"blue-text\">Sou Candidato</span>\r\n");
      out.write("                            </a>\r\n");
      out.write("                        </li>\r\n");
      out.write("                    </ul>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("    </header>\r\n");
      out.write("\r\n");
      out.write("        <br>\r\n");
      out.write("        <br> \r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("        <div class=\"container text-dark\">\r\n");
      out.write("            <div class=\"card\">\r\n");
      out.write("                <div class=\"card-header\">\r\n");
      out.write("                    Leitor de Código\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"card-body\">\r\n");
      out.write("\r\n");
      out.write("                    <h5 class=\"card-title\">Insira o Código de barras:</h5>\r\n");
      out.write("                    <p class=\"card-text\"></p>\r\n");
      out.write("                    <form method=\"post\" action=\"#\">                                      \r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("\r\n");
      out.write("                            <input name=\"cod\" type=\"text\" class=\"form-control\" id=\"formGroupExampleInput\"\r\n");
      out.write("                                placeholder=\"Ex: 7898240280497\" required >\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-outline-dark\">Enviar</button>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("       \r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        <br>\r\n");
      out.write("        \r\n");
      out.write("        <footer class=\"page-footer font-small blue\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"footer-copyright text-center py-3\">© 2020:\r\n");
      out.write("                <a href=\"home.jsp\">SmartBank.com</a>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </footer>\r\n");
      out.write("       \t");
}
      out.write("\r\n");
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
