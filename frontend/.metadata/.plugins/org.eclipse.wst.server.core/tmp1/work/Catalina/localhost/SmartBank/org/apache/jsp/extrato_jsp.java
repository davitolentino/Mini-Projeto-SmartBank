/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.31
 * Generated at: 2020-03-05 13:47:50 UTC
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

public final class extrato_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<meta charset=\"ISO-8859-1\">\r\n");
      out.write("<title>EXTRATO</title>\r\n");
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
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");

		String nb = "nobody";
		String whois = (session.getAttribute("usuario") == null) ? "{\"nobody\":"+nb+"}" : session.getAttribute("usuario").toString();
		JSONObject j = new JSONObject(whois);
		
		String numConta = request.getParameter("num_conta");
		String inicioData1 = request.getParameter("inicio_periodo");
		String fimData1 = request.getParameter("fim_periodo");
		String recebedor = "";	
	
		if(numConta != null) {
			String inicioData = inicioData1.replace("/", "");
			String fimData = fimData1.replace("/", "");
			
			URL url = new URL("http://10.87.207.6:8080/WebService/service");
			
			JSONObject json = new JSONObject();
			json.put("numero_conta", numConta);
			json.put("inicio_periodo", inicioData);
			json.put("fim_periodo", fimData);
			
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setDoOutput(true);
			
			String parametros = "id=2&tipo=7&valores="+json.toString();
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);
			
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			
			String apnd = "", linha = "";
			
			while((linha = br.readLine()) != null) apnd += linha;
			recebedor = apnd;
			
		}
	
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
      out.write("\t<h1 class=\"text-white\" id=\"h1\">Extrato</h1>\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"card\">\r\n");
      out.write("\t\t\t\t<div class=\"card-body\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<form method=\"post\" action=\"#\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\" id=\"inputGroup-sizing-default\">Número da conta</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control\" readonly aria-describedby=\"inputGroup-sizing-default\" name=\"num_conta\" required value=\"");
      out.print( j.getString("numero_conta") );
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\" id=\"inputGroup-sizing-default\">Data de início</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"inicio_periodo\" type=\"text\" class=\"form-control\" aria-describedby=\"inputGroup-sizing-default\" name=\"inicio_periodo\" required>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"input-group mb-3\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"input-group-prepend\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"input-group-text\">Data de fim</span>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t<input id=\"fim_periodo\" type=\"text\" class=\"form-control\"\r\n");
      out.write("\t\t\t\t\t\t\t\taria-label=\"Quantia em Dollar (com ponto e duas casas decimais)\" name=\"fim_periodo\" required>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-outline-dark\">Enviar</button>\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<br><br><br>\r\n");
      out.write("\r\n");
      out.write("\t\t<div style=\"display: grid; grid-template-columns: 1fr 1fr 1fr;\">\r\n");
      out.write("\t\t\t");

				if(numConta != null) {
					JSONArray arr = new JSONArray(recebedor);
					
					for(int i = 0; i < arr.length(); i++){
						JSONObject ob = arr.getJSONObject(i);
			
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col mt-3 d-flex justify-content-center\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"card\" style=\"width: 18rem; \">\r\n");
      out.write("\t\t\t\t\t\t\t  <div class=\"card-body\">\r\n");
      out.write("\t\t\t\t\t\t\t    <h5 class=\"card-title text-dark\">Número da conta: ");
      out.print( ob.getString("numero_conta") );
      out.write("</h5>\r\n");
      out.write("\t\t\t\t\t\t\t    \r\n");
      out.write("\t\t\t\t\t\t\t    ");
 String tipo =  ob.getString("tipo");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t    <h6 class=\"card-subtitle mb-2 text-muted\"> ");
      out.print(tipo  );
      out.write("</h6>\r\n");
      out.write("\t\t\t\t\t\t\t    <p class=\"card-text text-dark\"> ");
      out.print( ob.getString("descricao") );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t\t    ");
if(tipo.equals("CR")){ 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t    \t<p class=\"card-link text-primary\">R$  ");
      out.print( ob.getString("valor") );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t\t    ");
}else{ 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t    \t<p class=\"card-link text-danger\">R$  ");
      out.print( ob.getString("valor") );
      out.write("</p>\r\n");
      out.write("\t\t\t\t\t\t\t    ");
} 
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t\t  \t</div>\r\n");
      out.write("\t\t\t\t  \t\t</div>\r\n");
      out.write("\t\t\t");

					}
				}
			
      out.write("\r\n");
      out.write("\t\t</div>\t\t\r\n");
      out.write("\t");

		}
	
      out.write("\r\n");
      out.write("\t<script src=\"extratojs.js\"></script>\r\n");
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