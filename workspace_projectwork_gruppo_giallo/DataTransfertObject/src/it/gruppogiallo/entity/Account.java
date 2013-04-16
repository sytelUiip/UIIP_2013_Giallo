package it.gruppogiallo.entity;

public class Account extends DTO {

	private String username;
	private String password;
	private String nome;
	private String cognome;
	private String email;
	private String siglaRedazione;
	private String siglaGiornalista;
	
	public Account(String username, String password, String nome,
			String cognome, String email, String sigla_redazione,
			String sigla_giornalista) {
		super();
		this.username = username;
		this.password = password;
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.siglaRedazione = sigla_redazione;
		this.siglaGiornalista = sigla_giornalista;
	}
	
	public Account(long id, String username, String password, String nome,
			String cognome, String email, String sigla_redazione,
			String sigla_giornalista) {
		super(id);
		this.username = username;
		this.password = password;
		this.nome = nome;
		this.cognome = cognome;
		this.email = email;
		this.siglaRedazione = sigla_redazione;
		this.siglaGiornalista = sigla_giornalista;
	}
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSigla_redazione() {
		return siglaRedazione;
	}
	public void setSigla_redazione(String sigla_redazione) {
		this.siglaRedazione = sigla_redazione;
	}
	public String getSigla_giornalista() {
		return siglaGiornalista;
	}
	public void setSigla_giornalista(String sigla_giornalista) {
		this.siglaGiornalista = sigla_giornalista;
	}
	
	@Override
	public String toString() {
		return 
			this.username+" "
			+this.password+" "
			+this.nome+" "
			+this.cognome+" "
			+this.email+" "
			+this.siglaRedazione+" "
			+this.siglaGiornalista+"\n";
	}

}
