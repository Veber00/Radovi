CREATE TABLE lovacka_udruga (
lovacka_udruga_id INTEGER CONSTRAINT lovacka_udruga_pk PRIMARY KEY,
naziv VARCHAR(30) NOT NULL,
zupanija VARCHAR(32) NOT NULL,
mjesto VARCHAR(30) NOT NULL,
broj_lovista INTEGER NOT NULL,
povrsina_lovista DECIMAL(10, 2) NOT NULL,
CONSTRAINT zupanija_broj_uq UNIQUE(zupanija, broj_lovista)
);

CREATE TABLE divljac (
divljac_id INTEGER CONSTRAINT divljac_pk PRIMARY KEY,
naziv VARCHAR(25) NOT NULL,
vrsta VARCHAR(20) NOT NULL,
spol VARCHAR(1) NOT NULL,
pocetak_lovidbe VARCHAR(5) NOT NULL,
zavrsetak_lovidbe VARCHAR(5) NOT NULL,
CONSTRAINT divljac_uq UNIQUE(naziv, vrsta, spol)
);

CREATE TABLE plan_gospodarenja (
lovacka_udruga_id INTEGER CONSTRAINT plan_gospodarenja_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id),
divljac_id INTEGER CONSTRAINT plan_gospodarenja_fk_divljac
REFERENCES divljac(divljac_id),
lovidbena_godina VARCHAR(5) NOT NULL,
dopusten_odstrijel INTEGER NOT NULL,
ostvareni_odstrijel INTEGER NOT NULL,
CONSTRAINT plan_gospodarenja_pk PRIMARY KEY(lovacka_udruga_id, divljac_id, lovidbena_godina)
);

CREATE TABLE lovno_tehnicki_objekt (
lovacka_udruga_id INTEGER CONSTRAINT lovno_tehnicki_objekt_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id),
naziv_objekta VARCHAR(20) NOT NULL,
mjesto VARCHAR(20) NOT NULL,
broj INTEGER NOT NULL,
CONSTRAINT lovno_tehnicki_objekt_pk PRIMARY KEY(broj, lovacka_udruga_id)
);

CREATE TABLE clanarina (
lovacka_udruga_id INTEGER CONSTRAINT clanarina_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id),
status VARCHAR(25) NOT NULL,
iznos DECIMAL(10, 2) NOT NULL,
CONSTRAINT clanarina_pk PRIMARY KEY(lovacka_udruga_id, status)
);

CREATE TABLE obradiva_povrsina (
lovacka_udruga_id INTEGER CONSTRAINT obradiva_povrsina_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id) NOT NULL,
obradiva_povrsina_id INTEGER CONSTRAINT obradiva_povrsina_pk PRIMARY KEY,
katastarska_opcina VARCHAR(30) NOT NULL,
broj_katastarske_cestice INTEGER NOT NULL,
povrsina DECIMAL(10, 2) NOT NULL,
CONSTRAINT obradiva_povrsina_uq UNIQUE(katastarska_opcina, broj_katastarske_cestice)
);

CREATE TABLE zemlja_kultura (
obradiva_povrsina_id INTEGER CONSTRAINT zemlja_kultura_fk_obradiva_povrsina
REFERENCES obradiva_povrsina(obradiva_povrsina_id),
kultura VARCHAR(20) NOT NULL,
datum_sjetve Date NOT NULL,
datum_berbe Date,
CONSTRAINT zemlja_kultura_pk PRIMARY KEY(obradiva_povrsina_id, datum_sjetve)
);

CREATE TABLE sredstva_za_rad (
lovacka_udruga_id INTEGER CONSTRAINT sredstva_za_rad_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id) NOT NULL,
stroj_id INTEGER CONSTRAINT sredstva_za_rad_pk PRIMARY KEY,
vrsta_stroja VARCHAR(20) NOT NULL,
model_stroja VARCHAR(20) NOT NULL,
marka VARCHAR(25) NOT NULL,
godina_proizvodnje VARCHAR(5) NOT NULL
);

CREATE TABLE celnici_tijela_udruge (
lovacka_udruga_id INTEGER CONSTRAINT celnici_tijela_udruge_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id),
oib VARCHAR(11) NOT NULL,
ime VARCHAR(12) NOT NULL,
prezime VARCHAR(15) NOT NULL,
spol VARCHAR(1) NOT NULL,
sluzba VARCHAR(15) NOT NULL,
datum_rodenja Date NOT NULL,
mjesto_rodenja VARCHAR(30) NOT NULL,
mjesto VARCHAR(20) NOT NULL,
adresa VARCHAR(35) NOT NULL,
telefon VARCHAR(15),
CONSTRAINT celnici_tijela_udruge_pk PRIMARY KEY(lovacka_udruga_id, oib)
);

CREATE TABLE clan (
oib VARCHAR(11) CONSTRAINT clan_pk PRIMARY KEY,
ime VARCHAR(12) NOT NULL,
prezime VARCHAR(15) NOT NULL,
spol VARCHAR(1) NOT NULL,
status VARCHAR(24) NOT NULL,
datum_rodenja Date NOT NULL,
mjesto_rodenja VARCHAR(30) NOT NULL,
mjesto VARCHAR(20) NOT NULL,
adresa VARCHAR(35) NOT NULL,
telefon VARCHAR(15)
);

CREATE TABLE prijem_u_clanstvo (
lovacka_udruga_id INTEGER CONSTRAINT prijem_u_clanstvo_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id),
oib VARCHAR(11) CONSTRAINT prijem_u_clanstvo_fk_clan
REFERENCES clan(oib),
datum_upisa Date NOT NULL,
datum_ispisa Date,
CONSTRAINT prijem_u_clanstvo PRIMARY KEY(lovacka_udruga_id, oib, datum_upisa)
);

CREATE TABLE mjesecna_dozvola (
lovacka_udruga_id INTEGER CONSTRAINT mjesecna_dozvola_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id) NOT NULL,
dozvola_id INTEGER CONSTRAINT mejsecna_dozvola_pk PRIMARY KEY,
godina VARCHAR(5) NOT NULL,
mjesec VARCHAR(10) NOT NULL,
oib VARCHAR(11) CONSTRAINT mjesecna_dozvola_fk_clan
REFERENCES clan(oib) NOT NULL,
CONSTRAINT mjesecna_dozvola_uq UNIQUE(lovacka_udruga_id, oib, godina, mjesec)
);

CREATE TABLE dozvoljena_divljac_pojedinacni (
dozvola_id INTEGER CONSTRAINT dozvoljena_divljac_pojedinacni_fk_mjesecna_dozvola
REFERENCES mjesecna_dozvola(dozvola_id),
divljac_id INTEGER CONSTRAINT dozvoljena_divljac_pojedinacni_fk_divljac
REFERENCES divljac(divljac_id),
dopusten_broj_odstrijela INTEGER NOT NULL,
ostvaren_broj_odstrijela INTEGER NOT NULL,
CONSTRAINT dozvoljena_divljac_pojedinacni_pk PRIMARY KEY(dozvola_id, divljac_id)
);

CREATE TABLE skupni_lov (
lovacka_udruga_id INTEGER CONSTRAINT skupni_lov_fk_lovacka_udruga
REFERENCES lovacka_udruga(lovacka_udruga_id) NOT NULL,
skupni_lov_id INTEGER CONSTRAINT skupni_lov_pk PRIMARY KEY,
mjesto VARCHAR(30) NOT NULL,
datum Date NOT NULL,
CONSTRAINT skupni_lov_uq UNIQUE(lovacka_udruga_id, mjesto, datum)
);

CREATE TABLE lov (
skupni_lov_id INTEGER CONSTRAINT lov_fk_skupni_lov
REFERENCES skupni_lov(skupni_lov_id),
oib VARCHAR(11) CONSTRAINT lov_fk_clan
REFERENCES clan(oib),
CONSTRAINT lov_pk PRIMARY KEY(skupni_lov_id, oib)
);

CREATE TABLE dozvoljena_divljac_skupni (
skupni_lov_id INTEGER CONSTRAINT dozvoljena_divljac_skupni_fk_skupni_lov
REFERENCES skupni_lov(skupni_lov_id),
divljac_id INTEGER CONSTRAINT dozvoljena_divljac_skupni_fk_divljac
REFERENCES divljac(divljac_id),
dopusteni_broj_odstrijela INTEGER NOT NULL,
ostvareni_broj_odstrijela INTEGER NOT NULL,
CONSTRAINT dozvoljena_divljac_skupni PRIMARY KEY(skupni_lov_id, divljac_id)
);

--UNOS LOVACKIH UDRUGA
-------------------------------------------------------------------------------------------
INSERT INTO lovacka_udruga (lovacka_udruga_id, naziv, zupanija, mjesto, broj_lovista, povrsina_lovista)
VALUES (1, 'Fazan', 'Osjecko-baranjska', 'Podgajci Podravski', 143, 6818);

INSERT INTO lovacka_udruga (lovacka_udruga_id, naziv, zupanija, mjesto, broj_lovista, povrsina_lovista)
VALUES (2, 'Lane', 'Vukovarsko-srijemska', 'Bogdanovci', 112, 3218);

INSERT INTO lovacka_udruga (lovacka_udruga_id, naziv, zupanija, mjesto, broj_lovista, povrsina_lovista)
VALUES (3, 'Muflon', 'Primorsko-goranska', 'Bribir', 240, 2393);



SELECT * FROM lovacka_udruga;



