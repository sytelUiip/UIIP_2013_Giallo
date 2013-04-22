/* ==================================== A C C O U N T S ============================================	*/

/* STORED PROCEDURE PER LA CREAZIONE ACCOUNT
	PARAMETRI IN INGRESSO: 8
*/
create or replace 
procedure createAccount
(
  username IN editoria_gruppo_giallo.account.username%type,
  password IN editoria_gruppo_giallo.account.password%type,
  nome IN editoria_gruppo_giallo.account.nome%type,
  cognome IN editoria_gruppo_giallo.account.cognome%type,
  email IN editoria_gruppo_giallo.account.email%type,
  sigla_redazione IN editoria_gruppo_giallo.account.sigla_redazione%type,
  sigla_giornalista IN editoria_gruppo_giallo.account.sigla_giornalista%type,
  stato IN editoria_gruppo_giallo.account.stato%type
)
IS 
BEGIN
  INSERT 
  INTO account("USERNAME","PASSWORD","NOME","COGNOME","EMAIL","SIGLA_REDAZIONE","SIGLA_GIORNALISTA","STATO")
  VALUES (username,password,nome,cognome,email,sigla_redazione,sigla_giornalista,stato);
  COMMIT;
END;
/

/* STORED PROCEDURE PER OTTENERE UN ACCOUNT DATO UN'USERNAME
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace 
procedure getAccountFromUsername
(
  cursorType OUT SYS_REFCURSOR,
  p_username IN editoria_gruppo_giallo.account.username%type
)
IS
BEGIN
  OPEN cursorType FOR 
  SELECT *
  FROM editoria_gruppo_giallo.account 
  WHERE editoria_gruppo_giallo.account.username=p_username;
END;
/

/* STORED PROCEDURE PER OTTENERE TUTTI GLI ACCOUNT
	PARAMETRI IN USCITA: 1
*/

create or replace 
PROCEDURE getAccounts
(
  cursorParam OUT SYS_REFCURSOR
)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT * FROM ACCOUNT
  WHERE stato = 'A';
END;
/

/* STORED PROCEDURE PER LA GESTIONE DELLA LOGIN
	PARAMETRI IN INGRESSO: 2
	PARAMETRI IN USCITA: 1
*/

create or replace 
procedure getLogin
(
  cursorType OUT SYS_REFCURSOR,
  p_username IN editoria_gruppo_giallo.account.username%type,
  p_password IN editoria_gruppo_giallo.account.password%type
)
IS
BEGIN
  OPEN cursorType FOR 
  SELECT *
  FROM editoria_gruppo_giallo.account 
  WHERE editoria_gruppo_giallo.account.username=p_username AND 
  editoria_gruppo_giallo.account.password=p_password AND
  editoria_gruppo_giallo.account.stato='A';
END;
/

/* STORED PROCEDURE PER ottenere Account dati username e password
	PARAMETRI IN INGRESSO: 2
	PARAMETRI IN USCITA: 1
*/

create or replace procedure getAccountFromCredential
(
  cursorType OUT SYS_REFCURSOR,
  p_username IN editoria_gruppo_giallo.account.username%type,
  p_password IN editoria_gruppo_giallo.account.password%type
)
IS
BEGIN
  OPEN cursorType FOR 
  SELECT *
  FROM editoria_gruppo_giallo.account
  WHERE editoria_gruppo_giallo.account.username=p_username 
  AND editoria_gruppo_giallo.account.password=p_password;
END;
/

/* STORED PROCEDURE PER LA MODIFICA ACCOUNT
	PARAMETRI IN INGRESSO: 6
*/

