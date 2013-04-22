create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_notizia
BEFORE INSERT ON notizia
FOR EACH ROW
BEGIN
	SELECT seq_id_notizia.nextval
	INTO :new.id FROM dual;
END trigger_id_notizia;
/