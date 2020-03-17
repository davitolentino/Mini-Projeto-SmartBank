package view;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.codec.binary.Base64;
import org.json.JSONObject;

@WebServlet("/image")
public class Image extends HttpServlet {

	// 41fb8652a2fcce8279b8ad016c6c85a4

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			URL url = new URL("https://api.imgbb.com/1/upload");

			HttpURLConnection con = (HttpURLConnection) url.openConnection();

			con.setRequestMethod("POST");
			con.setDoOutput(true);

			String img = "C:\\Users\\Aluno\\Desktop\\fulano.jpg";

			File file = new File(img);
			FileInputStream fileInputStreamReader = new FileInputStream(file);
			byte[] bytes = new byte[(int) file.length()];
			fileInputStreamReader.read(bytes);

			String parametros = "key=41fb8652a2fcce8279b8ad016c6c85a4&" + "image="
					+ new String(Base64.encodeBase64(bytes), "ISO-8859-1") + "&" + "name=fulano.jpg";

			System.out.println(parametros);
			
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(parametros);

			con.connect();

			InputStream input = con.getInputStream();

			BufferedReader br = new BufferedReader(new InputStreamReader(input, "ISO-8859-1"));

			String linha = "", apnd = "";

			while ((linha = br.readLine()) != null) {

				apnd += linha;

			}

			System.out.println(apnd);

			JSONObject obj = new JSONObject(apnd);

			System.out.println(obj);

		} catch (Exception e) {

			System.out.println(e.toString());
			
		}

	}

}
