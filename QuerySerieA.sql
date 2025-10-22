CREATE DATABASE Campionato25_26;
Use Campionato25_26;

create table Squadre
(
 Nome varchar(20) primary key,
 Citta varchar(30),
 Sponsor varchar(55),
 ColoriSociali varchar(100),
 Allenatore varchar(50)
);

/*Istruzioni per la creazione della tabella GIOCATORE, con il relativo vincolo alla tabella SQUADRA*/

create table Giocatori
(
 IdGiocatore int auto_increment primary key,
 Squadra varchar(20) references Squadre(Nome),
 Numero int,
 Nome varchar(30),
 Cognome varchar(30),
 DataNascita date,
 Ruolo varchar(20) 
);

/*Istruzioni per la creazione della tabella PARTITA con i relativi vincoli alla tabella SQUADRA	*/

create table Partite
(
 IdPartita int auto_increment primary key,
 Giornata int,
 SqCasa varchar(20) references Squadre(Nome),
 SqTrasf varchar(20) references Squadre(Nome),
 GolCasa int,
 GolTrasf int
);

/*Istruzioni per la creazione della tabella GOL con i relativi vincoli alle tabelle PARTITA e GIOCATORE*/

create table Gol
(
 IdPartita int references Partite(IdPartita),
 Minuto int,
 Marcatore char(5) references Giocatori(NTessera),
 Autogol int,
 primary key (IdPartita, Minuto)
);




insert into Squadre values ('Atalanta', 'Bergamo', 'Lete', 'Nero ; Azzurro', 'Jurić');
insert into Squadre values ('Bologna', 'Bologna', 'Saputo', 'Rosso ; Blu', 'Italiano');
insert into Squadre values ('Cagliari', 'Cagliari', 'SARDEGNA ; Doppio Malto', 'Rosso ; Blu', 'Pisacane');
insert into Squadre values ('Como', 'Como', 'Uber', 'Blu Royal ; Bianco', 'Fabregas');
insert into Squadre values ('Cremonese', 'Cremona', 'Itainox ; Acciaieria Arvedi', 'Grigio ; Rosso', 'Nicola');
insert into Squadre values ('Fiorentna', 'Firenze', 'Mediacom', 'Viola', 'Pioli');
insert into Squadre values ('Genoa', 'Genova', 'Pulsee Luce e Gas', 'Rosso ; Blu', 'Vieira');
insert into Squadre values ('Hellas Verona', 'Verona', 'Aircash', 'Giallo ; Blu', 'Zanetti');
insert into Squadre values ('Inter', 'Milano', 'betsson.sport', 'Nero ; Azzurro', 'Chivu');
insert into Squadre values ('Juventus', 'Torino', 'Jeep ; Visit Detroit', 'Bianco ; Nero', 'Tudor');
insert into Squadre values ('Lazio', 'Roma', 'Mizuno', 'Bianco ; Celeste', 'Sarri');
insert into Squadre values ('Lecce', 'Lecce', 'Betitalypay ; Deghi', 'Giallo ; Rosso', 'Di Francesco');
insert into Squadre values ('Milan', 'Milano', 'Emirates', 'Rosso ; Nero', 'Allegri');
insert into Squadre values ('Napoli', 'Napoli', 'MSC Crociere', 'Azzurro ; Bianco', 'Conte');
insert into Squadre values ('Parma', 'Parma', 'Prometeon', 'Bianco ; Nero ; Giallo ; Blu', 'Cuesta');
insert into Squadre values ('Pisa', 'Pisa', 'Cetilar', 'Nero ; Azzurro', 'Gilardino');
insert into Squadre values ('Roma', 'Roma', 'Adidas', 'Giallo ; Rosso', 'Gasperini');
insert into Squadre values ('Sassuolo', 'Sassuolo', 'Mapei', 'Nero ; Verde', 'Grosso');
insert into Squadre values ('Torino', 'Torino', 'Suzuki', 'Granata', 'Baroni');
insert into Squadre values ('Udinese', 'Udine', 'Io sono Friuli Venezia Giulia ; Banca 360', 'Bianco ; Nero', 'Runjaić');