--UNOS DIVLJACI U HLS-u
-------------------------------------------------------------------------------------------------------------
INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (1, 'jelen', 'krupna divljac', 'M', '16/08', '15/02');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (2, 'kosuta', 'krupna divljac', 'Z', '01/09', '16/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (3, 'tele', 'krupna divljac', 'M', '01/09', '28/02');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (4, 'tele', 'krupna divljac', 'Z', '01/09', '28/02');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (5, 'jelen lopatar', 'krupna divljac', 'M', '16/09', '15/02');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (6, 'kosuta lopatar', 'krupna divljac', 'Z', '01/10', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (7, 'tele lopatar', 'krupna divljac', 'M', '01/10', '28/02');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (8, 'tele lopatar', 'krupna divljac', 'Z', '01/10', '28/02');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (9, 'srnjak', 'krupna divljac', 'M', '16/04', '30/09');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (10, 'srna', 'krupna divljac', 'Z', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (11, 'lane', 'krupna divljac', 'Z', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (12, 'lane', 'krupna divljac', 'M', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (13, 'divokoza', 'krupna divljac', 'M', '01/10', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (14, 'divokoza', 'krupna divljac', 'Z', '01/10', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (15, 'muflon', 'krupna divljac', 'M', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (16, 'muflonka', 'krupna divljac', 'Z', '01/08', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (17, 'janje', 'krupna divljac', 'Z', '01/08', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (18, 'janje', 'krupna divljac', 'M', '01/08', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (19, 'vepar', 'krupna divljac', 'M', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (20, 'prase', 'krupna divljac', 'M', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (21, 'prase', 'krupna divljac', 'Z', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (22, 'krmaca', 'krupna divljac', 'Z', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (23, 'zec', 'sitna divljac', 'M', '01/09', '15/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (24, 'zec', 'sitna divljac', 'Z', '01/09', '15/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (25, 'lisica', 'sitna divljac', 'M', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (26, 'lisica', 'sitna divljac', 'Z', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (27, 'cagalj', 'sitna divljac', 'M', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (28, 'cagalj', 'sitna divljac', 'Z', '01/01', '31/12');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (29, 'fazan', 'sitna divljac', 'M', '16/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (30, 'fazanka', 'sitna divljac', 'Z', '16/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (31, 'gluhara', 'divlja patka', 'M', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (32, 'gluhara', 'divlja patka', 'Z', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (33, 'krunasta', 'divlja patka', 'M', '01/09', '31/01');

INSERT INTO divljac (divljac_id, naziv, vrsta, spol, pocetak_lovidbe, zavrsetak_lovidbe)
VALUES (34, 'krunasta', 'divlja patka', 'Z', '01/09', '31/01');

SELECT * FROM divljac;



--UNOS PLANA GOSPODARENJA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
-------------------------------------------------------------------------------------------------------
INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 20, 18, 1, 9);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 15, 11, 1, 10);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 2, 2, 1, 11);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 3, 3, 1, 12);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 9, 6, 1, 1);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 10, 6, 1, 2);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 4, 2, 1, 3);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 4, 1, 1, 4);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 14, 12, 1, 19);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 8, 4, 1, 20);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 6, 2, 1, 21);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 13, 13, 1, 22);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 8, 6, 1, 23);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 10, 7, 1, 24);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 4, 2, 1, 25);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 8, 6, 1, 26);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 4, 3, 1, 27);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 1, 1, 1, 28);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 11, 10, 1, 29);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 8, 6, 1, 30);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 5, 5, 1, 31);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2018', 3, 1, 1, 32);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 12, 11, 1, 1);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 10, 10, 1, 2);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 8, 7, 1, 3);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 8, 8, 1, 4);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 17, 16, 1, 9);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 12, 10, 1, 10);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 3, 1, 1, 11);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 1, 1, 1, 12);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 16, 13, 1, 19);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 8, 7, 1, 20);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 8, 8, 1, 21);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 15, 13, 1, 22);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 12, 11, 1, 23);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 7, 3, 1, 24);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 6, 4, 1, 25);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 10, 9, 1, 26);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 5, 5, 1, 27);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 4, 3, 1, 28);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 14, 14, 1, 29);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 12, 11, 1, 30);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 8, 7, 1, 31);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2019', 5, 5, 1, 32);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 10, 7, 1, 1);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 10, 3, 1, 2);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 6, 1, 1, 3);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 7, 3, 1, 4);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 16, 8, 1, 9);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 8, 3, 1, 10);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 3, 0, 1, 11);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 4, 1, 1, 12);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 15, 9, 1, 19);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 8, 1, 1, 20);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 8, 3, 1, 21);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 18, 8, 1, 22);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 7, 3, 1, 23);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 6, 0, 1, 24);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 3, 3, 1, 25);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 2, 1, 1, 26);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 3, 2, 1, 27);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 4, 1, 1, 28);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 7, 4, 1, 29);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 7, 2, 1, 30);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 3, 2, 1, 31);

INSERT INTO plan_gospodarenja (lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel, lovacka_udruga_id, divljac_id)
VALUES ('2020', 4, 0, 1, 32);

SELECT * FROM plan_gospodarenja;

