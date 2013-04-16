package it.gruppogiallo.entity;

public class Gruppo extends DTO {

	private String nomeGruppo;

	public Gruppo(long id, String nome_gruppo) {
		super(id);
		this.nomeGruppo = nome_gruppo;
	}

	public String getNome_gruppo() {
		return nomeGruppo;
	}

	public void setNome_gruppo(String nome_gruppo) {
		this.nomeGruppo = nome_gruppo;
	}
	
	
	
	
}
