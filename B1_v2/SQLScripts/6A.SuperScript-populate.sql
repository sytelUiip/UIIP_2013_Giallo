INSERT INTO editoria_gruppo_giallo.account(id,username,password,nome,cognome,email,sigla_redazione,sigla_giornalista,stato) VALUES(seq_id_account.nextval,'admin','admin','Mario','Rossi','admin@editoriagruppogiallo.it','admin',NULL,'A');
INSERT INTO editoria_gruppo_giallo.account(id,username,password,nome,cognome,email,sigla_redazione,sigla_giornalista,stato) VALUES(seq_id_account.nextval,'admin1','admin1','Luca','Verdi','admin1@editoriagruppogiallo.it','admin1',NULL,'A');

INSERT INTO editoria_gruppo_giallo.gruppo (nome_gruppo) VALUES ('AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.gruppo (nome_gruppo) VALUES ('GIORNALISTA');

INSERT INTO editoria_gruppo_giallo.appartenenza_gruppo (id,username,nome_gruppo) VALUES (seq_id_appartenenza_gruppo.nextval,'admin','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.appartenenza_gruppo (id,username,nome_gruppo) VALUES (seq_id_appartenenza_gruppo.nextval,'admin','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.appartenenza_gruppo (id,username,nome_gruppo) VALUES (seq_id_appartenenza_gruppo.nextval,'admin1','AMMINISTRATORE');

INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'CreaAcc','CreaAccount','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'CancAcc','CancellaAccount','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'ModAcc','ModificaAccount','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'ListaAcc','ListaAccount','AMMINISTRATORE');

INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'CreaNot','CreazioneNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'ModNot','ModificaNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'RegNot','RegistraNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'CancNot','CancellazioneNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'TrasmNot','TrasmettiNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'VisNot','VisualizzaNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'ListaNot','ListaNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (id,sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES (seq_id_funzionalita.nextval,'Ann','Annulla','GIORNALISTA');

commit;