-- UNOS LOVNO TEHNICKIH OBJEKATA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
------------------------------------------------------------------------------------------------------------------------------
INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (1, 'ceka', 'adica', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (2, 'ceka', 'topolovka', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (3, 'ceka', 'brijest', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (4, 'ceka', 'sumik', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (5, 'ceka', 'rit', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (6, 'hraniliste', 'adica', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (7, 'hraniliste', 'udina', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (8, 'hraniliste', 'zorik', 1);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (9, 'solana', 'otok', 1);

SELECT * FROM lovno_tehnicki_objekt;

--UNOS OBRADIVIH POVRSINA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
--------------------------------------------------------------------------------------------
INSERT INTO obradiva_povrsina (obradiva_povrsina_id, katastarska_opcina, broj_katastarske_cestice, povrsina, lovacka_udruga_id)
VALUES (1, 'Donji Miholjac', 123, 5, 1);

INSERT INTO obradiva_povrsina (obradiva_povrsina_id, katastarska_opcina, broj_katastarske_cestice, povrsina, lovacka_udruga_id)
VALUES (2, 'Donji Miholjac', 77, 7.3, 1);

SELECT * FROM obradiva_povrsina;


--UNOS KULTURE NA OBRADIVOJ POVRSINI ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
-------------------------------------------------------------------------------------------------
INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('kukuruz', '15/04/2018', '18/09/2018', 1);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('jecam', '20/09/2017', '19/06/2018', 2);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('zito', '22/09/2018', '25/06/2019', 1);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('zito', '21/09/2018', '25/06/2019', 2);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('jecam', '16/09/2019', '25/06/2020', 1);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('kukuruz', '16/04/2020', '17/09/2020', 2);

SELECT * FROM zemlja_kultura;

--UNOS SREDSTAVA ZA RAD ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
---------------------------------------------------------------------------------------------------------------------------
INSERT INTO sredstva_za_rad (stroj_id, vrsta_stroja, marka, model_stroja, godina_proizvodnje, lovacka_udruga_id)
VALUES (1, 'traktor', 'John Deere', '6130', '2009', 1);

INSERT INTO sredstva_za_rad (stroj_id, vrsta_stroja, marka, model_stroja, godina_proizvodnje, lovacka_udruga_id)
VALUES (2, 'tarup', 'kefeli', '2000', '2011', 1);

INSERT INTO sredstva_za_rad (stroj_id, vrsta_stroja, marka, model_stroja, godina_proizvodnje, lovacka_udruga_id)
VALUES (3, 'sijacica', 'isaria', '6000s', '2007', 1);

INSERT INTO sredstva_za_rad (stroj_id, vrsta_stroja, marka, model_stroja, godina_proizvodnje, lovacka_udruga_id)
VALUES (4, 'sijacica', 'kuhn', '65ti', '2012', 1);

INSERT INTO sredstva_za_rad (stroj_id, vrsta_stroja, marka, model_stroja, godina_proizvodnje, lovacka_udruga_id)
VALUES (5, 'prikolica', 'hittner', 'zone', '2015', 1);

SELECT * FROM sredstva_za_rad;


--UNOS CLANARINA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
-----------------------------------------------------------------------------------------------------------------------
INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (1, 'povlasteni clan', 300);

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (1, 'pocasni clan', 0);

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (1, 'redovni clan', 1200);

SELECT * FROM clanarina;


--UNOS CLANOVA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
------------------------------------------------------------------------------------------------------------------------
INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('25469874653', 'Ivan', 'Tomic', 'M', 'redovni clan', '28/02/1972', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 184', '099 788 6565');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('45669855472', 'Petar', 'Lucina', 'M', 'redovni clan', '23/07/1962', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 32', '099 558 7865');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('47567793668', 'Damir', 'Bartic', 'M', 'redovni clan', '07/02/1969', 'Osijek', 'Podravski Podgajci', 'Stjepana Radica 56', '098 713 4599');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('56998868235', 'Franjo', 'Kovac', 'M', 'redovni clan', '01/07/1982', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 17', '099 223 6775');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('57786332124', 'Ivan', 'Kemet', 'M', 'redovni clan', '02/02/1993', 'Nasice', 'Podravski Podgajci', 'Stjepana Radica 125', '098 363 8558');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('85669632365', 'Kruno', 'Basic', 'M', 'pocasni clan', '08/12/1949', 'Osijek', 'Podravski Podgajci', 'Stjepana Radica 77', '098 466 5896');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('16647758599', 'Zvonko', 'Novak', 'M', 'pocasni clan', '03/02/1947', 'Osijek', 'Podravski Podgajci', 'Kolodvorska 56', '099 554 7012');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('45699876533', 'Ante', 'Prebeg', 'M', 'povlasteni clan', '21/10/1954', 'Nasice', 'Podravski Podgajci', 'Stjepana Radica 22', '099 517 3120');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('47566993668', 'Vilim', 'Sabo', 'M', 'povlasteni clan', '16/05/1953', 'Osijek', 'Podravski Podgajci', 'Vladimira Nazora 44', '098 222 9863');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('56996332658', 'Nikola', 'Ivkovic', 'M', 'povlasteni clan', '17/09/1953', 'Nasice', 'Sveti Durad', 'Antuna Radica 74', '098 111 4499');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('55486695234', 'Stjepan', 'Zupan', 'M', 'redovni clan', '06/11/1999', 'Osijek', 'Sveti Durad', 'Antuna Radica 7', '098 444 7477');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('54774788963', 'Luka', 'Lovric', 'M', 'redovni clan', '28/01/2000', 'Nasice', 'Podravski Podgajci', 'Kolodvorska 13', '098 336 4895');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('69885454251', 'Mato', 'Terek', 'M', 'redovni clan', '27/12/1987', 'Osijek', 'Marijanci', 'Skolska 98', '098 546 7895');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('98596558745', 'Darko', 'Niksic', 'M', 'redovni clan', '25/07/2000', 'Osijek', 'Marijanci', 'Skolska 66', '099 123 7896');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('78945612345', 'Mato', 'Boljkovac', 'M', 'redovni clan', '13/05/1985', 'Osijek', 'Sveti Durad', 'Matije Gupca 14', '099 963 8524');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('74185296315', 'Nikola', 'Mihaljevic', 'M', 'redovni clan', '19/04/1985', 'Nasice', 'Sveti Durad', 'Antuna Radica 87', '099 519 6785');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('41845615947', 'Tomo', 'Majdenic', 'M', 'redovni clan', '04/06/1976', 'Osijek', 'Marijanci', 'Nikole Tesle 182', '099 195 4415');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('47547893668', 'Goran', 'Kovacevic', 'M', 'redovni clan', '21/04/1971', 'Osijek', 'Podravski Podgajci', 'Kolodvorska 6', '099 481 5252');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('48526699366', 'Damir', 'Dekic', 'M', 'redovni clan', '07/09/1974', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 184', '099 354 3718');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('55447744787', 'Tomislav', 'Perkovic', 'M', 'redovni clan', '27/10/1977', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 99', '099 258 2588');


SELECT * FROM clan;

--UNOS PRIJEMA U CLANSTVO ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
---------------------------------------------------------------------------------------------------------------------------------------------------
INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('07/08/1995', 1, '25469874653');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('12/03/1989', 1, '45669855472');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('17/08/1989', 1, '47567793668');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('13/11/2005', 1, '56998868235');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('01/02/2003', 1, '57786332124');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('03/06/1988', 1, '85669632365');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('04/09/1988', 1, '16647758599');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('07/08/1994', 1, '45699876533');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('21/05/1994', 1, '47566993668');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('15/04/1997', 1, '56996332658');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('24/02/2018', 1, '55486695234');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('12/02/2020', 1, '54774788963');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('26/12/2009', 1, '69885454251');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('05/05/2020', 1, '98596558745');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('05/05/2008', 1, '78945612345');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('19/07/2009', 1, '74185296315');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('08/03/2002', 1, '41845615947');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('14/04/1998', 1, '47547893668');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('22/05/1999', 1, '48526699366');

INSERT INTO prijem_u_clanstvo (datum_upisa, datum_ispisa, lovacka_udruga_id, oib)
VALUES ('08/09/1997', '02/04/2002', 1, '55447744787');


SELECT * FROM prijem_u_clanstvo;


--UNOS CELNIKA I TIJELA LOVACKE UDRUGE "FAZAN" POD. PODG.
---------------------------------------------------------------------------------------
INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('47547893668', 'Goran', 'Kovacevic', 'M', 'predsjednik', '21/04/1971', 'Osijek', 'Podravski Podgajci', 'Kolodvorska 6', '099 481 5252', 1);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('48526699366', 'Damir', 'Dekic', 'M', 'tajnik', '07/09/1974', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 184', '099 354 3718', 1);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('45699876533', 'Ante', 'Prebeg', 'M', 'lovnik', '21/10/1954', 'Nasice', 'Podravski Podgajci', 'Stjepana Radica 22', '099 517 3120', 1);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('45669855472', 'Petar', 'Lucina', 'M', 'riznicar', '23/07/1962', 'Nasice', 'Podravski Podgajci', 'Vladimira Nazora 32', '099 558 7865', 1);


SELECT * FROM celnici_tijela_udruge;


--UNOS MJESECNIH DOZVOLA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
---------------------------------------------------------------------------------------------
INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (1, 1, 'sijecanj', '2018', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (2, 1, 'travanj', '2018', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (3, 1, 'svibanj', '2018', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (4, 1, 'rujan', '2018', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (5, 1, 'prosinac', '2018', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (65, 1, 'veljaca', '2019', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (66, 1, 'travanj', '2019', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (67, 1, 'lipanj', '2019', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (68, 1, 'rujan', '2019', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (127, 1, 'sijecanj', '2020', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (128, 1, 'travanj', '2020', '25469874653');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (6, 1, 'veljaca', '2018', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (7, 1, 'svibanj', '2018', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (8, 1, 'rujan', '2018', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (69, 1, 'veljaca', '2019', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (70, 1, 'ozujak', '2019', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (71, 1, 'svibanj', '2019', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (72, 1, 'listopad', '2019', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (129, 1, 'ozujak', '2020', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (130, 1, 'lipanj', '2020', '45669855472');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (9, 1, 'sijecanj', '2018', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (10, 1, 'travanj', '2018', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (11, 1, 'rujan', '2018', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (12, 1, 'studeni', '2018', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (73, 1, 'ozujak', '2019', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (74, 1, 'travanj', '2019', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (75, 1, 'lipanj', '2019', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (76, 1, 'prosinac', '2019', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (131, 1, 'sijecanj', '2020', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (132, 1, 'ozujak', '2020', '47567793668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (13, 1, 'veljaca', '2018', '56998868235');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (14, 1, 'lipanj', '2018', '56998868235');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (77, 1, 'sijecanj', '2019', '56998868235');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (78, 1, 'ozujak', '2019', '56998868235');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (79, 1, 'studeni', '2019', '56998868235');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (133, 1, 'travanj', '2020', '56998868235');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (15, 1, 'sijecanj', '2018', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (16, 1, 'ozujak', '2018', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (17, 1, 'kolovoz', '2018', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (18, 1, 'prosinac', '2018', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (80, 1, 'sijecanj', '2019', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (81, 1, 'travanj', '2019', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (82, 1, 'kolovoz', '2019', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (83, 1, 'studeni', '2019', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (84, 1, 'prosinac', '2019', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (134, 1, 'ozujak', '2020', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (135, 1, 'svibanj', '2020', '57786332124');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (19, 1, 'sijecanj', '2018', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (20, 1, 'veljaca', '2018', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (21, 1, 'travanj', '2018', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (22, 1, 'rujan', '2018', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (85, 1, 'sijecanj', '2019', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (86, 1, 'rujan', '2019', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (136, 1, 'sijecanj', '2020', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (137, 1, 'ozujak', '2020', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (138, 1, 'svibanj', '2020', '85669632365');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (23, 1, 'sijecanj', '2018', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (24, 1, 'veljaca', '2018', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (25, 1, 'travanj', '2018', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (26, 1, 'rujan', '2018', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (87, 1, 'veljaca', '2019', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (88, 1, 'travanj', '2019', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (89, 1, 'srpanj', '2019', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (90, 1, 'rujan', '2019', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (91, 1, 'prosinac', '2019', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (139, 1, 'veljaca', '2020', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (140, 1, 'ozujak', '2020', '16647758599');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (27, 1, 'sijecanj', '2018', '45699876533');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (28, 1, 'travanj', '2018', '45699876533');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (29, 1, 'lipanj', '2018', '45699876533');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (92, 1, 'veljaca', '2019', '45699876533');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (141, 1, 'ozujak', '2020', '45699876533');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (142, 1, 'travanj', '2020', '45699876533');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (30, 1, 'sijecanj', '2018', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (31, 1, 'ozujak', '2018', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (32, 1, 'svibanj', '2018', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (33, 1, 'listopad', '2018', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (93, 1, 'travanj', '2019', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (94, 1, 'svibanj', '2019', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (95, 1, 'kolovoz', '2019', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (96, 1, 'rujan', '2019', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (97, 1, 'prosinac', '2019', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (143, 1, 'sijecanj', '2020', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (144, 1, 'veljaca', '2020', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (145, 1, 'svibanj', '2020', '47566993668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (34, 1, 'sijecanj', '2018', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (35, 1, 'travanj', '2018', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (36, 1, 'svibanj', '2018', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (37, 1, 'rujan', '2018', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (98, 1, 'sijecanj', '2019', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (99, 1, 'svibanj', '2019', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (100, 1, 'listopad', '2019', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (146, 1, 'ozujak', '2020', '56996332658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (38, 1, 'ozujak', '2018', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (39, 1, 'srpanj', '2018', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (40, 1, 'studeni', '2018', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (101, 1, 'veljaca', '2019', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (102, 1, 'ozujak', '2019', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (103, 1, 'srpanj', '2019', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (104, 1, 'studeni', '2019', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (147, 1, 'veljaca', '2020', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (148, 1, 'travanj', '2020', '55486695234');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (41, 1, 'travanj', '2018', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (42, 1, 'svibanj', '2018', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (43, 1, 'prosinac', '2018', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (105, 1, 'veljaca', '2019', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (106, 1, 'svibanj', '2019', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (107, 1, 'prosinac', '2019', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (149, 1, 'travanj', '2020', '54774788963');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (44, 1, 'ozujak', '2018', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (45, 1, 'travanj', '2018', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (46, 1, 'studeni', '2018', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (47, 1, 'prosinac', '2018', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (108, 1, 'sijecanj', '2019', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (109, 1, 'travanj', '2019', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (110, 1, 'listopad', '2019', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (111, 1, 'prosinac', '2019', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (150, 1, 'veljaca', '2020', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (151, 1, 'lipanj', '2020', '69885454251');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (48, 1, 'veljaca', '2018', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (49, 1, 'ozujak', '2018', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (50, 1, 'svibanj', '2018', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (51, 1, 'listopad', '2018', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (112, 1, 'travanj', '2019', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (113, 1, 'prosinac', '2019', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (152, 1, 'ozujak', '2020', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (153, 1, 'travanj', '2020', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (154, 1, 'svibanj', '2020', '98596558745');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (52, 1, 'veljaca', '2018', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (53, 1, 'srpanj', '2018', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (54, 1, 'kolovoz', '2018', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (55, 1, 'prosinac', '2018', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (114, 1, 'kolovoz', '2019', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (155, 1, 'sijecanj', '2020', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (156, 1, 'veljaca', '2020', '78945612345');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (56, 1, 'sijecanj', '2018', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (57, 1, 'srpanj', '2018', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (58, 1, 'listopad', '2018', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (115, 1, 'sijecanj', '2019', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (116, 1, 'srpanj', '2019', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (117, 1, 'kolovoz', '2019', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (157, 1, 'veljaca', '2020', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (158, 1, 'travanj', '2020', '74185296315');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (59, 1, 'sijecanj', '2018', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (60, 1, 'listopad', '2018', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (118, 1, 'sijecanj', '2019', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (119, 1, 'veljaca', '2019', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (120, 1, 'srpanj', '2019', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (121, 1, 'listopad', '2019', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (159, 1, 'ozujak', '2020', '41845615947');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (61, 1, 'travanj', '2018', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (62, 1, 'studeni', '2018', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (122, 1, 'travanj', '2019', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (123, 1, 'svibanj', '2019', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (124, 1, 'rujan', '2019', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (160, 1, 'svibanj', '2020', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (161, 1, 'lipanj', '2020', '47547893668');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (63, 1, 'svibanj', '2018', '48526699366');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (64, 1, 'prosinac', '2018', '48526699366');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (125, 1, 'veljaca', '2019', '48526699366');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (126, 1, 'prosinac', '2019', '48526699366');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (162, 1, 'sijecanj', '2020', '48526699366');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (163, 1, 'veljaca', '2020', '48526699366');


SELECT * FROM mjesecna_dozvola;


--UNOS DOZVOLJENIH DIVLJACI ZA POJEDINACNI LOV ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
----------------------------------------------------------------------------------------
INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 1, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 2, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 3, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 4, 11);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 5, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 6, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 7, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 8, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 8, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 9, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 10, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 11, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 12, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 13, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 13, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 14, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 15, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 16, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 17, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 18, 11);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 19, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 20, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 21, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 22, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 23, 12);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 24, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 25, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 26, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 27, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 27, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 28, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 29, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 30, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 31, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 32, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 33, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 34, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 35, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 36, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 37, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 38, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 39, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 39, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 40, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 40, 12);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 41, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 42, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 43, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 43, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 44, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 44, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 45, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 46, 27);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 47, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 0, 48, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 49, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 50, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 51, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 51, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 52, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 53, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 54, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 55, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 56, 12);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 57, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 58, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 58, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 59, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 60, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 60, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 61, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 62, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 62, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 63, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 64, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 64, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 65, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 66, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 67, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 67, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 68, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 69, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 0, 70, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 71, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 72, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 73, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 74, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 75, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 76, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 76, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 77, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 78, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 79, 31);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 79, 32);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 80, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 80, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 81, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 81, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 82, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 82, 27);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 83, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 84, 31);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 84, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 85, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 85, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 86, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 86, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 87, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 87, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 88, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 89, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 90, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 91, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 92, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 92, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 93, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 94, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 95, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 96, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 97, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 97, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 98, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 99, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 100, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 100, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 101, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 102, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 103, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 104, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 105, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 105, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 106, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 107, 31);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 107, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 108, 12);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 109, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 109, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 110, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 111, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 111, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 112, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 112, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 113, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 113, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 113, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 114, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 114, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 115, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 115, 31);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 116, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 117, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 118, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 119, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 120, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 121, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 122, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 122, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 123, 17);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 123, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 124, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 124, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 124, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 125, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 125, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 126, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 126, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 127, 12);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 127, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 128, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 129, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 130, 27);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 130, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 131, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 131, 31);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 132, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 133, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 133, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 134, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 134, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 135, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 136, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 136, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 137, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 138, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 139, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 139, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 140, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 141, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 142, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 143, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 143, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 144, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 145, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 146, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 146, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 147, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 148, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 149, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 150, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 151, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 152, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 153, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 154, 17);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 155, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 155, 31);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 156, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 157, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 158, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 159, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 159, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 160, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 161, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 162, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 163, 25);


SELECT * FROM dozvoljena_divljac_pojedinacni;


--UNOS SKUPNIH LOVOVA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
----------------------------------------------------------------------------------------------------------------------
INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (1, 1, '07/04/2018', 'topolovka');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (2, 1, '13/09/2018', 'rit');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (3, 1, '15/11/2018', 'otok');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (4, 1, '03/05/2019', 'rit');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (5, 1, '22/10/2019', 'adica');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (6, 1, '11/12/2019', 'brijest');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (7, 1, '28/01/2020', 'udina');


SELECT * FROM skupni_lov;


--UNOS SUDIONIKA U SKUPNIM LOVOVIMA ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
---------------------------------------------------------------------------------------------------------------------

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '25469874653');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '45669855472');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '47566993668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '56998868235');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '85669632365');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '47567793668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '69885454251');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (1, '47547893668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '45669855472');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '47566993668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '16647758599');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '56996332658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '55486695234');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (2, '48526699366');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '25469874653');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '56998868235');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '85669632365');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '45699876533');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '69885454251');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '98596558745');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '41845615947');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '47547893668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (3, '48526699366');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '25469874653');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '45669855472');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '47566993668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '85669632365');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '45699876533');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '56996332658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '69885454251');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '41845615947');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '47547893668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '48526699366');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (4, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '47547893668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '85669632365');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '45699876533');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '69885454251');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '41845615947');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '47566993668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '48526699366');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (5, '56996332658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '25469874653');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '45669855472');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '56998868235');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '85669632365');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '47566993668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '69885454251');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (6, '47547893668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '47547893668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '25469874653');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '47567793668');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '56998868235');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '98596558745');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '78945612345');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '48526699366');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '57786332124');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '85669632365');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (7, '41845615947');


SELECT * FROM lov;


--UNOS DOZVOLJENE DIVLJACI ZA SKUPNI LOV ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
-----------------------------------------------------------------------------------------------
INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 3, 9, 1);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (9, 3, 19, 1);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 2, 20, 1);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (7, 1, 22, 1);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 2, 27, 1);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (7, 3, 10, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 2, 1, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 1, 2, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (7, 4, 29, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 2, 30, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 3, 31, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 1, 32, 2);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 4, 19, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 6, 22, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 3, 23, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 3, 24, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 3, 26, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 2, 29, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 2, 30, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 31, 3);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (8, 4, 19, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 2, 20, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (7, 3, 22, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 26, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 2, 27, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 9, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (7, 3, 10, 4);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 3, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 1, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 24, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 4, 29, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 31, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 32, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 28, 5);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 2, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 4, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 10, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 11, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 19, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 4, 22, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 23, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 29, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 30, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 27, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 21, 6);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (7, 4, 1, 7);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (12, 6, 19, 7);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (12, 4, 22, 7);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 2, 29, 7);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (6, 3, 23, 7);


SELECT * FROM dozvoljena_divljac_skupni;


--UNOS PLANA GOSPODARENJA ZA LOVACKU UDRUGU "Lane" Bogdanovci
---------------------------------------------------------------------------------------------------------------------
INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 1, '2018', 2, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 2, '2018', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 3, '2018', 2, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 4, '2018', 1, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 5, '2018', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 6, '2018', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 7, '2018', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 8, '2018', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 9, '2018', 6, 6);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 10, '2018', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 11, '2018', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 12, '2018', 3, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 19, '2018', 7, 7);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 20, '2018', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 21, '2018', 7, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 22, '2018', 8, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 23, '2018', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 24, '2018', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 25, '2018', 2, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 26, '2018', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 27, '2018', 4, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 28, '2018', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 29, '2018', 6, 6);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 30, '2018', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 33, '2018', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 34, '2018', 6, 6);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 1, '2019', 2, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 2, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 3, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 4, '2019', 1, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 5, '2019', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 6, '2019', 6, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 7, '2019', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 8, '2019', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 9, '2019', 5, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 10, '2019', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 11, '2019', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 12, '2019', 3, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 19, '2019', 7, 7);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 20, '2019', 6, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 21, '2019', 7, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 22, '2019', 8, 6);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 23, '2019', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 24, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 25, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 26, '2019', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 27, '2019', 4, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 28, '2019', 6, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 29, '2019', 6, 6);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 30, '2019', 4, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 33, '2019', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 34, '2019', 7, 7);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 1, '2020', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 2, '2020', 2, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 3, '2020', 3, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 4, '2020', 3, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 5, '2020', 5, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 6, '2020', 4, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 7, '2020', 5, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 8, '2020', 4, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 9, '2020', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 10, '2020', 5, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 11, '2020', 2, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 12, '2020', 3, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 19, '2020', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 20, '2020', 6, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 21, '2020', 7, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 22, '2020', 7, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 23, '2020', 5, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 24, '2020', 4, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 25, '2020', 4, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 26, '2020', 4, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 27, '2020', 4, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 28, '2020', 5, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 29, '2020', 8, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 30, '2020', 4, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 33, '2020', 6, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (2, 34, '2020', 6, 4);


