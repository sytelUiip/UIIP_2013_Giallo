package it.gruppogiallo.entity;

import java.util.Date;

public class Notizia extends DTO{
	
	private String stato;
	private String lockNotizia;
	private String titolo;
	private String sottotitolo;
	private String tipologiaNotizia;
	private String autore;
	private String ultimoDigitatore;
	private Date dataCreazione;
	private Date dataTrasmissione;
	private String Testo;
	private String lunghezzaTesto;
	
	public Notizia(long id, String stato, String lockNotizia, String titolo,
			String sottotitolo, String tipologiaNotizia, String autore,
			String ultimoDigitatore, Date dataCreazione, Date dataTrasmissione,
			String testo, String lunghezzaTesto) {
		super(id);
		this.stato = stato;
		this.lockNotizia = lockNotizia;
		this.titolo = titolo;
		this.sottotitolo = sottotitolo;
		this.tipologiaNotizia = tipologiaNotizia;
		this.autore = autore;
		this.ultimoDigitatore = ultimoDigitatore;
		this.dataCreazione = dataCreazione;
		this.dataTrasmissione = dataTrasmissione;
		Testo = testo;
		this.lunghezzaTesto = lunghezzaTesto;
	}

	public String getStato() {
		return stato;
	}

	public void setStato(String stato) {
		this.stato = stato;
	}

	public String getLockNotizia() {
		return lockNotizia;
	}

	public void setLockNotizia(String lockNotizia) {
		this.lockNotizia = lockNotizia;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getSottotitolo() {
		return sottotitolo;
	}

	public void setSottotitolo(String sottotitolo) {
		this.sottotitolo = sottotitolo;
	}

	public String getTipologiaNotizia() {
		return tipologiaNotizia;
	}

	public void setTipologiaNotizia(String tipologiaNotizia) {
		this.tipologiaNotizia = tipologiaNotizia;
	}

	public String getAutore() {
		return autore;
	}

	public void setAutore(String autore) {
		this.autore = autore;
	}

	public String getUltimoDigitatore() {
		return ultimoDigitatore;
	}

	public void setUltimoDigitatore(String ultimoDigitatore) {
		this.ultimoDigitatore = ultimoDigitatore;
	}

	public Date getDataCreazione() {
		return dataCreazione;
	}

	public void setDataCreazione(Date dataCreazione) {
		this.dataCreazione = dataCreazione;
	}

	public Date getDataTrasmissione() {
		return dataTrasmissione;
	}

	public void setDataTrasmissione(Date dataTrasmissione) {
		this.dataTrasmissione = dataTrasmissione;
	}

	public String getTesto() {
		return Testo;
	}

	public void setTesto(String testo) {
		Testo = testo;
	}

	public String getLunghezzaTesto() {
		return lunghezzaTesto;
	}

	public void setLunghezzaTesto(String lunghezzaTesto) {
		this.lunghezzaTesto = lunghezzaTesto;
	}
	
	

}
