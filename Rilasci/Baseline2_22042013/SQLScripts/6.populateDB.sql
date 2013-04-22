INSERT INTO editoria_gruppo_giallo.account(username,password,nome,cognome,email,sigla_redazione,sigla_giornalista,stato) VALUES('admin','114cniiuinkmjk72aa1p5807u3','Mario','Rossi','admin@editoriagruppogiallo.it','admin',NULL,'A');
INSERT INTO editoria_gruppo_giallo.account(username,password,nome,cognome,email,sigla_redazione,sigla_giornalista,stato) VALUES('admin1','701jp5ll16geptupscc7q2oquq','Luca','Verdi','admin1@editoriagruppogiallo.it','admin1',NULL,'A');

INSERT INTO editoria_gruppo_giallo.gruppo (nome_gruppo) VALUES ('AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.gruppo (nome_gruppo) VALUES ('GIORNALISTA');

INSERT INTO editoria_gruppo_giallo.appartenenza_gruppo (username,nome_gruppo) VALUES ('admin','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.appartenenza_gruppo (username,nome_gruppo) VALUES ('admin','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.appartenenza_gruppo (username,nome_gruppo) VALUES ('admin1','AMMINISTRATORE');

INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('CreaAcc','CreaAccount','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('CancAcc','CancellaAccount','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('ModAcc','ModificaAccount','AMMINISTRATORE');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('ListaAcc','ListaAccount','AMMINISTRATORE');

INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('CreaNot','CreazioneNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('ModNot','ModificaNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('RegNot','RegistraNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('CancNot','CancellazioneNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('TrasmNot','TrasmettiNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('VisNot','VisualizzaNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('ListaNot','ListaNotizia','GIORNALISTA');
INSERT INTO editoria_gruppo_giallo.funzionalita (sigla_funzionalita,nome_funzionalita,nome_gruppo) VALUES ('Ann','Annulla','GIORNALISTA');

commit;