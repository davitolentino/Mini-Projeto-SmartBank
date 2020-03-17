package control;

import java.util.ArrayList;
import java.util.List;

import model.Erro;

public class ErroDAO {
	private List<Erro> lerro;
	private Erro erro;
	
	public List<Erro> getErro() {
		lerro = new ArrayList<Erro>();
		erro = new Erro();
		erro.setCod("101");
		erro.setErro("P�rametro fora do escopo");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("102");
		erro.setErro("Senha de acesso invalida");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("103");
		erro.setErro("CPF invalido");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("104");
		erro.setErro("Data invalida");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("105");
		erro.setErro("Falha ao inserir");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("106");
		erro.setErro("CPF ja cadastrado");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("301");
		erro.setErro("Saldo insuficiente");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("305");
		erro.setErro("Falha ao inserir");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("001");
		erro.setErro("Tipo não informado");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("002");
		erro.setErro("Valores não recebidos");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("003");
		erro.setErro("ID não informado");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("007");
		erro.setErro("Campo não encontrado");
		lerro.add(erro);
		erro = new Erro();
		erro.setCod("010");
		erro.setErro("Conta não existe");
		lerro.add(erro);
		return lerro;
	}
	public String buscaErro(String codErro) {
		lerro = getErro();
		String result = "";
		for(Erro erro:lerro) {
			if(erro.getCod().equals(codErro)) {
				result = erro.getErro();
			}	
		}
		return result;
	}
}
