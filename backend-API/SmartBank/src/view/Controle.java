package view;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import control.ErroDAO;
import model.Cliente;
import model.Conexao;
import model.Conta;
import model.Erro;
import model.Transferencia;

@WebServlet("/servlet")
public class Controle extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Cliente cli;
	private Conexao conection;
	private int tipo;
	private HttpSession hs;
	private Date d;
	private Conta cont;
	private String[] data;
	private JSONObject obj;
	private String parametros, apnd = "";
	private boolean erro = true;
	private SimpleDateFormat df;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		tipo = Integer.parseInt(req.getParameter("tipo"));
		hs = req.getSession();

		switch (tipo) {
		//CADASTRO DO CLIENTE
		case 1:
			cli = new Cliente();
			cli.setNome(req.getParameter("nome"));
			cli.setEndereco(req.getParameter("endereco"));
			cli.setTelefone(req.getParameter("telefone"));
			data = req.getParameter("dataNasc").split("-");
			cli.setDataNasc(data[2] + "" + data[1] + "" + data[0]);
			cli.setCpf(req.getParameter("cpf"));
			cli.setSenhaLogin(req.getParameter("senhaLogin"));
			cli.setSenhaAcesso(req.getParameter("senhaAcesso"));

			obj = new JSONObject();
			obj.put("nome", cli.getNome());
			obj.put("endereco", cli.getEndereco());
			obj.put("telefone", cli.getTelefone());
			obj.put("dataNasc", cli.getDataNasc());
			obj.put("cpf", cli.getCpf());
			obj.put("senhaLogin", cli.getSenhaLogin());
			obj.put("senhaAcesso", cli.getSenhaAcesso());
			parametros = "id=1&tipo=1&valores=" + obj.toString();

			conection = new Conexao();
			apnd = conection.conexao(parametros);

			if (apnd != null) {
				JSONArray arr = new JSONArray("[" + apnd + "]");
				for (int i = 0; i < arr.length(); i++) {
					JSONObject ob = arr.getJSONObject(i);
					if (ob.has("cod")) {
						Erro e = new Erro();
						ErroDAO ed = new ErroDAO();
						mensagem("1", "Erro " + ob.getString("cod") + ": " + ed.buscaErro(ob.getString("cod")));
						erro = true;
					}
				}

			} else {
				mensagem("1", "Erro 400: API Desligada");
				erro = true;
			}

			if (erro == true) {
				resp.sendRedirect("cadastro.jsp");
			} else {
				mensagem("0", "Sucesso ao cadastrar usuario");
				resp.sendRedirect("login.jsp");
			}
			break;
			
		//DÉBITO
		case 3:
			d = new Date();
			cont = new Conta();
			cont.setNumConta(String.valueOf(hs.getAttribute("numeroConta")));
			cont.setDescricao(req.getParameter("descricao"));

			d = new Date();
			df = new SimpleDateFormat("ddMMyyyy");

			cont.setData(df.format(d));
			cont.setValor(req.getParameter("valor"));

			obj = new JSONObject();
			obj.put("numero_conta", cont.getNumConta());
			obj.put("descricao", cont.getDescricao());
			obj.put("data", cont.getData());
			obj.put("valor", cont.getValor());
			parametros = "id=1&tipo=3&valores=" + obj.toString();

			conection = new Conexao();
			apnd = conection.conexao(parametros);

			if (apnd != null) {
				JSONArray arr = new JSONArray("[" + apnd + "]");
				for (int i = 0; i < arr.length(); i++) {
					JSONObject ob = arr.getJSONObject(i);
					if (ob.has("cod")) {
						Erro e = new Erro();
						ErroDAO ed = new ErroDAO();
						mensagem("1", "Erro " + ob.getString("cod") + ": " + ed.buscaErro(ob.getString("cod")));
						erro = true;
					}
				}

			} else {
				mensagem("1", "Erro 400: API Desligada");
				erro = true;
			}

			if (erro == true) {
				resp.sendRedirect("debito.jsp");
			} else {
				mensagem("0", "Sucesso ao realizar o pagamento!");
				resp.sendRedirect("home.jsp");
			}
			break;
			
		//CRÈDITO
		case 4:
			d = new Date();
			cont = new Conta();
			cont.setNumConta(String.valueOf(hs.getAttribute("numeroConta")));
			cont.setDescricao(req.getParameter("descricao"));

			d = new Date();
			df = new SimpleDateFormat("ddMMyyyy");

			cont.setData(df.format(d));
			cont.setValor(req.getParameter("valor"));

			obj = new JSONObject();
			obj.put("numero_conta", cont.getNumConta());
			obj.put("descricao", cont.getDescricao());
			obj.put("data", cont.getData());
			obj.put("valor", cont.getValor());
			parametros = "id=1&tipo=4&valores=" + obj.toString();

			conection = new Conexao();
			apnd = conection.conexao(parametros);

			if (apnd != null) {
				JSONArray arr = new JSONArray("[" + apnd + "]");
				for (int i = 0; i < arr.length(); i++) {
					JSONObject ob = arr.getJSONObject(i);
					if (ob.has("cod")) {
						Erro e = new Erro();
						ErroDAO ed = new ErroDAO();
						mensagem("1", "Erro " + ob.getString("cod") + ": " + ed.buscaErro(ob.getString("cod")));
						erro = true;
					}
				}

			} else {
				mensagem("1", "Erro 400: API Desligada");
				erro = true;
			}

			if (erro == true) {
				resp.sendRedirect("credito.jsp");
			} else {
				mensagem("0", "Sucesso ao realizar o depósito!");
				resp.sendRedirect("home.jsp");
			}
			break;
			
		//TRANSFERENCIA
		case 5:
			Transferencia transf = new Transferencia();
			transf.setContaOrigem(String.valueOf(hs.getAttribute("numeroConta")));
			transf.setContaDestino(req.getParameter("contaDest"));

			d = new Date();
			df = new SimpleDateFormat("ddMMyyyy");

			transf.setData(df.format(d));
			transf.setValor(req.getParameter("valor"));

			obj = new JSONObject();
			obj.put("conta_origem", transf.getContaOrigem());
			obj.put("conta_destino", transf.getContaDestino());
			obj.put("data", transf.getData());
			obj.put("valor", transf.getValor());
			parametros = "id=1&tipo=5&valores=" + obj.toString();

			conection = new Conexao();
			apnd = conection.conexao(parametros);
			apnd = "{saldo:\"101\"}";
			if (apnd != null) {
				JSONArray arr = new JSONArray("[" + apnd + "]");
				for (int i = 0; i < arr.length(); i++) {
					JSONObject ob = arr.getJSONObject(i);
					if (ob.has("cod")) {
						Erro e = new Erro();
						ErroDAO ed = new ErroDAO();
						mensagem("1", "Erro " + ob.getString("cod") + ": " + ed.buscaErro(ob.getString("cod")));
						erro = true;
					}
				}

			} else {
				mensagem("1", "Erro 400: API Desligada");
				erro = true;
			}

			if (erro == true) {
				resp.sendRedirect("transferencia.jsp");
			} else {
				mensagem("0", "Sucesso ao realizar transferencia.");
				resp.sendRedirect("home.jsp");
			}
			break;
		
		//LOGIN
		case 6:
			cli = new Cliente();
			cli.setCpf(req.getParameter("cpf"));
			cli.setSenhaAcesso(req.getParameter("senhaAcesso"));
			if (req.getParameter("cpf") != null) {

				obj = new JSONObject();
				obj.put("documento", cli.getCpf());
				obj.put("senhaAcesso", cli.getSenhaAcesso());
				parametros = "id=1&tipo=6&valores=" + obj.toString();

				conection = new Conexao();
				apnd = conection.conexao(parametros);

				if (apnd != null) {
					JSONArray arr = new JSONArray("[" + apnd + "]");
					for (int i = 0; i < arr.length(); i++) {
						JSONObject ob = arr.getJSONObject(i);
						if (ob.has("cod")) {
							Erro e = new Erro();
							ErroDAO ed = new ErroDAO();
							mensagem("1", "Erro " + ob.getString("cod") + ": " + ed.buscaErro(ob.getString("cod")));
							erro = true;
						} else {
							hs.setAttribute("numeroConta", ob.getString("numero_conta"));
							hs.setAttribute("nome", ob.getString("nome"));
							hs.setAttribute("dataNasc", ob.getString("dataNasc"));
							hs.setAttribute("telefone", ob.getString("telefone"));
							hs.setAttribute("endereco", ob.getString("endereco"));
							erro = false;
						}
					}
				} else {
					mensagem("1", "Erro 400: API Desligada");
					erro = true;
				}
				if (erro == true) {
					resp.sendRedirect("login.jsp");
				} else {
					mensagem("0", "Seja Bem-vindo!");
					resp.sendRedirect("home.jsp");
				}
			}
			break;
		
		//LOGOUT
		case 8:
			hs.removeAttribute("numeroConta");
			hs.removeAttribute("nome");
			hs.removeAttribute("dataNasc");
			hs.removeAttribute("telefone");
			hs.removeAttribute("endereco");
			mensagem("0", "Até Mais.");
			resp.sendRedirect("index.jsp");
			break;
		
		//PAGAMENTO DE BOLETO
		case 9:
			String code = req.getParameter("code");
			String palavra = code;
			JSONObject obj = new JSONObject();
			obj.put("numero_conta", ""+hs.getAttribute("numeroConta"));
			obj.put("descricao", req.getParameter("desc"));
			obj.put("data", ""+palavra.charAt(6) + palavra.charAt(7) + palavra.charAt(8) + palavra.charAt(9) + palavra.charAt(10) + palavra.charAt(11) + palavra.charAt(12) + palavra.charAt(13));
			String valor = "";
			for (int i = 14; i < palavra.length(); i++) {
				if (i != palavra.length() - 2) {
					valor += palavra.charAt(i);
				} else {
					valor += "." + palavra.charAt(i);
				}
			}
			obj.put("valor", valor);
			String parametros = "id=1&tipo=3&valores=" + obj.toString();

			Conexao conexao = new Conexao();
			apnd = conexao.conexao(parametros);
			if (apnd != null) {
				JSONArray arr = new JSONArray("[" + apnd + "]");
				for (int i = 0; i < arr.length(); i++) {
					JSONObject ob = arr.getJSONObject(i);
					if (ob.has("cod")) {
						Erro e = new Erro();
						ErroDAO ed = new ErroDAO();
						mensagem("1", "Erro " + ob.getString("cod") + ": " + ed.buscaErro(ob.getString("cod")));
						erro = true;
					}
				}

			} else {
				mensagem("1", "Erro 400: API Desligada");
				erro = true;
			}

			if (erro == true) {
				resp.sendRedirect("boleto.jsp");
			} else {
				mensagem("0", "Sucesso ao realizar o pagamento do boleto!");
				resp.sendRedirect("home.jsp");
			}
			break;
		default:
			resp.sendRedirect("home.jsp");
			break;
		}
	}

	public void mensagem(String erro, String msg) {
		hs.setAttribute("codErro", erro);
		hs.setAttribute("msg", msg);
	}
}
