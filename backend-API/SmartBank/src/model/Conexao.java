package model;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class Conexao {
	public String conexao(String parametros) {
		String apnd = "", linha = parametros;
		try {
			URL url = new URL("http://10.87.203.16:8080/WebService/service");
			
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("POST");
			con.setDoOutput(true);
			
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);
	
			BufferedReader br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			while((linha = br.readLine()) != null) apnd += linha;

			return apnd;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
	}
}