SELECT * FROM plan_gospodarenja;


--UNOS LOVNO TEHNICKIH OBJEKATA ZA LOVACKU UDRUGU "Lane" Bogdanovci
---------------------------------------------------------------------------------------------------------------------

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (1, 'ceka', 'smrk', 2);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (2, 'ceka', 'lopovac', 2);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (3, 'ceka', 'durmis', 2);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (4, 'hraniliste', 'dukovac', 2);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (5, 'hraniliste', 'stari hrast', 2);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (6, 'solana', 'dalj', 2);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (7, 'solana', 'durmis', 2);


SELECT * FROM lovno_tehnicki_objekt;


--UNOS CLANARINE ZA LOVACKU UDRUGU "Lane" Bogdanovci
------------------------------------------------------------------------------------------------
INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (2, 'redovni clan', 1400);

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (2, 'povlasteni clan', 500);

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (2, 'pocasni clan', 0);

SELECT * FROM clanarina;


--UNOS CLANOVA ZA LOVACKU UDRUGU "Lane" Bogdanovci
-------------------------------------------------------------------------------------------------

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('51234678978', 'Ivan', 'Peric', 'M', 'redovni clan', '28/02/1972', 'Vukovar', 'Bogdanovci', 'Matije Gupca 3', '099 788 6222');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('52134698789', 'Darko', 'Samarzic', 'M', 'redovni clan', '12/08/1975', 'Vukovar', 'Bogdanovci', 'Matije Gupca 4', '099 778 6232');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('53126454897', 'Dominik', 'Gumbas', 'M', 'redovni clan', '04/04/1985', 'Vukovar', 'Vukovar', 'Petra Preradovica', '099 888 6227');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('52231456996', 'Duro', 'Dakic', 'M', 'redovni clan', '27/07/1988', 'Vukovar', 'Bogdanovci', 'Matije Gupca 112', '099 788 6222');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('52111423658', 'Florijan', 'Sikic', 'M', 'redovni clan', '17/02/1982', 'Vukovar', 'Bogdanovci', 'Matije Gupca 72', '099 789 5232');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('52336696859', 'Dorijan', 'Markovic', 'M', 'redovni clan', '25/09/1972', 'Vukovar', 'Vukovar', 'Stanka Vraza 7', '098 566 8569');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('52669887454', 'Franjo', 'Delac', 'M', 'povlasteni clan', '11/01/1964', 'Vukovar', 'Bogdanovci', 'Matije Gupca 144', '098 558 4774');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('54774896594', 'Ivan', 'Horvat', 'M', 'pocasni clan', '06/06/1957', 'Vukovar', 'Vukovar', 'Stanka Vraza 158', '099 998 8998');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('54699898659', 'Darko', 'Dekic', 'M', 'povlasteni clan', '16/11/1962', 'Vukovar', 'Bogdanovci', 'Matije Gupca 96', '099 869 5585');


SELECT * FROM clan;


--UNOS PRIJEMA U CLANSTVO ZA LOVACKU UDRUGU "Lane" Bogdanovci
---------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('07/06/1997', 2, '51234678978');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('12/01/1999', 2, '52134698789');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('17/06/2007', 2, '53126454897');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('02/09/2010', 2, '52231456996');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('16/11/2004', 2, '52111423658');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('04/12/1996', 2, '52336696859');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('07/09/1990', 2, '52669887454');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('12/03/1987', 2, '54774896594');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('26/11/1995', 2, '54699898659');


SELECT * FROM prijem_u_clanstvo;


--UNOS SREDSTVA ZA RAD ZA LOVACKU UDRUGU "Lane" Bogdanovci
--------------------------------------------------------------------------------------------

INSERT INTO sredstva_za_rad (lovacka_udruga_id, stroj_id, vrsta_stroja, model_stroja, marka, godina_proizvodnje)
VALUES (2, 7, 'traktor', 'Iron', 'Same', '2011');

INSERT INTO sredstva_za_rad (lovacka_udruga_id, stroj_id, vrsta_stroja, model_stroja, marka, godina_proizvodnje)
VALUES (2, 9, 'sijacica', 'fx70', 'MaterMacc', '2008');

INSERT INTO sredstva_za_rad (lovacka_udruga_id, stroj_id, vrsta_stroja, model_stroja, marka, godina_proizvodnje)
VALUES (2, 10, 'prikolica', 'A65', 'Woz Anhanger', '2010');



--UNOS OBRADIVIH POVRSINA ZA LOVACKU UDRUGU "Lane" Bogdanovci
--------------------------------------------------------------------------------------------
INSERT INTO obradiva_povrsina (obradiva_povrsina_id, katastarska_opcina, broj_katastarske_cestice, povrsina, lovacka_udruga_id)
VALUES (3, 'Bogdanovci', 55, 2.3, 2);

SELECT * FROM obradiva_povrsina;


--UNOS KULTURE NA OBRADIVOJ POVRSINI ZA LOVACKU UDRUGU "FAZAN" POD. PODG.
-------------------------------------------------------------------------------------------------
INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('jecam', '19/09/2017', '23/06/2018', 3);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('zito', '25/09/2018', '25/06/2019', 3);

INSERT INTO zemlja_kultura (kultura, datum_sjetve, datum_berbe, obradiva_povrsina_id)
VALUES ('jecam', '18/09/2019', '22/06/2020', 3);

