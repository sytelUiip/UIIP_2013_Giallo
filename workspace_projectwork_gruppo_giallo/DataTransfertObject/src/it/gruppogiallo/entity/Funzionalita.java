package it.gruppogiallo.entity;

public class Funzionalita extends DTO {

	private String siglaFunzionalita;
	private String nomeFunzionalita;
	private Gruppo gruppo;
	
	public Funzionalita(long id, String siglaFunzionalita,
			String nomeFunzionalita, Gruppo gruppo) {
		super(id);
		this.siglaFunzionalita = siglaFunzionalita;
		this.nomeFunzionalita = nomeFunzionalita;
		this.gruppo = gruppo;
	}

	public String getSiglaFunzionalita() {
		return siglaFunzionalita;
	}

	public void setSiglaFunzionalita(String siglaFunzionalita) {
		this.siglaFunzionalita = siglaFunzionalita;
	}

	public String getNomeFunzionalita() {
		return nomeFunzionalita;
	}

	public void setNomeFunzionalita(String nomeFunzionalita) {
		this.nomeFunzionalita = nomeFunzionalita;
	}

	public Gruppo getGruppo() {
		return gruppo;
	}

	public void setGruppo(Gruppo gruppo) {
		this.gruppo = gruppo;
	}
	
	
	
}
