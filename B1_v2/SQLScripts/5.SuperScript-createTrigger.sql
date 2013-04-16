create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_account
BEFORE INSERT ON account
FOR EACH ROW
BEGIN
  SELECT seq_id_account.nextval	INTO :new.id FROM dual;
END trigger_id_account;
/
create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_gruppo
BEFORE INSERT ON gruppo
FOR EACH ROW
BEGIN
	SELECT seq_id_gruppo.nextval INTO :new.id FROM dual;
END trigger_id_gruppo;
/
create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_appartenenza_gruppo
BEFORE INSERT ON appartenenza_gruppo
FOR EACH ROW
BEGIN
	SELECT seq_id_appartenenza_gruppo.nextval INTO :new.id FROM dual;
END trigger_id_appartenenza_gruppo;
/
create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_funzionalita
BEFORE INSERT ON funzionalita
FOR EACH ROW
BEGIN
	SELECT seq_id_funzionalita.nextval
	INTO :new.id FROM dual;
END trigger_id_funzionalita;
/
create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_notizia
BEFORE INSERT ON notizia
FOR EACH ROW
BEGIN
	SELECT seq_id_notizia.nextval
	INTO :new.id FROM dual;
END trigger_id_notizia;
/
create or replace
TRIGGER editoria_gruppo_giallo.trigger_id_gestione_notizia
BEFORE INSERT ON gestione_notizia
FOR EACH ROW
BEGIN
	SELECT seq_id_gestione_notizia.nextval
	INTO :new.id FROM dual;
END trigger_id_gestione_notizia;
/