create or replace
procedure ModificaAccount
(
  p_username IN editoria_gruppo_giallo.account.username%type,
  p_NEWnome IN editoria_gruppo_giallo.account.nome%type,  
  p_NEWcognome IN editoria_gruppo_giallo.account.cognome%type,
  p_NEWemail IN editoria_gruppo_giallo.account.email%type,
  p_NEWsigla_redazione IN editoria_gruppo_giallo.account.sigla_redazione%type,
  p_NEWsigla_giornalista IN editoria_gruppo_giallo.account.sigla_giornalista%type
)
IS
BEGIN
UPDATE Account a SET a.nome=p_NEWnome, a.cognome=p_NEWcognome, a.email=p_NEWemail, a.sigla_redazione=p_NEWsigla_redazione,a.sigla_giornalista=p_NEWsigla_giornalista
  WHERE a.username=p_username;
  COMMIT;
END;
/

/* STORED PROCEDURE PER LA CANCELLAZIONE ACCOUNT
	PARAMETRI IN INGRESSO: 1
*/

create or replace
procedure cancellaAccount
(
  p_username IN editoria_gruppo_giallo.account.username%type
)
IS
BEGIN
UPDATE Account a SET stato= 'D'
  WHERE a.username=p_username;
  COMMIT;
END;
/

/* STORED PROCEDURE PER LA RICERCA DELLA SIGLA GIORNALISTA DATO L’USERNAME 
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace 
PROCEDURE siglaGiornalistaByUsername
(
cursorParam OUT SYS_REFCURSOR,
p_username IN editoria_gruppo_giallo.account.username%type

)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT sigla_giornalista
  FROM  account
  WHERE p_username = username;
END;
/

/* ====================================  G R U P P I =====================================	*/

/* STORED PROCEDURE PER OTTENERE I GRUPPI DATO UN USERNAME
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace 
procedure getGruppiByUsername
(
  gruppi OUT SYS_REFCURSOR,
  p_username IN editoria_gruppo_giallo.appartenenza_gruppo.username%type
)
IS
BEGIN
  OPEN gruppi FOR 
  SELECT ap.NOME_GRUPPO AS NOME_GRUPPO
  FROM editoria_gruppo_giallo.appartenenza_gruppo ap,
  editoria_gruppo_giallo.gruppo g
  WHERE g.nome_gruppo= ap.nome_gruppo AND ap.username=p_username;
END;
/

/* STORED PROCEDURE PER L’INSERIMENTO DI UN NUOVO GRUPPO AD UN ACCOUNT
	PARAMETRI IN INGRESSO: 2
*/

create or replace
procedure InsertNuovogruppo
(
username IN editoria_gruppo_giallo.appartenenza_gruppo.username%type,
nome_gruppo IN editoria_gruppo_giallo.appartenenza_gruppo.nome_gruppo%type

)
IS 
BEGIN
  INSERT 
  INTO appartenenza_gruppo("USERNAME","NOME_GRUPPO")
  VALUES (username,nome_gruppo);
  COMMIT;
END;
/

/* ==================================== F U N Z I O N A L I T A =====================================	*/

/* STORED PROCEDURE PER LA VISUALIZZAZIONE LISTA FUNZIONALITA Da username
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace 
PROCEDURE listaFunzionalitabyUsername
(
cursorParam OUT SYS_REFCURSOR,
p_username IN editoria_gruppo_giallo.account.username%type

)
IS
BEGIN 
  OPEN cursorParam FOR
SELECT *
  FROM ACCOUNT a, Appartenenza_gruppo ap, funzionalita f
  WHERE a.username=ap.username  and ap.nome_gruppo=f.nome_gruppo and p_username=a.username;
END;
/

/* STORED PROCEDURE PER LA VISUALIZZAZIONE LISTA FUNZIONALITA Da gruppo
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace 
PROCEDURE listaFunzionalitabyGruppo
(
cursorParam OUT SYS_REFCURSOR,
p_nome_gruppo IN editoria_gruppo_giallo.gruppo.nome_gruppo%type

)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT f.nome_funzionalita
  FROM  gruppo g, funzionalita f
  WHERE g.nome_gruppo=f.nome_gruppo and p_nome_gruppo=g.nome_gruppo;
END;
/

/*  =========================== A P P A R T E N E N Z A - G R U P P O =========================	*/

