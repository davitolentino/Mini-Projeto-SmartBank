package model;

public class Conta {
	
	private int numeConta;
	private Cliente cliente;
	private double saldo;
	
	public Conta() {
	}
	
	public Conta(int numeConta) {
		this.numeConta = numeConta;
	}
	
	public int getNumeConta() {
		return numeConta;
	}
	public void setNumeConta(int numeConta) {
		this.numeConta = numeConta;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
}