SELECT * FROM zemlja_kultura;


--UNOS CELNIKA I TIJELA LOVACKE UDRUGE "Lane" Bogdanovci
----------------------------------------------------------------------------------------------------------------

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('51234678978', 'Ivan', 'Peric', 'M', 'predsjednik', '28/02/1972', 'Vukovar', 'Bogdanovci', 'Matije Gupca 3', '099 788 6222', 2);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('54699898659', 'Darko', 'Dekic', 'M', 'tajnik', '16/11/1962', 'Vukovar', 'Bogdanovci', 'Matije Gupca 96', '099 869 5585', 2);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('52336696859', 'Dorijan', 'Markovic', 'M', 'lovnik', '25/09/1972', 'Vukovar', 'Vukovar', 'Stanka Vraza 7', '098 566 8569', 2);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('52669887454', 'Franjo', 'Delac', 'M', 'riznicar', '11/01/1964', 'Vukovar', 'Bogdanovci', 'Matije Gupca 144', '098 558 4774', 2);


SELECT * FROM celnici_tijela_udruge;


--UNOS MJESECNIH DOZVOLA ZA LOVACKU UDRUGU "Lane" Bogdanovci
---------------------------------------------------------------------------------------------

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (164, 2, 'sijecanj', '2018', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (165, 2, 'veljaca', '2018', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (166, 2, 'svibanj', '2018', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (167, 2, 'rujan', '2018', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (192, 2, 'sijecanj', '2019', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (193, 2, 'travanj', '2019', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (194, 2, 'rujan', '2019', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (218, 2, 'veljaca', '2020', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (219, 2, 'svibanj', '2020', '51234678978');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (168, 2, 'ozujak', '2018', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (169, 2, 'lipanj', '2018', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (170, 2, 'rujan', '2018', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (195, 2, 'veljaca', '2019', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (196, 2, 'lipanj', '2019', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (197, 2, 'prosinac', '2019', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (220, 2, 'sijecanj', '2020', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (221, 2, 'lipanj', '2020', '52134698789');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (171, 2, 'veljaca', '2018', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (172, 2, 'travanj', '2018', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (173, 2, 'rujan', '2018', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (198, 2, 'ozujak', '2019', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (199, 2, 'srpanj', '2019', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (222, 2, 'sijecanj', '2020', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (223, 2, 'travanj', '2020', '53126454897');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (174, 2, 'veljaca', '2018', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (175, 2, 'travanj', '2018', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (176, 2, 'studeni', '2018', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (200, 2, 'veljaca', '2019', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (201, 2, 'kolovoz', '2019', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (202, 2, 'listopad', '2019', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (224, 2, 'sijecanj', '2020', '52231456996');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (177, 2, 'sijecanj', '2018', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (178, 2, 'svibanj', '2018', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (179, 2, 'kolovoz', '2018', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (203, 2, 'sijecanj', '2019', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (204, 2, 'travanj', '2019', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (205, 2, 'listopad', '2019', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (225, 2, 'sijecanj', '2020', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (226, 2, 'ozujak', '2020', '52111423658');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (180, 2, 'sijecanj', '2018', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (181, 2, 'ozujak', '2018', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (182, 2, 'rujan', '2018', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (206, 2, 'veljaca', '2019', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (207, 2, 'rujan', '2019', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (208, 2, 'prosinac', '2019', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (227, 2, 'sijecanj', '2020', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (228, 2, 'travanj', '2020', '52336696859');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (183, 2, 'sijecanj', '2018', '52669887454');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (184, 2, 'travanj', '2018', '52669887454');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (185, 2, 'rujan', '2018', '52669887454');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (209, 2, 'svibanj', '2019', '52669887454');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (210, 2, 'kolovoz', '2019', '52669887454');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (229, 2, 'veljaca', '2020', '52669887454');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (186, 2, 'lipanj', '2018', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (187, 2, 'rujan', '2018', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (188, 2, 'prosinac', '2018', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (211, 2, 'lipanj', '2019', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (212, 2, 'rujan', '2019', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (213, 2, 'listopad', '2019', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (230, 2, 'svibanj', '2020', '54774896594');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (189, 2, 'sijecanj', '2018', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (190, 2, 'travanj', '2018', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (191, 2, 'rujan', '2018', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (214, 2, 'sijecanj', '2019', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (215, 2, 'svibanj', '2019', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (216, 2, 'srpanj', '2019', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (217, 2, 'prosinac', '2019', '54699898659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (231, 2, 'ozujak', '2020', '54699898659');


SELECT * FROM mjesecna_dozvola;


--UNOS DOZVOLJENE DIVLJACI ZA LOVACKU UDRUGU "Lane" Bogdanovci
------------------------------------------------------------------------------------------------------------

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 164, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 165, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 166, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 167, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 168, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 169, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 170, 33);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 171, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 171, 27);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 172, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 173, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 174, 6);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 174, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 175, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 175, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 176, 34);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 177, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 177, 7);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 178, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 179, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 180, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 180, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 181, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 182, 34);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 182, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 183, 8);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 183, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 184, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 184, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 185, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 186, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 187, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 187, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 188, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 189, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 190, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 191, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 192, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 192, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 193, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 194, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 195, 8);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 195, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 196, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 197, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 198, 7);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 198, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 199, 26);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 200, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 200, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 201, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 202, 33);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 203, 34);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 204, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 205, 7);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 206, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 207, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 208, 30);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 209, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (3, 1, 210, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 211, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 211, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 212, 34);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 213, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 214, 6);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 215, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 216, 20);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 217, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 218, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 218, 8);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 219, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 219, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 220, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 220, 29);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 221, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 221, 27);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 1, 222, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 0, 222, 12);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 223, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 224, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 224, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 225, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 225, 6);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 226, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 227, 33);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 228, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 228, 22);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 229, 5);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 229, 28);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 230, 19);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 230, 21);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 231, 25);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 231, 26);



SELECT * FROM dozvoljena_divljac_pojedinacni;


--UNOS SKUPNIH LOVOVA ZA LOVACKU UDRUGU "Lane" Bogdanovci
----------------------------------------------------------------------------------------------------------------------
INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (8, 2, '13/01/2018', 'durmis');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (9, 2, '01/04/2018', 'dalj');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (10, 2, '15/10/2018', 'stari hrast');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (11, 2, '05/02/2019', 'dalj');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (12, 2, '23/10/2019', 'stari hrast');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (13, 2, '24/11/2019', 'lopovac');

INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (14, 2, '09/01/2020', 'durmis');


SELECT * FROM skupni_lov;


--UNOS SUDIONIKA U SKUPNIM LOVOVIMA ZA LOVACKU UDRUGU "Lane" Bogdanovci
---------------------------------------------------------------------------------------------------------------------

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '51234678978');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '53126454897');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '52111423658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (8, '54699898659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '51234678978');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '52134698789');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '53126454897');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '52111423658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '52669887454');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (9, '54699898659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '52134698789');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '52111423658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '52669887454');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (10, '54699898659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '51234678978');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '53126454897');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '52111423658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (11, '54699898659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '53126454897');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '52111423658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '52669887454');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (12, '54699898659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '51234678978');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '52134698789');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '53126454897');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '52111423658');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '52669887454');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (13, '54699898659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '51234678978');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '52134698789');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '53126454897');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '52231456996');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '52336696859');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '52669887454');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '54774896594');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (14, '54699898659');


SELECT * FROM lov;


--UNOS DOZVOLJENE DIVLJACI ZA SKUPNI LOV ZA LOVACKU UDRUGU "Lane" Bogdanovci
-----------------------------------------------------------------------------------------------

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 1, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 23, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 33, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 2, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 7, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 29, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 10, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 11, 8);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 9, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 19, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 26, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 28, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 22, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 20, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 21, 9);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 3, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 4, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 5, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 6, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 30, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 34, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 24, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 8, 10);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 1, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 3, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 4, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 5, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 6, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (5, 5, 22, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 27, 11);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 29, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 30, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 7, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 23, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 20, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 21, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 24, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 25, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 34, 12);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 26, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 10, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 2, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 3, 8, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 11, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 12, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 19, 13);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 1, 14);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 2, 4, 14);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (3, 2, 19, 14);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (4, 4, 34, 14);


SELECT * FROM dozvoljena_divljac_skupni;


--UNOS PLANA GOSPODARENJA ZA LOVACKU UDRUGU "Muflon" Bribir
-------------------------------------------------------------------------------------------------------
INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 1, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 2, '2019', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 3, '2019', 1, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 4, '2019', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 9, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 10, '2019', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 11, '2019', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 12, '2019', 1, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 13, '2019', 6, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 14, '2019', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 15, '2019', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 16, '2019', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 17, '2019', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 18, '2019', 3, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 23, '2019', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 24, '2019', 3, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 1, '2020', 2, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 2, '2020', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 3, '2020', 2, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 4, '2020', 2, 0);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 9, '2020', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 10, '2020', 2, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 11, '2020', 1, 1);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 12, '2020', 3, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 13, '2020', 7, 7);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 14, '2020', 5, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 15, '2020', 6, 6);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 16, '2020', 5, 5);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 17, '2020', 3, 2);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 18, '2020', 4, 4);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 23, '2020', 3, 3);

INSERT INTO plan_gospodarenja (lovacka_udruga_id, divljac_id, lovidbena_godina, dopusten_odstrijel, ostvareni_odstrijel)
VALUES (3, 24, '2020', 2, 2);


SELECT * FROM plan_gospodarenja;


--UNOS CLANARINE ZA LOVACKU UDRUGU "Muflon" Bribir
---------------------------------------------------------------------------------------------------------------------

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (3, 'redovni clan', 1500);

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (3, 'povlasteni clan', 400);

INSERT INTO clanarina (lovacka_udruga_id, status, iznos)
VALUES (3, 'pocasni clan', 0);

SELECT * FROM clanarina;


--UNOS LOVNO TEHNICKIH OBJEKATA ZA LOVACKU UDRUGU "Muflon" Bribir
---------------------------------------------------------------------------------------------------------------------

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (1, 'ceka', 'liskovo', 3);

INSERT INTO lovno_tehnicki_objekt (broj, naziv_objekta, mjesto, lovacka_udruga_id)
VALUES (2, 'ceka', 'zalovac', 3);


SELECT * FROM lovno_tehnicki_objekt;


