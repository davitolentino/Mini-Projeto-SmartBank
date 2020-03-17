package control;

import java.text.DecimalFormat;
import java.text.NumberFormat;

import org.json.JSONArray;
import org.json.JSONObject;

import model.Conexao;
import model.Conta;

public class ContaDAO {
	private Conta cont;
	
	public String saldo(String numeroConta) {
		JSONObject obj = new JSONObject();
		obj.put("numero_conta", numeroConta);
		String parametros = "id=1&tipo=2&valores="+obj.toString();
		
		Conexao cone = new Conexao();
		String apnd = cone.conexao(parametros);

		JSONArray arr = new JSONArray("["+apnd+"]");
		
		for(int i = 0; i < arr.length(); i++){		
			JSONObject ob = arr.getJSONObject(i);
			cont = new Conta();
			cont.setSaldo(ob.getString("saldo"));
		}

		NumberFormat formato = new DecimalFormat("0.00");  

		return cont.getSaldo();
	}
}
