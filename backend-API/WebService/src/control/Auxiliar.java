package control;

import java.util.InputMismatchException;

public class Auxiliar {

	public boolean isNumber(String input) {

		char[] caracter = input.toCharArray();

		try {

			for (int i = 0; i < caracter.length; i++) {
				int val = caracter[i];
				if ((val < 48) || (val > 57)) {
					return false;
				}
			}

			return true;

		} catch (Exception e) {
			System.out.println("Exception isNumber");
			System.out.println("Number input " + input);
			System.out.println(e);
			System.out.println("---");
			return false;
		}

	}

	public static boolean isCPF(String CPF) {
		// considera-se erro CPF's formados por uma sequencia de numeros iguais
		if (CPF.equals("00000000000") || CPF.equals("11111111111") || CPF.equals("22222222222")
				|| CPF.equals("33333333333") || CPF.equals("44444444444") || CPF.equals("55555555555")
				|| CPF.equals("66666666666") || CPF.equals("77777777777") || CPF.equals("88888888888")
				|| CPF.equals("99999999999") || (CPF.length() != 11))
			return (false);

		char dig10, dig11;
		int sm, i, r, num, peso;

		// "try" - protege o codigo para eventuais erros de conversao de tipo (int)
		try {
			// Calculo do 1o. Digito Verificador
			sm = 0;
			peso = 10;
			for (i = 0; i < 9; i++) {
				// converte o i-esimo caractere do CPF em um numero:
				// por exemplo, transforma o caractere '0' no inteiro 0
				// (48 eh a posicao de '0' na tabela ASCII)
				num = (int) (CPF.charAt(i) - 48);
				sm = sm + (num * peso);
				peso = peso - 1;
			}

			r = 11 - (sm % 11);
			if ((r == 10) || (r == 11))
				dig10 = '0';
			else
				dig10 = (char) (r + 48); // converte no respectivo caractere numerico

			// Calculo do 2o. Digito Verificador
			sm = 0;
			peso = 11;
			for (i = 0; i < 10; i++) {
				num = (int) (CPF.charAt(i) - 48);
				sm = sm + (num * peso);
				peso = peso - 1;
			}

			r = 11 - (sm % 11);
			if ((r == 10) || (r == 11))
				dig11 = '0';
			else
				dig11 = (char) (r + 48);

			// Verifica se os digitos calculados conferem com os digitos informados.
			if ((dig10 == CPF.charAt(9)) && (dig11 == CPF.charAt(10)))
				return (true);
			else
				return (false);
		} catch (InputMismatchException erro) {
			return (false);
		}
		
	}
	
	public boolean isData(String input) {
		
		if(isNumber(input)) {
			
			int dia = Integer.parseInt(input.substring(0, 2));
			int mes = Integer.parseInt(input.substring(2, 4));
			int ano = Integer.parseInt(input.substring(4, 8));
			
			if(
					( (dia < 0) || (dia > 31) ) ||
					( (mes < 0) || (mes > 12) ) 
			  ) {
				return false;
			}
			
			return true;
			
		}
		
		return false;
		
	}
	
	public String formatDate(String input) {
		
		String ret = "";
		
		String dia = input.substring(0, 2);
		String mes = input.substring(2, 4);
		String ano = input.substring(4, 8);

		//1992-08-22 00:00:00	
		ret = ano + "-" + mes + "-" + dia;
		
		return ret;
		
	}

	
	
}