--UNOS CLANOVA ZA LOVACKU UDRUGU "Muflon" Bribir
-------------------------------------------------------------------------------------------------

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('55478878965', 'Fran', 'Koric', 'M', 'povlasteni clan', '05/06/1972', 'Crikvenica', 'Bribir', 'Primorska 52', '099 789 5999');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('56698994141', 'Stipe', 'Vujovic', 'M', 'redovni clan', '08/11/1974', 'Crikvenica', 'Bribir', 'Pavlinska 94', '098 646 3164');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('53323326987', 'Dominik', 'Svacic', 'M', 'redovni clan', '12/03/1985', 'Crikvenica', 'Crikvenica', 'Pavlinska 128', '098 469 9774');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('58448776958', 'Petar', 'Smajic', 'M', 'redovni clan', '22/08/1987', 'Crikvenica', 'Bribir', 'Pavlinska 38', '099 131 4649');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('58796669899', 'Antonio', 'Kolaric', 'M', 'redovni clan', '17/12/1995', 'Crikvenica', 'Bribir', 'Studenca 14', '099 879 9173');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('52884466958', 'Flip', 'Ribic', 'M', 'pocasni clan', '07/06/1965', 'Crikvenica', 'Bribir', 'Studenca 72', '099 513 3467');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('57334422659', 'Stjepan', 'Dalic', 'M', 'pocasni clan', '04/06/1967', 'Crikvenica', 'Crikvenica', 'Studenca 88', '099 182 3958');

INSERT INTO clan (oib, ime, prezime, spol, status, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon)
VALUES ('59778747714', 'Zdravko', 'Mamic', 'M', 'pocasni clan', '27/08/1965', 'Crikvenica', 'Bribir', 'Pavlinska 22', '099 748 4876');


SELECT * FROM clan;


--UNOS PRIJEMA U CLANSTVO ZA LOVACKU UDRUGU "Muflon" Bribir
---------------------------------------------------------------------------------------------------------------------------------------------------

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('05/04/1992', 3, '55478878965');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('07/04/1996', 3, '56698994141');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('21/07/2004', 3, '53323326987');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('23/11/2007', 3, '58448776958');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('07/03/2016', 3, '58796669899');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('05/11/1987', 3, '52884466958');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('05/11/1987', 3, '57334422659');

INSERT INTO prijem_u_clanstvo (datum_upisa, lovacka_udruga_id, oib)
VALUES ('02/07/1985', 3, '59778747714');


SELECT * FROM prijem_u_clanstvo;


--UNOS CELNIKA I TIJELA LOVACKE UDRUGE "Muflon" Bribir
----------------------------------------------------------------------------------------------------------------

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('59778747714', 'Zdravko', 'Mamic', 'M', 'predsjednik', '27/08/1965', 'Crikvenica', 'Bribir', 'Pavlinska 22', '099 748 4876', 3);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('58448776958', 'Petar', 'Smajic', 'M', 'tajnik', '22/08/1987', 'Crikvenica', 'Bribir', 'Pavlinska 38', '099 131 4649', 3);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('58796669899', 'Antonio', 'Kolaric', 'M', 'lovnik', '17/12/1995', 'Crikvenica', 'Bribir', 'Studenca 14', '099 879 9173', 3);

INSERT INTO celnici_tijela_udruge (oib, ime, prezime, spol, sluzba, datum_rodenja, mjesto_rodenja, mjesto, adresa, telefon, lovacka_udruga_id)
VALUES ('52884466958', 'Flip', 'Ribic', 'M', 'riznicar', '07/06/1965', 'Crikvenica', 'Bribir', 'Studenca 72', '099 513 3467', 3);


SELECT * FROM celnici_tijela_udruge;


--UNOS MJESECNIH DOZVOLA ZA LOVACKU UDRUGU "Muflon" Bribir
---------------------------------------------------------------------------------------------

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (232, 3, 'sijecanj', '2019', '55478878965');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (233, 3, 'travanj', '2019', '55478878965');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (251, 3, 'veljaca', '2020', '55478878965');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (252, 3, 'kolovoz', '2020', '55478878965');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (234, 3, 'veljaca', '2019', '56698994141');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (235, 3, 'kolovoz', '2019', '56698994141');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (253, 3, 'sijecanj', '2020', '56698994141');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (254, 3, 'svibanj', '2020', '56698994141');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (255, 3, 'prosinac', '2020', '56698994141');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (236, 3, 'svibanj', '2019', '53323326987');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (237, 3, 'listopad', '2019', '53323326987');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (256, 3, 'sijecanj', '2020', '53323326987');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (257, 3, 'rujan', '2020', '53323326987');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (258, 3, 'studeni', '2020', '53323326987');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (238, 3, 'sijecanj', '2019', '58448776958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (239, 3, 'listopad', '2019', '58448776958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (259, 3, 'ozujak', '2020', '58448776958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (260, 3, 'kolovoz', '2020', '58448776958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (261, 3, 'prosinac', '2020', '58448776958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (240, 3, 'sijecanj', '2019', '58796669899');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (241, 3, 'travanj', '2019', '58796669899');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (242, 3, 'prosinac', '2019', '58796669899');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (262, 3, 'travanj', '2020', '58796669899');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (263, 3, 'listopad', '2020', '58796669899');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (243, 3, 'ozujak', '2019', '52884466958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (244, 3, 'rujan', '2019', '52884466958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (245, 3, 'listopad', '2019', '52884466958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (264, 3, 'veljaca', '2020', '52884466958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (265, 3, 'rujan', '2020', '52884466958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (266, 3, 'listopad', '2020', '52884466958');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (246, 3, 'sijecanj', '2019', '57334422659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (247, 3, 'travanj', '2019', '57334422659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (248, 3, 'kolovoz', '2019', '57334422659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (267, 3, 'sijecanj', '2020', '57334422659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (268, 3, 'svibanj', '2020', '57334422659');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (249, 3, 'kolovoz', '2019', '59778747714');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (250, 3, 'rujan', '2019', '59778747714');

INSERT INTO mjesecna_dozvola (dozvola_id, lovacka_udruga_id, mjesec, godina, oib)
VALUES (269, 3, 'kolovoz', '2020', '59778747714');



SELECT * FROM mjesecna_dozvola;


--UNOS DOZVOLJENE DIVLJACI ZA LOVACKU UDRUGU "Muflon" Bribir
------------------------------------------------------------------------------------------------------------

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 232, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 232, 14);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 233, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 234, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 235, 17);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 235, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 236, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 236, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 237, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 237, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 238, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 238, 4);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 239, 18);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 239, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 239, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 240, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 240, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 241, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 241, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 242, 14);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 242, 16);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 243, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 244, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 244, 11);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 245, 14);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 246, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 246, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 247, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 248, 16);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 248, 17);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 249, 17);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 250, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (2, 2, 250, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 251, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 251, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 252, 16);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 253, 14);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 253, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 254, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 254, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 255, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 255, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 256, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 256, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 257, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 257, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 258, 16);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 258, 23);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 259, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 260, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 260, 17);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 261, 14);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 261, 24);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 262, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 263, 10);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 263, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 263, 18);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 264, 1);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 264, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 265, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 265, 16);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 266, 13);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 266, 14);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 267, 2);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 267, 3);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 268, 9);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 268, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 269, 15);

INSERT INTO dozvoljena_divljac_pojedinacni (dopusten_broj_odstrijela, ostvaren_broj_odstrijela, dozvola_id, divljac_id)
VALUES (1, 1, 269, 18);


SELECT * FROM dozvoljena_divljac_pojedinacni;


--UNOS SKUPNIH LOVOVA ZA LOVACKU UDRUGU "Muflon" Bribir
----------------------------------------------------------------------------------------------------------------------
INSERT INTO skupni_lov (skupni_lov_id, lovacka_udruga_id, datum, mjesto)
VALUES (15, 3, '02/12/2020', 'liskovo');


SELECT * FROM skupni_lov;



--UNOS SUDIONIKA U SKUPNIM LOVOVIMA ZA LOVACKU UDRUGU "Muflon" Bribir
---------------------------------------------------------------------------------------------------------------------
INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '55478878965');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '56698994141');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '53323326987');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '58448776958');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '58796669899');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '52884466958');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '57334422659');

INSERT INTO lov(skupni_lov_id, oib)
VALUES (15, '59778747714');


SELECT * FROM lov;


--UNOS DOZVOLJENE DIVLJACI ZA SKUPNI LOV ZA LOVACKU UDRUGU "Muflon" Bribir
-----------------------------------------------------------------------------------------------

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 10, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 11, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 12, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 13, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 14, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 16, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (1, 1, 17, 15);

INSERT INTO dozvoljena_divljac_skupni (dopusteni_broj_odstrijela, ostvareni_broj_odstrijela, divljac_id, skupni_lov_id)
VALUES (2, 2, 18, 15);


SELECT * FROM dozvoljena_divljac_skupni;


--UPITI
-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------

--DOHVACAMO SVAKU LOVACKU UDRUGU I SVE NJENE LOVNO TEHNICKE OBJEKTE (JOIN)
--------------------------------------------------------------------------------------------------------
SELECT l.naziv AS "LOVACKA UDRUGA", o.naziv_objekta AS "OBJEKT", o.mjesto, o.broj
FROM lovacka_udruga l INNER JOIN lovno_tehnicki_objekt o
USING (lovacka_udruga_id)
ORDER BY l.naziv, o.naziv_objekta;



--DOHVACAMO SVAKU LOVACKU UDRUGU, OBRADIVU POVRSINU KOJU POSJEDUJE, TE SVE KULTURE KOJE SU BILE NA TOJ POVRSINI (JOIN)
-----------------------------------------------------------------------------------------------------------
SELECT l.naziv AS "LOVACKA UDRUGA", p.katastarska_opcina AS "KATASTARSKA OPCINA", p.broj_katastarske_cestice AS "BROJ KATASTARSKE CESTICE", k.kultura, k.datum_sjetve AS "DATUM SJETVE", k.datum_berbe AS "DATUM BERBE"
FROM lovacka_udruga l FULL OUTER JOIN obradiva_povrsina p
USING (lovacka_udruga_id)
FULL OUTER JOIN zemlja_kultura k
USING (obradiva_povrsina_id)
ORDER BY l.naziv;



--DOHVACAMO PODATKE O CLANU TE PODATKE O NJEGOVIM DOZVOLAMA (JOIN)
------------------------------------------------------------------------------------------------------------
SELECT c.ime, c.prezime, c.status, c.mjesto, m.dozvola_id, m.godina, d.naziv, di.dopusten_broj_odstrijela, di.ostvaren_broj_odstrijela
FROM clan c INNER JOIN mjesecna_dozvola m
ON(c.oib = m.oib)
INNER JOIN dozvoljena_divljac_pojedinacni di
ON(di.dozvola_id = m.dozvola_id)
INNER JOIN divljac d
ON(d.divljac_id = di.divljac_id)
WHERE m.lovacka_udruga_id = 1 and c.oib = '25469874653'
ORDER BY m.godina;



--DOHVACAMO BROJ CLANOVA U SVAKOJ OD LOVACKIH UDRUGA (JOIN + AGREGIRAJUCA FUNKCIJA + PODUPIT)
------------------------------------------------------------------------------------------------------------
SELECT l.naziv AS "LOVACKA UDRUGA", COALESCE(upisani.broj_upisanih, 0) AS "BROJ UPISANIH", COALESCE(ispisani.broj_ispisanih, 0) AS "BROJ ISPISANIH"
FROM lovacka_udruga l FULL OUTER JOIN 
(SELECT lovacka_udruga_id, COUNT(datum_upisa) as broj_upisanih
FROM prijem_u_clanstvo
WHERE datum_ispisa IS NULL
GROUP BY lovacka_udruga_id) upisani
ON(l.lovacka_udruga_id = upisani.lovacka_udruga_id)
FULL OUTER JOIN
(SELECT lovacka_udruga_id, COUNT(datum_upisa) as broj_ispisanih
FROM prijem_u_clanstvo
WHERE datum_ispisa IS NOT NULL
GROUP BY lovacka_udruga_id) ispisani
ON(l.lovacka_udruga_id = ispisani.lovacka_udruga_id)
ORDER BY l.lovacka_udruga_id;



