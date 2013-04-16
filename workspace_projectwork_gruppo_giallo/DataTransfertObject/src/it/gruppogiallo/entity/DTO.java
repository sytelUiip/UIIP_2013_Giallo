package it.gruppogiallo.entity;

public class DTO {

	private long id;

	public DTO(long id) {
		this.id=id;
	}
	
	public DTO() {
		
	}
	
	public void setId(long id) {
		this.id = id;
	}

	public long getId() {
		return id;
	}
}