/* STORED PROCEDURE PER cancellazione appartenenza gruppo
	PARAMETRI IN INGRESSO: 1
*/

create or replace 
procedure cancellaAppartenenzaGruppo
(
  p_username IN editoria_gruppo_giallo.appartenenza_gruppo.username%type
)
IS
BEGIN 
DELETE FROM appartenenza_gruppo ap WHERE ap.username=p_username;
COMMIT;
END;
/

/* ==================================== N O T I Z I A ============================== */

/* STORED PROCEDURE PER OTTENERE ID NOTIZIA BLOCCATA DATO ULTIMO DIGIITATORE
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace 
PROCEDURE notiziaBloccataByUltimoDig
(
cursorParam OUT SYS_REFCURSOR,
p_ultimoDigitatore IN editoria_gruppo_giallo.notizia.ultimo_digitatore%type

)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT id
  FROM  notizia
  WHERE p_ultimoDigitatore = ultimo_digitatore AND lock_notizia = 'Y';
END;
/

/* STORED PROCEDURE PER SBLOCCARE UNA NOTIZIA
	PARAMETRI IN INGRESSO: 1
*/

create or replace
procedure sbloccaNotizia
(
  p_id IN editoria_gruppo_giallo.notizia.id%type
)
IS
BEGIN
UPDATE notizia n SET n.lock_notizia='N'
  WHERE n.id=p_id;
  COMMIT; 
END;
/

/* STORED PROCEDURE PER LA CREAZIONE di una notizia
	PARAMETRI IN INGRESSO: 12
*/
create or replace
procedure createNotizia
(stato IN editoria_gruppo_giallo.notizia.stato%type,
lock_notizia IN editoria_gruppo_giallo.notizia.lock_notizia%type,
titolo IN editoria_gruppo_giallo.notizia.titolo%type,
sottotitolo IN editoria_gruppo_giallo.notizia.sottotitolo%type,
tipologia_notizia IN editoria_gruppo_giallo.notizia.tipologia_notizia%type,
autore IN editoria_gruppo_giallo.notizia.autore%type,
ultimo_digitatore IN editoria_gruppo_giallo.notizia.ultimo_digitatore%type,
testo IN editoria_gruppo_giallo.notizia.testo%type,
lunghezza_testo IN editoria_gruppo_giallo.notizia.lunghezza_testo%type
)
IS 
BEGIN
  INSERT 
  INTO notizia("STATO","LOCK_NOTIZIA","TITOLO","SOTTOTITOLO","TIPOLOGIA_NOTIZIA","AUTORE","ULTIMO_DIGITATORE","TESTO","LUNGHEZZA_TESTO")
  VALUES (stato,lock_notizia,titolo,sottotitolo,tipologia_notizia,autore,ultimo_digitatore,testo,lunghezza_testo);
  COMMIT;
END;
/

/* STORED PROCEDURE PER LA CANCELLAZIONE NOTIZIA
	PARAMETRI IN INGRESSO: 1
*/

create or replace
procedure cancellaNotizia
(
  p_id IN editoria_gruppo_giallo.notizia.id%type
)
IS
BEGIN
UPDATE NOTIZIA n SET stato= 'C'
  WHERE n.id=p_id;
  COMMIT;
END;
/

/* STORED PROCEDURE PER LA VISUALIZZAZIONE LISTA NOTIZIA ordinete per data_creazione
	PARAMETRI IN USCITA: 1
*/

create or replace 
PROCEDURE listaNotizie
(
  cursorParam OUT SYS_REFCURSOR
)
IS
BEGIN 
  OPEN cursorParam FOR SELECT titolo, autore, data_creazione, data_trasmissione, stato, lock_notizia, ultimo_digitatore FROM NOTIZIA 
 ORDER BY data_creazione DESC;