--DOHVACAMO SREDSTVA ZA RAD KOJA SU STARIJA OD PROSJEKA (JOIN + PODUPIT + AGREGIRAJUCA FUNKCIJA)
------------------------------------------------------------------------------------------------------------
SELECT lovacka_udruga_id, stroj_id, vrsta_stroja, model_stroja, marka, godina_proizvodnje
FROM sredstva_za_rad
WHERE godina_proizvodnje <
    (SELECT AVG(godina_proizvodnje)
    FROM sredstva_za_rad)
ORDER BY lovacka_udruga_id;




--DOHVACAMO DOPUSTEN I OSTVARENI BROJ ODSTRIJELA ZA SVAKU DIVLJAC U SVAKOM LOVU(POJEDINACNI I SKUPNI LOV) U 2020. GODINI (JOIN + SKUPOVNA OPERACIJA + AGREGIRAJUCA FUNKCIJA)
-----------------------------------------------------------------------------------------------------------
SELECT d.divljac_id, d.naziv, d.spol, REPLACE(p.lovidbena_godina, '2020', 'pojedinacni') AS "VRSTA LOVA", SUM(di.ostvaren_broj_odstrijela) AS "OSTVARENI ODSTRIJEL"
FROM mjesecna_dozvola m INNER JOIN dozvoljena_divljac_pojedinacni di
ON(m.dozvola_id = di.dozvola_id)
INNER JOIN divljac d
ON(d.divljac_id = di.divljac_id)
INNER JOIN plan_gospodarenja p
ON(d.divljac_id = p.divljac_id)
WHERE m.lovacka_udruga_id=1 and m.godina = '2020' and p.lovidbena_godina = '2020' and p.lovacka_udruga_id = 1
GROUP BY p.dopusten_odstrijel, d.spol, d.divljac_id, d.naziv, p.lovidbena_godina
UNION
SELECT div.divljac_id, div.naziv, div.spol, REPLACE(ps.lovidbena_godina, '2020', 'skupni') AS "VRSTA_LOVA", SUM(dsk.ostvareni_broj_odstrijela) AS "OSTVARENI ODSTRIJEL"
FROM skupni_lov sk INNER JOIN dozvoljena_divljac_skupni dsk
ON(sk.skupni_lov_id = dsk.skupni_lov_id)
INNER JOIN divljac div
ON(div.divljac_id = dsk.divljac_id)
INNER JOIN plan_gospodarenja ps
ON(div.divljac_id = ps.divljac_id)
WHERE sk.lovacka_udruga_id = 1 and EXTRACT(YEAR FROM sk.datum) = '2020' and ps.lovidbena_godina = '2020' and ps.lovacka_udruga_id = 1
GROUP BY ps.dopusten_odstrijel, div.spol, div.divljac_id, div.naziv, ps.lovidbena_godina
ORDER BY divljac_id;



--DOHVACAMO LOVACKE UDRUGE GDJE JE PROSJEK GODINA CLANOVA MANJI ILI JEDNAK PROSJEKU GODINA CLANOVA U SVIM UDRUGAMA(JOIN + AGREGIRAJUCA FUNKCIJA + PODUPIT)
----------------------------------------------------------------------------------------------------------------
SELECT l.lovacka_udruga_id, l.naziv, l.zupanija, (EXTRACT(YEAR FROM CURRENT_DATE) - FLOOR(AVG(EXTRACT(YEAR FROM c.datum_rodenja)))) AS "PROSIJEK GODINA"
FROM lovacka_udruga l INNER JOIN prijem_u_clanstvo p
ON(l.lovacka_udruga_id = p.lovacka_udruga_id)
INNER JOIN clan c
ON(p.oib = c.oib)
WHERE p.datum_ispisa IS NULL and l.lovacka_udruga_id = p.lovacka_udruga_id
HAVING (EXTRACT(YEAR FROM CURRENT_DATE) - FLOOR(AVG(EXTRACT(YEAR FROM c.datum_rodenja)))) <=
(SELECT (EXTRACT(YEAR FROM CURRENT_DATE) - FLOOR(AVG(EXTRACT(YEAR FROM ca.datum_rodenja))))
FROM lovacka_udruga la INNER JOIN prijem_u_clanstvo pa
ON(la.lovacka_udruga_id = pa.lovacka_udruga_id)
INNER JOIN clan ca
ON(pa.oib = ca.oib)
WHERE pa.datum_ispisa IS NULL and la.lovacka_udruga_id = pa.lovacka_udruga_id)
GROUP BY l.lovacka_udruga_id, l.naziv, l.zupanija;



--DOHVACAMO PODATKE O CLANU SA NAJVISE USTRELJENE DIVLJACI IZ ODREDENE LOVACKE UDRUGE (JOIN + AGREGIRAJUCA FUNKCIJA + KORELIRANI PODUPIT)
------------------------------------------------------------------------------------------------------
SELECT ca.oib, ca.ime, ca.prezime, suma.clan_suma
FROM clan ca INNER JOIN
(SELECT c.oib, SUM(d.ostvaren_broj_odstrijela) as clan_suma
FROM clan c INNER JOIN mjesecna_dozvola m
ON(c.oib = m.oib)
INNER JOIN dozvoljena_divljac_pojedinacni d
ON(m.dozvola_id = d.dozvola_id)
WHERE m.lovacka_udruga_id = 3
GROUP BY c.oib) suma
ON(ca.oib = suma.oib)
WHERE suma.clan_suma = 
(SELECT MAX(prva.prva_suma)
FROM(
SELECT c.oib, SUM(d.ostvaren_broj_odstrijela) as prva_suma
FROM clan c INNER JOIN mjesecna_dozvola m
ON(c.oib = m.oib)
INNER JOIN dozvoljena_divljac_pojedinacni d
ON(m.dozvola_id = d.dozvola_id)
WHERE m.lovacka_udruga_id = 3
GROUP BY c.oib) prva )
and ca.oib = suma.oib;

--popis clanova i broj divljaci koji su ustrijelili
SELECT c.oib, c.ime, c.prezime, SUM(d.ostvaren_broj_odstrijela) as clan_suma
FROM clan c INNER JOIN mjesecna_dozvola m
ON(c.oib = m.oib)
INNER JOIN dozvoljena_divljac_pojedinacni d
ON(m.dozvola_id = d.dozvola_id)
WHERE m.lovacka_udruga_id = 1
GROUP BY c.oib, c.ime, c.prezime
ORDER BY clan_suma;




--PROCEDURE
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------



--PROCEDURA - UNOŠENJE PODATAKA U TABLICU LOVACKA_UDRUGA
-----------------------------------------------------------------------------------------------------------------
CREATE SEQUENCE lovacka_udruga_sequence
    START WITH 4
    INCREMENT BY 1
    MAXVALUE 5000;

CREATE OR REPLACE PROCEDURE lovacka_udruga_insert (
l_naziv in lovacka_udruga.naziv%TYPE,
l_zupanija in lovacka_udruga.zupanija%TYPE,
l_mjesto in lovacka_udruga.mjesto%TYPE,
l_broj_lovista in lovacka_udruga.broj_lovista%TYPE,
l_povrsina_lovista in lovacka_udruga.povrsina_lovista%TYPE
) AS
l_counter INTEGER := 0;
BEGIN 
    SELECT COUNT(*)
    INTO l_counter
    FROM lovacka_udruga
    WHERE zupanija = l_zupanija and broj_lovista = l_broj_lovista;
    
    IF l_counter = 0 THEN
        INSERT INTO lovacka_udruga VALUES(lovacka_udruga_sequence.nextval, l_naziv, l_zupanija, l_mjesto, l_broj_lovista, l_povrsina_lovista);
        COMMIT;
    ELSE
        dbms_output.put_line('Pogreska kod unosa! Lovacka udruga vec unesena.');
        ROLLBACK;
    END IF;

END lovacka_udruga_insert;
/

SET SERVEROUTPUT ON;

CALL lovacka_udruga_insert('Jelen', 'Pozesko-slavonska', 'Kaptol', 23, 2800);

SELECT * FROM lovacka_udruga;
DELETE FROM lovacka_udruga WHERE naziv = 'Jelen';



--PROCEDURA - AZURIRANJE PODATAKA ZA TABLICU LOVACKA_UDRUGA
----------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE lovacka_udruga_update (
l_naziv in lovacka_udruga.naziv%TYPE,
l_zupanija in lovacka_udruga.zupanija%TYPE,
l_mjesto in lovacka_udruga.mjesto%TYPE,
l_broj_lovista in lovacka_udruga.broj_lovista%TYPE,
l_povrsina_lovista in lovacka_udruga.povrsina_lovista%TYPE
) AS
l_counter INTEGER := 0;
BEGIN 
    SELECT COUNT(*)
    INTO l_counter
    FROM lovacka_udruga
    WHERE zupanija = l_zupanija and broj_lovista = l_broj_lovista;
    
    IF l_counter = 1 THEN
        UPDATE lovacka_udruga
        SET naziv = l_naziv, mjesto = l_mjesto, povrsina_lovista = l_povrsina_lovista
        WHERE zupanija = l_zupanija and broj_lovista = l_broj_lovista;
        COMMIT;
    ELSE
        dbms_output.put_line('Pogreska kod unosa! Podatci se ne mogu azurirati. Lovacka udruga ne postoji.');
        ROLLBACK;
    END IF;

END lovacka_udruga_update;
/


CALL lovacka_udruga_update ('Jelen', 'Pozesko-slavonska', 'Kaptol', 23, 2800);

SELECT * FROM lovacka_udruga;



--PROCEDURA - UNOSENJE(AKO NE POSTOJI) I AZURIRANJE(AKO VEC POSTOJI) PODATAKA ZA TABLICU LOVNO_TEHNICKI_OBJEKT
------------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE lovno_tehnicki_objekt_insert_update (
o_lovacka_udruga_id IN INTEGER,
o_naziv_objekta IN lovno_tehnicki_objekt.naziv_objekta%TYPE,
o_mjesto IN lovno_tehnicki_objekt.mjesto%TYPE,
o_broj IN INTEGER
) AS
o_counter INTEGER := 0;
BEGIN
    SELECT COUNT(*)
    INTO o_counter
    FROM lovno_tehnicki_objekt
    WHERE o_broj = broj and lovacka_udruga_id = o_lovacka_udruga_id;
    
    IF o_counter = 0 THEN
        INSERT INTO lovno_tehnicki_objekt VALUES(o_lovacka_udruga_id, o_naziv_objekta, o_mjesto, o_broj);
        COMMIT;
    ELSE
        UPDATE lovno_tehnicki_objekt
        SET mjesto = o_mjesto
        WHERE broj = o_broj and lovacka_udruga_id = o_lovacka_udruga_id;
        COMMIT;
    END IF;
    
    EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('Error');
        ROLLBACK;

