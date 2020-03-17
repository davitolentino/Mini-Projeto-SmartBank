package view;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Font.FontFamily;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.Barcode128;
import com.itextpdf.text.pdf.BarcodeEAN;
import com.itextpdf.text.pdf.BarcodeQRCode;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileOutputStream;

@WebServlet("/barcode")
public class Barcode extends HttpServlet {
	
	public static final Font BOLD_UNDERLINED = new Font(FontFamily.HELVETICA, 16, Font.BOLD | Font.UNDERLINE);
	public static final Font NORMAL = new Font(FontFamily.HELVETICA, 12);
	public static final Font BOLD = new Font(FontFamily.HELVETICA, 12, Font.BOLD);
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Document document = new Document(PageSize.A6, 20, 10, 20, 20);

		Random gerador = new Random();

		Paragraph p;
		
		Calendar c = Calendar.getInstance();
		c.setTime(new Date());
		c.add(Calendar.DATE, + gerador.nextInt(50));

		String dia = String.valueOf(c.get(Calendar.DAY_OF_MONTH));
		if(dia.length() == 1) dia = "0" + dia;
		String mes = String.valueOf(c.get(Calendar.MONTH) + 1);
		if(mes.length() == 1) mes = "0" + mes;
		String ano = String.valueOf(c.get(Calendar.YEAR));
		
		String valor = new DecimalFormat("0.##").format(gerador.nextDouble()*100);
		
		String data = dia+"/"+mes+"/"+ano;
		
		String agencia = String.valueOf(gerador.nextInt(999999));
		
		int tam = agencia.length();
		
		for(int i = 0; i < (6-tam); i++) {
			agencia = "0" + agencia;
		}
				
		String fileName = "C://arquivo"+gerador.nextInt(100)+".pdf";
		
		String codigo = agencia+dia+mes+ano+valor.replace(",", "");
		
		try {
			
			PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(fileName));
			
			document.open();

	        p = new Paragraph();
	        p.add(new Phrase("Smart Bank", BOLD_UNDERLINED));
	        p.setAlignment(Element.ALIGN_LEFT);   
	        for(int i = 0; i < 15; i++) p.add(" ");
	        p.add(new Phrase(codigo, BOLD));	 
	        
	        document.add(p);
	        
	        p = new Paragraph(" ");
	        document.add(p);
	        p = new Paragraph(" ");
	        document.add(p);

	        p = new Paragraph();
	        p.add(new Phrase("Data de Vencimento : ", BOLD));
	        p.add(new Phrase(data, NORMAL));
	        document.add(p);

	        p = new Paragraph();
	        p.add(new Phrase("Valor do Documento : R$ ", BOLD));
	        p.add(new Phrase(valor, NORMAL));
	        document.add(p);
	        
	        p = new Paragraph(" ");
	        document.add(p);
	        p = new Paragraph(" ");
	        document.add(p);
	        
	        PdfContentByte cb = writer.getDirectContent();
	        
	        Barcode128 barcode128 = new Barcode128();
            barcode128.setCode(codigo);
            barcode128.setCodeType(Barcode128.CODE128);
            Image code128Image = barcode128.createImageWithBarcode(cb, null, null);
            //code128Image.setAbsolutePosition(10, 700);
            code128Image.scalePercent(100);
            
            BarcodeQRCode barcodeQRCode = new BarcodeQRCode(codigo, 500, 500, null);
	        Image codeQrImage = barcodeQRCode.getImage();
	        codeQrImage.scaleAbsolute(100, 100);

	        for(int i = 0; i < 3; i++) document.add(new Paragraph(" "));
	        
            p = new Paragraph();
            p.add(code128Image);
            p.add(codeQrImage);
                        
            document.add(p);
	        
		} catch (DocumentException e) {

			e.printStackTrace();

		}

		document.close();
		
		File file = new File(fileName);
        resp.setHeader("Content-Type", getServletContext().getMimeType(file.getName()));
        resp.setHeader("Content-Length", String.valueOf(file.length()));
        resp.setHeader("Content-Disposition", "inline; filename=\"Codigo_Barra_Java_Linha_Codigo.pdf\"");
        Files.copy(file.toPath(), resp.getOutputStream());
		
	}

}