END;
/


/* STORED PROCEDURE PER LA VISUALIZZAZIONE NOTIZIA
	PARAMETRI IN USCITA: 1
	PARAMETRI IN INGRESSO: 1
*/

create or replace 
PROCEDURE visualizzaNotizia
(
  cursorParam OUT SYS_REFCURSOR,
  p_id IN editoria_gruppo_giallo.notizia.id%type
  
)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT * FROM NOTIZIA
  WHERE p_id= id;
END;
/

/* STORED PROCEDURE PER LA RICERCA NOTIZIA PER STATO
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace
PROCEDURE ricercaNotiziePerSTATO
(
cursorParam OUT SYS_REFCURSOR,
p_stato IN editoria_gruppo_giallo.notizia.stato%type
 
)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT titolo, autore, data_creazione, data_trasmissione, stato, lock_notizia, ultimo_digitatore FROM NOTIZIA n
  WHERE p_stato=n.stato
  ORDER BY data_creazione DESC;
END;
/

/* STORED PROCEDURE PER LA RICERCA NOTIZIA PER TITOLO
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace
PROCEDURE ricercaNotiziePerTitolo
(
  cursorParam OUT SYS_REFCURSOR,
  p_titolo IN editoria_gruppo_giallo.notizia.titolo%type
)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT titolo, autore, data_creazione, data_trasmissione, stato, lock_notizia, ultimo_digitatore FROM NOTIZIA n
  WHERE p_titolo=n.titolo
  ORDER BY data_creazione DESC;
END;
/

/* STORED PROCEDURE PER LA RICERCA NOTIZIA PER AUTORE
	PARAMETRI IN INGRESSO: 1
	PARAMETRI IN USCITA: 1
*/

create or replace
PROCEDURE ricercaNotiziePerAutore
(
cursorParam OUT SYS_REFCURSOR,
p_autore IN editoria_gruppo_giallo.notizia.autore%type
  
)
IS
BEGIN 
  OPEN cursorParam FOR
  SELECT titolo, autore, data_creazione, data_trasmissione, stato, lock_notizia, ultimo_digitatore FROM NOTIZIA n
  WHERE p_autore=n.autore
 ORDER BY data_creazione DESC;

END;
/

/* STORED PROCEDURE PER L’ANNULLAMENTO MODIFICA NOTIZIA
	PARAMETRI IN INGRESSO: 2
*/

create or replace
procedure annullaModifica
(
  p_id IN editoria_gruppo_giallo.notizia.id%type,
  p_ultimoDig IN editoria_gruppo_giallo.notizia.ultimo_digitatore%type
)
IS
BEGIN
UPDATE notizia n SET n.lock_notizia='N', n.ultimo_digitatore=p_ultimoDig
  WHERE n.id=p_id;
  COMMIT;
END;
/

/* STORED PROCEDURE PER LA TRASMISSIONE DI UNA NOTIZIA
	PARAMETRI IN INGRESSO: 1
*/

create or replace
procedure trasmettiNotizia
(
  p_id IN editoria_gruppo_giallo.notizia.id%type
)
IS
BEGIN
UPDATE notizia n SET n.stato='Q', data_trasmissione=CURRENT_TIMESTAMP
  WHERE n.id=p_id and lock_notizia ='N' and stato ='S';
  COMMIT;
END;
/

/* STORED PROCEDURE PER LA MODIFICA DELLA NOTIZIA
	PARAMETRI IN INGRESSO: 2
*/

create or replace
procedure modificaNotizia
(
  p_id IN editoria_gruppo_giallo.notizia.id%type,
  p_ultimoDig IN editoria_gruppo_giallo.notizia.ultimo_digitatore%type
)
IS
BEGIN
UPDATE notizia n SET n.lock_notizia='y', n.ultimo_digitatore=p_ultimoDig
  WHERE n.id=p_id;
  COMMIT;
END;
/