INSERT INTO Giocatori (Squadra, Numero, Nome, Cognome, DataNascita, Ruolo)
VALUES
('Atalanta', 29, 'Marco', 'Carnesecchi', '2000-07-01', 'Portiere'),
('Atalanta', 57, 'Marco', 'Sportiello', '1992-05-10', 'Portiere'),
('Atalanta', 31, 'Francesco', 'Rossi', '1991-04-27', 'Portiere'),
('Atalanta', 42, 'Giorgio', 'Scalvini', '2003-12-11', 'Difensore'),
('Atalanta', 4, 'Isak', 'Hien', '1999-01-13', 'Difensore'),
('Atalanta', 3, 'Odilon', 'Kossounou', '2001-01-04', 'Difensore'),
('Atalanta', 23, 'Sead', 'Kolasinac', '1993-06-20', 'Difensore'),
('Atalanta', 19, 'Berat', 'Djimsiti', '1993-02-19', 'Difensore'),
('Atalanta', 5, 'Mitchel', 'Bakker', '2000-06-20', 'Difensore'),
('Atalanta', 69, 'Honest', 'Ahanor', '2008-02-23', 'Difensore'),
('Atalanta', 15, 'Marten', 'De Roon', '1991-03-29', 'Centrocampista'),
('Atalanta', 13, 'Éderson', '', '1999-07-07', 'Centrocampista'),
('Atalanta', 6, 'Yunus', 'Musah', '2002-11-29', 'Centrocampista'),
('Atalanta', 8, 'Mario', 'Pasalic', '1995-02-09', 'Centrocampista'),
('Atalanta', 44, 'Marco', 'Brescianini', '2000-01-20', 'Centrocampista'),
('Atalanta', 16, 'Raoul', 'Bellanova', '2000-05-17', 'Centrocampista'),
('Atalanta', 77, 'Davide', 'Zappacosta', '1992-06-11', 'Centrocampista'),
('Atalanta', 59, 'Nicola', 'Zalewski', '2002-01-23', 'Centrocampista'),
('Atalanta', 47, 'Lorenzo', 'Bernasconi', '2003-11-16', 'Centrocampista'),
('Atalanta', 17, 'Charles', 'De Ketelaere', '2001-03-10', 'Attaccante'),
('Atalanta', 10, 'Lazar', 'Samardzic', '2002-02-24', 'Attaccante'),
('Atalanta', 70, 'Daniel', 'Maldini', '2001-10-11', 'Attaccante'),
('Atalanta', 7, 'Kamaldeen', 'Sulemana', '2002-02-15', 'Attaccante'),
('Atalanta', 11, 'Ademola', 'Lookman', '1997-10-20', 'Attaccante'),
('Atalanta', 9, 'Gianluca', 'Scamacca', '1999-01-01', 'Attaccante'),
('Atalanta', 90, 'Nikola', 'Krstovic', '2000-04-05', 'Attaccante'),
('Bologna', 1, 'Lukasz', 'Skorupski', '1991-05-05', 'Portiere'),
('Bologna', 13, 'Federico', 'Ravaglia', '1999-11-11', 'Portiere'),
('Bologna', 25, 'Matteo', 'Pessina', '2007-12-25', 'Portiere'),
('Bologna', 26, 'Jhon', 'Lucumí', '1998-06-26', 'Difensore'),
('Bologna', 41, 'Martin', 'Vitík', '2003-01-21', 'Difensore'),
('Bologna', 16, 'Nicolò', 'Casale', '1998-02-14', 'Difensore'),
('Bologna', 14, 'Torbjørn', 'Heggen', '1999-01-12', 'Difensore'),
('Bologna', 0, 'Kevin', 'Bonifazi', '1996-05-19', 'Difensore'),
('Bologna', 33, 'Juan', 'Miranda', '2000-01-19', 'Difensore'),
('Bologna', 22, 'Charalampos', 'Lykogiannis', '1993-10-22', 'Difensore'),
('Bologna', 2, 'Emil', 'Holm', '2000-05-13', 'Difensore'),
('Bologna', 20, 'Nadir', 'Zortea', '1999-06-19', 'Difensore'),
('Bologna', 29, 'Lorenzo', 'De Silvestri', '1988-05-23', 'Difensore'),
('Bologna', 77, 'Ibrahim', 'Sulemana', '2003-05-22', 'Centrocampista'),
('Bologna', 6, 'Nikola', 'Moro', '1998-03-12', 'Centrocampista'),
('Bologna', 19, 'Lewis', 'Ferguson', '1999-08-24', 'Centrocampista'),
('Bologna', 4, 'Tommaso', 'Pobega', '1999-07-15', 'Centrocampista'),
('Bologna', 8, 'Remo', 'Freuler', '1992-04-15', 'Centrocampista'),
('Bologna', 21, 'Jens', 'Odgaard', '1999-03-31', 'Attaccante'),
('Bologna', 80, 'Giovanni', 'Fabbian', '2003-01-14', 'Attaccante'),
('Bologna', 30, 'Benja', 'Domínguez', '2003-09-19', 'Attaccante'),
('Bologna', 11, 'Jonathan', 'Rowe', '2003-04-30', 'Attaccante'),
('Bologna', 28, 'Nicolò', 'Cambiaghi', '2000-12-28', 'Attaccante'),
('Bologna', 7, 'Riccardo', 'Orsolini', '1997-01-24', 'Attaccante'),
('Bologna', 10, 'Federico', 'Bernardeschi', '1994-02-16', 'Attaccante'),
('Bologna', 9, 'Santiago', 'Castro', '2004-09-18', 'Attaccante'),
('Bologna', 24, 'Thijs', 'Dallinga', '2000-08-03', 'Attaccante'),
('Bologna', 17, 'Ciro', 'Immobile', '1990-02-20', 'Attaccante'),
('Cagliari', 1, 'Elia', 'Caprile', '2001-08-25', 'Portiere'),
('Cagliari', 31, 'Boris', 'Radunovic', '1996-05-26', 'Portiere'),
('Cagliari', 24, 'Giuseppe', 'Ciocci', '2002-01-24', 'Portiere'),
('Cagliari', 6, 'Sebastiano', 'Luperto', '1996-09-06', 'Difensore'),
('Cagliari', 32, 'Zé', 'Pedro', '1997-06-06', 'Difensore'),
('Cagliari', 26, 'Yerry', 'Mina', '1994-09-23', 'Difensore'),
('Cagliari', 33, 'Adam', 'Obert', '2002-08-23', 'Difensore'),
('Cagliari', 15, 'Juan', 'Rodríguez', '2005-05-30', 'Difensore'),
('Cagliari', 23, 'Nicola', 'Pintus', '2005-05-25', 'Difensore'),
('Cagliari', 3, 'Riyad', 'Idrissi', '2005-06-13', 'Difensore'),
('Cagliari', 28, 'Gabriele', 'Zappa', '1999-12-22', 'Difensore'),
('Cagliari', 2, 'Marco', 'Palestra', '2005-03-03', 'Difensore'),
('Cagliari', 18, 'Alessandro', 'Di Pardo', '1999-07-18', 'Difensore'),
('Cagliari', 16, 'Matteo', 'Prati', '2003-12-28', 'Centrocampista'),
('Cagliari', 90, 'Michael', 'Folorunsho', '1998-02-07', 'Centrocampista'),
('Cagliari', 8, 'Michel', 'Adopo', '2000-07-19', 'Centrocampista'),
('Cagliari', 14, 'Alessandro', 'Deiola', '1995-08-01', 'Centrocampista'),
('Cagliari', 4, 'Luca', 'Mazzitelli', '1995-11-15', 'Centrocampista'),
('Cagliari', 20, 'Marko', 'Rog', '1995-07-19', 'Centrocampista'),
('Cagliari', 10, 'Gianluca', 'Gaetano', '2000-05-05', 'Centrocampista'),
('Cagliari', 21, 'Nicolò', 'Cavuoti', '2003-04-04', 'Attaccante'),
('Cagliari', 17, 'Mattia', 'Felici', '2001-04-17', 'Attaccante'),
('Cagliari', 94, 'Sebastiano', 'Esposito', '2002-07-02', 'Attaccante'),
('Cagliari', 9, 'Semih', 'Kılıçsoy', '2005-08-15', 'Attaccante'),
('Cagliari', 77, 'Zito', 'Luvumbo', '2002-03-09', 'Attaccante'),
('Cagliari', 29, 'Gennaro', 'Borrelli', '2000-03-10', 'Attaccante'),
('Cagliari', 19, 'Andrea', 'Belotti', '1993-12-20', 'Attaccante'),
('Cagliari', 30, 'Leonardo', 'Pavoletti', '1988-11-26', 'Attaccante'),
('Como', 1, 'Jean', 'Butez', '1995-06-08', 'Portiere'),
('Como', 44, 'Nikola', 'Cavlina', '2002-06-02', 'Portiere'),
('Como', 12, 'Henrique', 'Menke', '2007-01-12', 'Portiere'),
('Como', 22, 'Mauro', 'Vigorito', '1990-05-22', 'Portiere'),
('Como', 34, 'Diego Carlos', 'Santos Silva', '1993-03-15', 'Difensore'),
('Como', 4, 'Alberto', 'Dossena', '1998-10-13', 'Difensore'),
('Como', 27, 'Stefan', 'Posch', '1997-05-14', 'Difensore'),
('Como', 14, 'Jacobo', 'Ramón', '2005-01-06', 'Difensore'),
('Como', 2, 'Marc Oliver', 'Kempf', '1995-01-28', 'Difensore'),
('Como', 5, 'Edoardo', 'Goldaniga', '1993-11-02', 'Difensore'),
('Como', 3, 'Álex', 'Valle', '2004-04-25', 'Difensore'),
('Como', 18, 'Alberto Moreno', 'Pérez', '1992-07-05', 'Difensore'),
('Como', 0, 'Marco', 'Sala', '1999-06-04', 'Difensore'),
('Como', 77, 'Ignace', 'Van der Brempt', '2002-04-01', 'Difensore'),
('Como', 31, 'Mërgim', 'Vojvoda', '1995-02-01', 'Difensore'),
('Como', 28, 'Ivan', 'Smolcic', '2000-08-17', 'Difensore'),
('Como', 23, 'Máximo', 'Perrone', '2003-01-07', 'Centrocampista'),
('Como', 6, 'Maxence', 'Caqueret', '2000-02-15', 'Centrocampista'),
('Como', 33, 'Lucas', 'Da Cunha', '2001-06-09', 'Centrocampista'),
('Como', 8, 'Sergi Roberto', 'Carnicer', '1992-02-07', 'Centrocampista'),
('Como', 10, 'Nico', 'Paz', '2004-09-08', 'Attaccante'),
('Como', 20, 'Marco', 'Baturina', '2003-02-16', 'Attaccante'),
('Como', 90, 'Simone', 'Verdi', '1992-07-12', 'Attaccante'),
('Como', 17, 'Jesús', 'Rodríguez', '2005-11-21', 'Attaccante'),
('Como', 38, 'Assane', 'Diao', '2005-09-07', 'Attaccante'),
('Como', 19, 'Nicolas', 'Kühn', '2000-01-01', 'Attaccante'),
('Como', 42, 'Jayden', 'Addai', '2005-08-26', 'Attaccante'),
('Como', 7, 'Álvaro', 'Morata', '1992-10-23', 'Attaccante'),
('Como', 11, 'Anastasios', 'Douvikas', '1999-08-02', 'Attaccante'),
('Como', 99, 'Alberto', 'Cerri', '1996-04-16', 'Attaccante'),
('Cremonese', 1, 'Emil', 'Audero', '1997-01-18', 'Portiere'),
('Cremonese', 16, 'Marco', 'Silvestri', '1991-03-02', 'Portiere'),
('Cremonese', 69, 'Lapo', 'Nava', '2004-01-22', 'Portiere'),
('Cremonese', 30, 'Mikayil', 'Faye', '2004-07-14', 'Difensore'),
('Cremonese', 6, 'Federico', 'Baschirotto', '1996-09-20', 'Difensore'),
('Cremonese', 15, 'Matteo', 'Bianchetti', '1993-03-17', 'Difensore'),
('Cremonese', 55, 'Francesco', 'Folino', '2002-01-23', 'Difensore'),
('Cremonese', 23, 'Federico', 'Ceccherini', '1992-05-11', 'Difensore'),
('Cremonese', 3, 'Giuseppe', 'Pezzella', '1997-11-29', 'Difensore'),
('Cremonese', 17, 'Leonardo', 'Sernicola', '1997-07-30', 'Difensore'),
('Cremonese', 24, 'Filippo', 'Terracciano', '2003-02-08', 'Difensore'),
('Cremonese', 4, 'Tommaso', 'Barbieri', '2002-08-26', 'Difensore'),
('Cremonese', 22, 'Romano', 'Floriani Mussolini', '2003-01-27', 'Difensore');