END lovno_tehnicki_objekt_insert_update;
/

CALL lovno_tehnicki_objekt_insert_update (3, 'ceka', 'mocvara', 3);
        
    
SELECT * FROM lovno_tehnicki_objekt;
DELETE FROM lovno_tehnicki_objekt WHERE mjesto = 'mocvara';



--PROCEDURA - ISPIS CLANA IZ LOVACKE UDRUGE
---------------------------------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE ispis_clana (
i_lovacka_udruga_id IN INTEGER,
i_oib IN clan.oib%TYPE,
i_datum_ispisa IN DATE
) AS
i_counter INTEGER := 0;
BEGIN
    
    SELECT COUNT(*)
    INTO i_counter
    FROM prijem_u_clanstvo
    WHERE lovacka_udruga_id = i_lovacka_udruga_id and oib = i_oib and datum_ispisa IS NULL;
    
    IF i_counter = 0 THEN
        dbms_output.put_line('Pogreska! Aktivni clan sa navedenim oib-om u navedenoj lovackoj udruzi ne postoji.');
        ROLLBACK;
    ELSE
        UPDATE prijem_u_clanstvo
        SET datum_ispisa = i_datum_ispisa
        WHERE lovacka_udruga_id = i_lovacka_udruga_id and oib = i_oib;
    END IF;
    
    EXCEPTION
    WHEN OTHERS THEN
    dbms_output.put_line('Error');
        ROLLBACK;
        
END ispis_clana;
/

CALL ispis_clana (1, '55447744787', '21/11/2001');

SELECT * FROM prijem_u_clanstvo;




--PROCEDURA - DOHVACANJE LISTE CLANOVA ZA ODREDENU LOVACKU UDRUGU
------------------------------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE lista_clanova (
l_naziv IN lovacka_udruga.naziv%TYPE,
l_zupanija IN lovacka_udruga.zupanija%TYPE,
l_broj_lovista IN lovacka_udruga.broj_lovista%TYPE
) AS
l_oib VARCHAR(11);
l_ime VARCHAR(12);
l_prezime VARCHAR(14);
l_mjesto VARCHAR(20);
lista_clanova_cursor SYS_REFCURSOR;
l_counter INTEGER := 0;
    
BEGIN
    SELECT COUNT(*)
    INTO l_counter
    FROM lovacka_udruga
    WHERE naziv = l_naziv and zupanija = l_zupanija and broj_lovista = l_broj_lovista;

    IF l_counter = 1 THEN
        OPEN lista_clanova_cursor FOR
            SELECT c.oib, c.ime, c.prezime, c.mjesto
            FROM lovacka_udruga l INNER JOIN prijem_u_clanstvo p
            ON(l.lovacka_udruga_id = p.lovacka_udruga_id)
            INNER JOIN clan c
            ON(p.oib = c.oib)
            WHERE l.zupanija = l_zupanija and l.broj_lovista = l_broj_lovista and p.datum_ispisa IS NULL
            ORDER BY c.ime;
    
        LOOP
            FETCH lista_clanova_cursor
            INTO l_oib, l_ime, l_prezime, l_mjesto;
            EXIT WHEN lista_clanova_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE(
            'oib = ' || l_oib ||
            ', ime = ' || l_ime ||
            ', prezime = ' || l_prezime ||
            ', prebivaliste = ' || l_mjesto);
        END LOOP;
        CLOSE lista_clanova_cursor;
    ELSE
        DBMS_OUTPUT.PUT_LINE('Navedena lovacka udruga ne nalazi se u bazi podataka.');
    END IF;
END lista_clanova;
/

SET SERVEROUTPUT ON;
CALL lista_clanova('Muflon', 'Primorsko-goranska', '240');
SELECT * FROM lovacka_udruga;



--OKIDAC - NAKON PROMJENE LOKACIJE LOVACKE UDRUGE
-------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER trigger_lovacka_udruga
    AFTER UPDATE ON lovacka_udruga
    FOR EACH ROW WHEN
    (NEW.mjesto != OLD.mjesto)
    BEGIN
        dbms_output.put_line('Promjena lokacije lovacke udruge!');
    END trigger_lovacka_udruga;
/


UPDATE lovacka_udruga
SET mjesto = 'Sveti Ðurað'
WHERE lovacka_udruga_id = 1;

SELECT * FROM lovacka_udruga;
        
        
        
--OKIDAC - PRIJE PROMJENE PLANA GOSPODARENJA U BILO KOJOJ GODINI
-----------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER plan_gospodarenja_trigger
    BEFORE UPDATE ON plan_gospodarenja
    BEGIN
        dbms_output.put_line('Mijenjanje dopusteno u slucaju pogreske. Potrebno priloziti obrazlozenje.');
    END plan_gospodarenja_trigger;
/
    
    
UPDATE plan_gospodarenja
SET dopusten_odstrijel = 20
WHERE lovidbena_godina = '2018' and divljac_id = 9 and lovacka_udruga_id = 2;
SELECT * FROM plan_gospodarenja;



--OKIDAC - PRIJE UNOSA LOVACKE UDRUGE BEZ LOVISTA
-------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER lovacka_udruga_loviste_trigger
    BEFORE INSERT ON lovacka_udruga
    FOR EACH ROW WHEN
    (new.povrsina_lovista = 0 or new.broj_lovista = 0)
    BEGIN
        raise_application_error(-20100, 'Nemoguce unjeti lovacku udrugu bez lovista!');
    
    END lovakca_udruga_loviste_trigger;
/


CALL LOVACKA_UDRUGA_INSERT('Hrast', 'Osjecko-baranjska', 'Gat', 233, 0);



--OKIDAC - PRIJE AZURIRANJA IZNOSA CLANARINE
-----------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER clanarina_iznos_trigger
    BEFORE UPDATE ON clanarina
    FOR EACH ROW WHEN
    (old.iznos > 2*new.iznos)
    BEGIN
        dbms_output.put_line('Iznos clanarine smanjen za vise od 50%');
    END clanarina_iznos_trigger;
/


UPDATE clanarina
SET iznos = 500
WHERE lovacka_udruga_id = 1 and status = 'redovni clan';

SELECT * FROM clanarina;

SET SERVEROUTPUT ON;

--OKIDAC - NAKON UNOSA ODSTRELJENE DIVLJACI ZA POJEDINACNI LOV AZURIRATI UKUPAN ODSTRIJEL
------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER azuriranje_ostvarenog_odstrijela
    AFTER INSERT ON dozvoljena_divljac_pojedinacni
    FOR EACH ROW WHEN
    (NEW.ostvaren_broj_odstrijela > 0)
    BEGIN
        UPDATE plan_gospodarenja
        SET ostvareni_odstrijel = ostvareni_odstrijel + :new.ostvaren_broj_odstrijela
        WHERE lovacka_udruga_id = (
            SELECT lovacka_udruga_id
            FROM mjesecna_dozvola
            WHERE dozvola_id = :new.dozvola_id) 
            and
            lovidbena_godina = (
            SELECT godina
            FROM mjesecna_dozvola
            WHERE dozvola_id = :new.dozvola_id)
            and
            divljac_id = :new.divljac_id;
            
            DBMS_OUTPUT.PUT_LINE('Ostvareni odstrijel azuriran!');
    END azuriranje_ostvarenog_odstrijela;
/

INSERT INTO dozvoljena_divljac_pojedinacni VALUES (1, 9, 1, 1);

SELECT * FROM plan_gospodarenja WHERE lovidbena_godina = '2018';


--OKIDAC - NAKON UNOSA ODSTRELJENJA ZA SKUPNI LOV AZURIRATI UKUPAN ODSTRIJEL
------------------------------------------------------------------------------------------------------
CREATE OR REPLACE TRIGGER azuriranje_ostvarenog_odstrijela1
    AFTER INSERT ON dozvoljena_divljac_skupni
    FOR EACH ROW WHEN
    (NEW.ostvareni_broj_odstrijela > 0)
    BEGIN
        UPDATE plan_gospodarenja
        SET ostvareni_odstrijel = ostvareni_odstrijel + :new.ostvareni_broj_odstrijela
        WHERE lovacka_udruga_id = (
            SELECT lovacka_udruga_id
            FROM skupni_lov
            WHERE skupni_lov_id = :new.skupni_lov_id) 
            and
            lovidbena_godina = (
            SELECT EXTRACT(YEAR FROM datum)
            FROM skupni_lov
            WHERE skupni_lov_id = :new.skupni_lov_id)
            and
            divljac_id = :new.divljac_id;
            
            DBMS_OUTPUT.PUT_LINE('Ostvareni odstrijel azuriran!');
    END azuriranje_ostvarenog_odstrijela;
/

INSERT INTO dozvoljena_divljac_skupni VALUES (1, 1, 2, 2);
SELECT * FROM plan_gospodarenja WHERE lovidbena_godina = '2018';


--BITMAX INDEX - POGODAN ZA STUPCE SA MALO RAUZLICITIH VRIJEDNOSTI
-------------------------------------------------------------------------------------------------------
CREATE BITMAP INDEX plan_gospodarenja_Bindex ON plan_gospodarenja(lovidbena_godina);

--Svi upiti vezani za lovdibenu godinu biti ce ubrzani
SELECT * FROM plan_gospodarenja WHERE lovidbena_godina = '2019';

--INDEX - POGODAN ZA STUPCE SA PUNO RAZLICITIH VRIJEDNOSTI
-------------------------------------------------------------------------------------------------------
CREATE INDEX dozvoljena_divljac_pojedinacni_index ON dozvoljena_divljac_pojedinacni(dozvola_id);

--Svi upiti vezani uz id dozvole biti ce ubrzani
SELECT * FROM dozvoljena_divljac_pojedinacni WHERE dozvola_id = 240;


--BITMAP INDEX - POGODAN ZA STUPCE SA MALO RAZLICITIH VRIJEDNOSTI
--------------------------------------------------------------------------------------------------------
CREATE INDEX dozovljena_divljac_pojedinacni_Bindex ON dozvoljena_divljac_pojedinacni(divljac_id);

--Svi upiti vezani uz divljac_id biti ce ubrzani
SELECT * FROM dozvoljena_divljac_pojedinacni WHERE divljac_id = 9;


--INDEX - POGODAN ZA STUPCE SA MALO RAZLICITIH VRIJEDNOSTI
--------------------------------------------------------------------------------------------------------
CREATE BITMAP INDEX mjesecna_dozvola_Bindex ON mjesecna_dozvola(godina);
DROP INDEX mjesecna_dozvola_Bindex;
--Svi upiti vezani uz godinu dozvole biti ce ubrzani
SELECT * FROM mjesecna_dozvola WHERE godina = '2018';
