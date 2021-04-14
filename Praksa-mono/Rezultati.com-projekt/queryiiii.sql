CREATE TABLE AppUser (
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	FirstName VARCHAR(35) NOT NULL,
	LastName VARCHAR(35) NOT NULL,
	Email VARCHAR(70) NOT NULL UNIQUE,
	UserName VARCHAR(70) NOT NULL UNIQUE,
	Salt VARCHAR(50) NULL,
	PasswordHash VARCHAR(50) NULL,
	IsAdmin BIT NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
);

INSERT INTO AppUser(FirstName, LastName, Email, UserName, IsAdmin, CreatedAt, UpdatedAt)
VALUES ('Kruno', 'Semialjac', 'ksemialjac@gmail.com', 'Krux', 0, SYSDATETIME(), SYSDATETIME());

INSERT INTO AppUser(FirstName, LastName, Email, UserName, IsAdmin, CreatedAt, UpdatedAt)
VALUES ('Mateo', 'Dubinjak', 'mdubinjak@gmail.com', 'mateod747', 1, SYSDATETIME(), SYSDATETIME());

INSERT INTO AppUser(FirstName, LastName, Email, UserName, IsAdmin, CreatedAt, UpdatedAt)
VALUES ('Matej', 'Kolak', 'mkolak@gmail.com', 'mkolak', 1, SYSDATETIME(), SYSDATETIME());

INSERT INTO AppUser(FirstName, LastName, Email, UserName, IsAdmin, CreatedAt, UpdatedAt)
VALUES ('Hrvoje', 'Veber', 'hveberk@gmail.com', 'hveber', 1, SYSDATETIME(), SYSDATETIME());

SELECT * FROM AppUser;

9d51bf7c-397b-eb11-b566-0050f2ed1c57
--------------------------------------------------------------------------

CREATE TABLE Person (
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	FirstName VARCHAR(30) NOT NULL,
	LastName VARCHAR(30) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Country VARCHAR(30) NOT NULL,
);

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Bebek', '1985-12-17', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Dario', 'Bel', '1981-03-25', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Fran', 'Jovic', '1977-06-13', 'Croatia')

Treneri

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Krunoslav', 'Rendulic', '1974-04-21', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Zoran', 'Kastel', '1972-05-03', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Tomislav', 'Stipic', '1983-01-18', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jerko', 'Leko', '1985-11-11', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Danijel', 'Jumic', '1980-09-22', 'Croatia')

Igraci nk osijeka

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivica', 'Ivusic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Antonijo', 'Jezina', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mile', 'Skoric', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Yevgen', 'Cheberko', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Danijel', 'Loncar', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('José', 'Antonio', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Guti', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Talys', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mario', 'Jurcevic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Igor', 'Silva', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mato', 'Milos', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mihael', 'Zaper', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Josip', 'Vukovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Petar', 'Brlek', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Vedran', 'Jugovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('László', 'Kleinheisler', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Marin', 'Pilj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Dmytro', 'Lyopa', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Damjan', 'Bohar', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Petar', 'Bockaj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ádám', 'Gyurcsó', '1994-04-04', 'Croatia')

igraci nk rijeke

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Nevistic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('David', 'Nwolokor', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Andrej', 'Prskalo', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Darko', 'Velkovski', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Hrvoje', 'Smolcic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nino', 'Galovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('João', 'Escoval', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Luka', 'Capan', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Niko', 'Galesic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Daniel', 'Stefulj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Andrija', 'Vukcevic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Roko', 'Jurisic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Filip', 'Braut', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Tomecak', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Lepinjica', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Stjepan', 'Loncar', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Domagoj', 'Pavicic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Robert', 'Mudrazija', '1994-04-04', 'Croatia')

igraci nk gorice 

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Banic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Leon', 'Isek', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Severdija', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Patrick', 'Crnolatec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Aleksandar', 'Jovicic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Matthew', 'Steenvoorden', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Kresimir', 'Krizmanic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nasiru', 'Moro', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Cheick', 'Keita', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Albi', 'Doka', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Musa', 'Muhammed', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Anthony', 'Kalik', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Hrvoje', 'Babec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Serge-Junior', 'Martinsson', '1994-04-04', 'Croatia')

igraci nk lokomotive

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Krunoslav', 'Hendija', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Krsevan', 'Santini', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jon', 'Mersinaj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Kyriakos', 'Papadopoulos', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Kemal', 'Osmankovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Marko', 'Leskovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nikola', 'Pejovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Josip', 'Pivaric', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Stipo', 'Markovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mario', 'Musa', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Celikovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Branimir', 'Cipetic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Edis', 'Malikji', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Marko', 'Djira', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Enis', 'Cokaj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mate', 'Males', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Oliver', 'Petrak', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Reuben', 'Acquah', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Frane', 'Vojkovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Toni', 'Brezina', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Sherif', 'Kallaku', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Pape', 'Assane', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mateo', 'Maric', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Sammir', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jeong-hyun', 'Kim', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Antonio', 'Marin', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ibrahim', 'Aliyu', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Moutir', 'Chajia', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Emerson', 'Deocleciano', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Francesco', 'Tahiraj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Abdoulaye', 'Yahaya', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Indrit', 'Tuci', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Roko', 'Simic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Irfan', 'Hadzic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mario', 'Budimir', '1994-04-04', 'Croatia')

igraci nk istre 

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan Lucic', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Fabrice Ondoa', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Lovro Juric', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Lovro Majkic', 'Oct 8, 1999 (21)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jan Paus-Kunst', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Josip Sutalo', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Petar Bosancic', 'Apr 19, 1996 (24)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Josip Tomasevic', 'Sep 26, 1993 (27)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Rafa Páez', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('João Silva', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Sergi González', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mario Vojkovic', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Luka Hujber', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Rafa Navarro', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Dino Halilovic', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Stefan Loncar', 'Feb 19, 1996 (25)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Toni Buric', 'Nov 29, 2000 (20)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Dylan Levitt', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Slavko Blagojevic', 'Mar 21, 1987 (33)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Einar Galilea', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Antonio Perera', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Antonio Ivancic', 'May 25, 1995 (25)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Hassane Bandé', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Matej Vuk', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Sime Grzan', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mateo Lisica', 'Jul 9, 2003 (17)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Arona Sané', 'Jun 21, 1995 (25)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Josip Spoljaric', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Taichi Hara', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Gedeon Guzina', 'Dec 26, 1993 (27)', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Leon Sipos', '', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Marko Bibic', '', '1994-04-04', 'Croatia')

igraci nk varazdina

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Dinko', 'Horkas', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Oliver', 'Zelenika', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Matija', 'Kovacic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Marko', 'Stolnik', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Novoselec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Maks', 'Juraj', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Itsuki', 'Urata', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jorgo', 'Pellumbi', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Fran', 'Cerovcec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Kerim', 'Memija', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nikola', 'Tkalcic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Dominik', 'Perkovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Neven', 'Djurasek', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Matej', 'Senic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jurica', 'Grgec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jessie', 'Guera', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Agon', 'Elezi', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Matija', 'Kolaric', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Roca', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Igor', 'Postonjski', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Luka', 'Mezga', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Posavec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Jorge', 'Obregón', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Gabrijel', 'Boban', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Vinko', 'Petkovic', '1994-04-04', 'Croatia')

igraci nk slaven belupo

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Filipovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Covic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Hyun-woo', 'Kim', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Damian', 'van', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Franjo', 'Prce', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Tomislav', 'Bozic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mitch', 'Apau', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Bruno', 'Goda', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Gonzalo', 'Gamarra', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Antonio', 'Bosec', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Goran', 'Paracki', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Allen', 'Njie', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nemanja', 'Glavcic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Karlo', 'Lulic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Frano', 'Mlinar', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Stipe', 'Bacelic-Grgic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Blendi', 'Morina', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Edin', 'Julardzija', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nikola', 'Turanjanin', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Luka', 'Liklin', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Kyu-hyeong', 'Kim', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Bruno', 'Bogojevic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Törles', 'Knöll', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Franck', 'Etoundi', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Delic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Miroslav', 'Ilicic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivan', 'Krstanovic', '1994-04-04', 'Croatia')

igraci nk sibenika

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Nediljko', 'Labrovic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Lovre', 'Rogic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Karlo', 'Bilic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Gordon', 'Schildenfeld', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Juan', 'Camilo', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Ivica', 'Batarelo', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Boris', 'Pandza', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Martin', 'Vukorepa', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Doni', 'Grdic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Josip', 'Kvesic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('David', 'Mina', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Todor', 'Todoroski', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Martin', 'Pajic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Marko', 'Bulat', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Mario', 'Curic', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Juan', 'Nieva', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Toni', 'Spanja', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Isnik', 'Alimi', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Keres', 'Masangu', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Emir', 'Sahiti', '1994-04-04', 'Croatia')

insert into Person (FirstName, LastName, DateOfBirth, Country) values ('Álvaro', 'Martín', '1994-04-04', 'Croatia')


select * from Person
---------------------------------------------------------------------------

CREATE TABLE Referee (
	Id UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Person(Id) PRIMARY KEY,
	Rating INTEGER,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id)
	);

drop table Referee

INSERT INTO Referee(Id, Rating, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('ccb08274-3a7b-eb11-b566-0050f2ed1c57', 8, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');

INSERT INTO Referee(Id, Rating, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', 7, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');

INSERT INTO Referee(Id, Rating, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('2e0105b9-3a7b-eb11-b566-0050f2ed1c57', 9, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');

SELECT * FROM Referee;

---------------------------------------------------------------------------

CREATE TABLE Coach (
	Id UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Person(Id) PRIMARY KEY,
	CoachType VARCHAR(40) NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id)
);


INSERT INTO Coach(Id, CoachType, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('5f052568-3c7b-eb11-b566-0050f2ed1c57', 'Head coach', SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');


INSERT INTO Coach(Id, CoachType, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('1328be95-3c7b-eb11-b566-0050f2ed1c57', 'Head coach', SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');


INSERT INTO Coach(Id, CoachType, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('3a82f9d3-3c7b-eb11-b566-0050f2ed1c57', 'Head coach', SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');


INSERT INTO Coach(Id, CoachType, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('3b82f9d3-3c7b-eb11-b566-0050f2ed1c57', 'Head coach', SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');


INSERT INTO Coach(Id, CoachType, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('3c82f9d3-3c7b-eb11-b566-0050f2ed1c57', 'Head coach', SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');

SELECT Coach.Id, Person.FirstName FROM Coach, Person where Coach.Id = Person.Id;

---------------------------------------------------------------------------------------

CREATE TABLE Player (
	Id UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Person(Id) PRIMARY KEY,
	PlayerValue INTEGER,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL ,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT NOT NULL DEFAULT 0,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id)
);


INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser)
VALUES ('B91C3A28-2C71-EB11-BA77-283A4D0E8EE4', 100000, SYSDATETIME(), SYSDATETIME(), 0, '83CC21AD-6E70-EB11-BA77-283A4D0E8EE4');

players

INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('344048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('354048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('364048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('374048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('384048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('394048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3a4048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3b4048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3c4048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3d4048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3e4048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3f4048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('404048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('414048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('424048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('434048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('444048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('454048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('464048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('474048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('484048b3-427b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('94084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('95084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('96084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('97084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('98084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('99084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9a084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9b084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9c084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9d084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9e084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9f084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a0084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a1084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a2084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a3084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a4084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a5084639-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('696867da-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('6a6867da-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('6b6867da-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('6c6867da-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4e8ddfe1-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4f8ddfe1-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('508ddfe1-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('81fa1ce8-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('82fa1ce8-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('83fa1ce8-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('850296ee-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('860296ee-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('870296ee-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('cc48ccf4-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('cd48ccf4-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ce48ccf4-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('0d7ceffa-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('0e7ceffa-437b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3142e40c-447b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3242e40c-447b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('3342e40c-447b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e03bed12-447b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e13bed12-447b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e23bed12-447b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d1f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d2f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d3f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d4f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d5f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d6f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d7f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d8f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d9f1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('daf1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('dbf1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('dcf1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ddf1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('def1df26-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('aca4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ada4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('aea4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('afa4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b0a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b1a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b2a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b3a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b4a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b5a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b6a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b7a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b8a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b9a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('baa4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('bba4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('bca4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('bda4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('bea4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('bfa4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c0a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c1a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c2a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c3a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c4a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c5a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c6a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c7a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c8a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('c9a4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('caa4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('cba4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('cca4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('cda4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('cea4c6f9-477b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('91396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('92396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('93396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('94396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('95396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('96396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('97396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('98396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('99396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9a396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9b396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9c396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9d396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9e396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('9f396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a0396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a1396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a2396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a3396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a4396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a5396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a6396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a7396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a8396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('a9396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('aa396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ab396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ac396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ad396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ae396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('af396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('b0396792-487b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d086f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d186f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d286f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d386f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d486f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d586f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d686f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d786f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d886f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('d986f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('da86f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('db86f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('dc86f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('dd86f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('de86f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('df86f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e086f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e186f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e286f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e386f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e486f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e586f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e686f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e786f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e886f81b-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('e9b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('eab95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ebb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ecb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('edb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('eeb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('efb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f0b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f1b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f2b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f3b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f4b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f5b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f6b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f7b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f8b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('f9b95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('fab95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('fbb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('fcb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('fdb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('feb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('ffb95cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('00ba5cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('01ba5cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('02ba5cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('03ba5cb5-497b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('45b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('46b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('47b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('48b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('49b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4ab8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4bb8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4cb8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4db8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4eb8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('4fb8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('50b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('51b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('52b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('53b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('54b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('55b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('56b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('57b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('58b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Player(Id, PlayerValue, CreatedAt, UpdatedAt, IsDeleted, ByUser) VALUES ('59b8431f-4a7b-eb11-b566-0050f2ed1c57', 1000000, SYSDATETIME(), SYSDATETIME(), 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');


SELECT * FROM Player;

----------------------------------------------------------------------------

CREATE TABLE Stadium(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	StadiumAddress VARCHAR(90) NOT NULL UNIQUE,
	Capacity INTEGER NOT NULL,
	YearOfConstruction int NOT NULL,
	Description TEXT,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id) ON DELETE CASCADE ON UPDATE CASCADE,
);


INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Maksimir', 'Maksimirska cesta 128, 10000, Zagreb', 35123, 1912, 'Stadion Maksimir je nogometni stadion u Zagrebu. Smješten je u istočnom dijelu grada, nasuprot parka Maksimira. Službeno je otvoren 5. svibnja 1912. godine. Preuređivan je nekoliko puta. Na stadionu utakmice igraju GNK Dinamo i Hrvatska nogometna reprezentacija.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Gradski vrt', 'Ul. Woodrowa Wilsona 2, 31000, Osijek', 18856, 1980, 'Stadion Gradski vrt višenamjenski je stadion u Osijeku na kojemu svoje domaće utakmice igra NK Osijek. Nalazi se u Vatrogasnom naselju, na području gradske četvrti Novi grad.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Velika Gorica', 'Ul. Hrvatske Bratske Zajednice 80, 10410, Velika Gorica', 6000, 1987, 'Gradski stadion u Velikoj Gorici je višenamjenski stadion. Bio je poznat kao Stadion ŠRC Velika Gorica te Stadion Radnik. Na njemu utakmice igra HNK Gorica. Ima nogometni teren, atletsku stazu i dvije tribine. Mali dio tribina je natkriven.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Rujevica', 'Rujevica 10, 51000, Rijeka', 8279, 2015, 'Stadion Rujevica je stadion u Rijeci. Imenovan je po Rujevici, mjesto na kome je izgrađen. U kolovozu 2015. godine, stadion postaje privremeno glavno igralište HNK Rijeke nakon početka radova na kompletnoj rekonstrukciji i izgradnji novog stadiona', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Poljud', '8 Mediteranskih Igara 2, 21000, Split', 35000, 1979, 'Gradski stadion Poljud, poznat pod nadimkom Poljudska ljepotica, nalazi se u splitskoj četvrti Poljudu na sjeverozapadu grada, na mjestu gdje je nekad bilo ljekovito blato. Izgrađen je 1979. godine u sklopu izgradnje športskih objekata 8. Mediteranskih igara.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Šubićevac', 'Bana Josipa Jelačića 11a, 22000, Šibenik', 3412, 1948, 'Stadion Šubićevac višenamjenski je stadion smješten u Šibeniku. Svoje domaće utakmice na njemu odigrava HNK Šibenik.Gradio se od 1946. do 1948. godine, kada je otvoren pod službenim imenom Stadion Rade Končar, u šibenskoj gradskoj četvrti, Šubićevcu.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Varteks', 'Zagrebačka ul. 94, 42000, Varaždin', 10800, 2005, 'Stadion Varteks u Varaždinu, na kojem nastupa NK Varaždin nalazi se nasuprot tvornice "Varteks" u Zagrebačkoj ulici na izlazu iz Varaždina prema Zagrebu.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Ivan Kušek Apaš', 'Ul. Mihovila Pavleka Miškine 10, 48000, Koprivnica', 3134, 1996, 'Gradski stadion „Ivan Kušek Apaš” nogometni je stadion u Koprivnici. Na njemu svoje domaće utakmice igraju nogometni klubovi Slaven Belupo i Koprivnica.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Kranjčevićeva', 'Kranjčevićeva ul. 4, 10000, Zagreb', 8850, 1921, 'Stadion Kranjčevićeva (prije Stadion Concordije) nogometni je stadion u Zagrebu. Smješten je u Kranjčevićevoj ulici na Trešnjevci. Na stadionu nastupaju NK Zagreb i NK Rudeš, a prije Drugog svjetskog rata nastupala HŠK Concordia.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 

INSERT INTO Stadium(Name, StadiumAddress, Capacity, YearOfConstruction, Description, ByUser)
VALUES ('Aldo Drosina', 'Ul. Mate Balote 11, 52100, Pula', 9000, 2010, 'Stadion Aldo Drosina je gradski stadion u Puli. Nazvan je po legendarnom pulskom nogometašu i treneru Aldu Drosini. Na njemu svoje domaće utakmice igra NK Istra 1961 i NK Istra Pula.', 'FBB0FF9B-E47C-EB11-B8FF-F8B46AB9A8F2'); 



SELECT * FROM Stadium;

--------------------------------------------------------------------------------

CREATE TABLE Club(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	StadiumID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Stadium(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	Name VARCHAR(40) NOT NULL,
	ClubAddress VARCHAR(90) NOT NULL UNIQUE,
	ShortName VARCHAR(20) NOT NULL,
	YearOfFoundation int NOT NULL,
	Description TEXT,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id)
);


INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('F8557FA7-E67C-EB11-B8FF-F8B46AB9A8F2', 'Dinamo', 'Maksimirska cesta 128, 10000, Zagreb', 'DZG', 1911, 'Građanski nogometni klub Dinamo Zagreb je hrvatski nogometni klub iz Zagreba. Od osnutka Republike Hrvatske najtrofejniji je klub u državi. Nadimci kluba su modri, zagrebački plavi, plavi lavovi, purgeri. Maskota kluba je lav Maksi. Domaće utakmice igra na Stadionu Maksimir.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('8F02D723-E77C-EB11-B8FF-F8B46AB9A8F2', 'Osijek', 'Ul. Woodrowa Wilsona 3, 31000, Osijek', 'OSI', 1947, 'NK Osijek je hrvatski nogometni klub iz Osijeka. Jedan je od najznačajnijih, te među navijačima i jedan on najpopularnijih nogometnih klubova u Hrvatskoj. Prema istraživanjima za Osijek navija 5% ljudi u Hrvatskoj čime je po popularnosti treći klub u državi. Najviše navijača ima u Slavoniji.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('A978A68B-E77C-EB11-B8FF-F8B46AB9A8F2', 'Gorica', 'Ul. Hrvatske Bratske Zajednice 82, 10410, Velika Gorica', 'GOR', 2009, 'HNK Gorica je hrvatski nogometni klub iz Velike Gorice. U nogometnoj sezoni 2. HNL 2017./18. osvojila je prvo mjesto i tako izborila plasman za 1. HNL 2018./19. Klub je osnovan 2009. godine ujedinjenjem NK Radnika iz Velike Gorice i NK Poleta iz Buševca. Klubovi su se ujedinili zbog financijskih razloga Radnika.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('2DFCBF1B-E87C-EB11-B8FF-F8B46AB9A8F2', 'Rijeka', 'Rujevica 10, 51000, Rijeka', 'RJK', 1906, 'HNK Rijeka je hrvatski nogometni klub iz Rijeke. Jedan je od najuspješnijih hrvatskih klubova po tradiciji i značenju u hrvatskom nogometu. Klub je osnovan 1906. godine pod imenom Club sportivo Olimpia.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('2D65DA75-E87C-EB11-B8FF-F8B46AB9A8F2', 'Hajduk', '8 Mediteranskih Igara 4, 21000, Split', 'HAJ', 1911, 'HNK Hajduk Split je hrvatski nogometni klub iz Splita. Najveće je športsko društvo u Splitu i jedno od većih u Hrvatskoj. Kroz bogatu povijest klub je osvojio 18 prvenstava u pet država, 15 nacionalnih kupova i 5 superkupova.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('AB316CAE-F07C-EB11-B8FF-F8B46AB9A8F2', 'Šibenik', 'Ul. bana Josipa Jelačića 9a, 22000, Šibenik', 'ŠIB', 1932, 'Hrvatski nogometni klub Šibenik je hrvatski nogometni klub iz Šibenika. Domaće utakmice igra na Stadionu Šubićevac, a trenutačno nastupa u Prvoj hrvatskoj nogometnoj ligi.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('4BA4DB2D-E97C-EB11-B8FF-F8B46AB9A8F2', 'Varaždin', 'Zagrebačka ul. 91, 42000, Varaždin', 'VAR', 1931, 'NK Varaždin bio je jedan od uspješnijih hrvatskih nogometnih klubova. Naslijedio ga je klub osnovan unutar njega, koji je prvo nosio prijelazno ime NK Varaždin ŠN, a od 2015. godine Nk Varaždin.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('40FF229A-E97C-EB11-B8FF-F8B46AB9A8F2', 'Slaven Belupo', 'Ul. Mihovila Pavleka Miškine 8, 48000, Koprivnica', 'SLB', 1907, 'NK Slaven Belupo je hrvatski nogometni klub iz Koprivnice. Godine 1945. obnovljen je Slaven kao Fiskulturno društvo Slaven. Od 1953. do 1958. godine klub nosi naziv Sportsko društvo Podravka, a nakon toga Nogometni klub Slaven Belupo.');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('AD3A8CED-E97C-EB11-B8FF-F8B46AB9A8F2', 'Lokomotiva', 'Ul. Radoslava Cimermana 3, 10000, Zagreb', 'LOK', 1914, 'NK Lokomotiva Zagreb je hrvatski nogometni klub iz Zagreba. Lokomotiva je osnovana 1914. godine u Zagrebu pod imenom Željezničarski športski klub Victoria. Nogometni klub Lokomotiva nalazi se u zagrebačkom naselju Kajzerica u Novom Zagrebu. Trenutačno se natječe u 1. HNL i igraju u Kranjčevićevoj zato što stadion na Kajzerici ne zadovoljava prvoligaške uvjete. ');

INSERT INTO Club(StadiumID, Name, ClubAddress, ShortName, YearOfFoundation, Description)
VALUES ('5E3EB673-EA7C-EB11-B8FF-F8B46AB9A8F2', 'Istra', 'Ul. Mate Balote 12, 52100, Pula', 'IST', 1948, 'NK Istra 1961 je hrvatski nogometni klub iz Pule, koji od sezone 2009./10. igra u prvoj hrvatskoj nogometnoj ligi, nakon što je postao prvakom Druge HNL sezone 2008./09. Najveći uspjeh kluba je igranje u finalu hrvatskog nogometnog kupa sezone 2002./03., te osvajanje naslova prvaka 2. HNL, sezona 2003./04. i 2008./09. ');


SELECT * FROM Club;

---------------------------------------------------------------------------

CREATE TABLE Position(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	Name VARCHAR(20) UNIQUE,
	ShortName VARCHAR(10),
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT Position_uq UNIQUE(Id, Name)
);


INSERT INTO Position(Name, ShortName)
VALUES('Napadac', 'bla');

INSERT INTO Position(Id, Name, ShortName)
VALUES('DEDA449D-1B6D-EB11-B8F8-F8B46AB9A8F2', 'Obrambeni', 'bla');

SELECT * FROM Position;

-------------------------------------------------------------------------

CREATE TABLE Season(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	Name VARCHAR(40) NOT NULL,
	Period VARCHAR(20) NOT NULL,
	YearOfStart int,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT Season_uq UNIQUE(Period, YearOfStart)
);


INSERT INTO Season(Name, Period, YearOfStart, IsDeleted, ByUser)
VALUES('2020/2021', 'cijeli', 2020, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');

INSERT INTO Season(Id, Name, Period, YearOfStart)
VALUES('DEDA849D-1B6D-EB11-B8F8-F8B46AB9A8F2', '', '', CAST('' AS DATE));

SELECT * FROM Season;

-----------------------------------------------------------------------

CREATE TABLE League(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	Name VARCHAR(60) NOT NULL UNIQUE,
	ShortName VARCHAR(20) NOT NULL,
	Rank INTEGER NOT NULL,
	Country VARCHAR(35),
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id)
);


INSERT INTO League(Name, ShortName, Rank, Country)
VALUES ('Hrvatska nogometna liga', 'HNL', 1, 'Croatia');

INSERT INTO League(Id, Name, ShortName, Rank, Country)
VALUES ();

SELECT * FROM League;

-------------------------------------------------------------------------------

CREATE TABLE LeagueSeason(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	LeagueID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES League(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	SeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Season(Id),
	Category VARCHAR(40),
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT LeagueSeason_uq UNIQUE(LeagueID, SeasonID)
);


INSERT INTO LeagueSeason(LeagueID, SeasonID)
VALUES ();

INSERT INTO LeagueSeason(LeagueID, SeasonID, Category, IsDeleted, ByUser)
VALUES ('a620ce44-4d7b-eb11-b566-0050f2ed1c57', 'd7f8a69b-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');

SELECT * FROM LeagueSeason;

------------------------------------------------------------------------------

CREATE TABLE TeamSeason(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	ClubID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Club(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	CoachID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Coach(Id),
	LeagueSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES LeagueSeason(Id),
	Category VARCHAR(30) NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT TeamSeason_uq UNIQUE(LeagueSeasonID, ClubID, CoachID)
);


INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser)
VALUES ('DEDA449D-1B5D-EB11-B8F8-F8B46AB9A8F2', '', '');

INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( 'b7a1d2d2-4b7b-eb11-b566-0050f2ed1c57','b21efc5a-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '574edd76-4d7b-eb11-b566-0050f2ed1c57','ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '584edd76-4d7b-eb11-b566-0050f2ed1c57','7561f56f-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '594edd76-4d7b-eb11-b566-0050f2ed1c57','2e4772aa-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '5a4edd76-4d7b-eb11-b566-0050f2ed1c57','3a82f9d3-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '5b4edd76-4d7b-eb11-b566-0050f2ed1c57','1328be95-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '5c4edd76-4d7b-eb11-b566-0050f2ed1c57','5f052568-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '5d4edd76-4d7b-eb11-b566-0050f2ed1c57','3c82f9d3-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '5e4edd76-4d7b-eb11-b566-0050f2ed1c57','5248688d-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
INSERT INTO TeamSeason(ClubID, CoachID, LeagueSeasonID, Category, IsDeleted, ByUser) values ( '5f4edd76-4d7b-eb11-b566-0050f2ed1c57','3b82f9d3-3c7b-eb11-b566-0050f2ed1c57', 'd9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'Seniors', 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')


SELECT TeamSeason.Id, Club.Name FROM TeamSeason, Club where TeamSeason.ClubID = Club.Id;

---------------------------------------------------------------------------

CREATE TABLE TeamRegistration(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	TeamSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES TeamSeason(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	PlayerID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Player(Id),
	PositionID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Position(Id),
	JerseyNumber INTEGER,
	IsActive BIT NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT TeamRegistration_uq UNIQUE(TeamSeasonID, PlayerID, PositionID)
);


INSERT INTO TeamRegistration(TeamSeasonID, PlayerID, PostionID, JerseyNumber)
VALUES ();

INSERT INTO TeamRegistration(Id, TeamSeasonID, PlayerID, PostionID, JerseyNumber)
VALUES ();

SELECT * FROM TeamRegistration;

------------------------------------------------------------------------------

CREATE TABLE Standing(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	LeagueSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES LeagueSeason(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	ClubID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Club(Id),
	Played INTEGER NOT NULL,
	Won INTEGER NOT NULL,
	Draw INTEGER NOT NULL,
	Lost INTEGER NOT NULL,
	GoalsScored INTEGER NOT NULL,
	GoalsConceded INTEGER NOT NULL,
	Points INTEGER NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT Table_uq UNIQUE(LeagueSeasonID, ClubID)
);


INSERT INTO Standing(LeagueSeasonID, ClubID, Played, Won, Draw, Lost, GoalsScored, GoalsConceded)
VALUES ();

INSERT INTO Standing(Id, LeagueSeasonID, ClubID, Played, Won, Draw, Lost, GoalsScored, GoalsConceded)
VALUES ();

SELECT * FROM Standing;

------------------------------------------------------------------------------

CREATE TABLE Match(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	HomeTeamSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES TeamSeason(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	AwayTeamSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES TeamSeason(Id),
	LeagueSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES LeagueSeason(Id),
	RefereeID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Referee(Id),
	MatchDate date NOT NULL,
	MatchDay int NOT NULL,
	IsPlayed BIT NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT Match_uq UNIQUE(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, MatchDay)
);

drop table Match
INSERT INTO Match(HomeTeamID, AwayTeamID, LeagueSeasonID, RefereeID,MatchDate, MatchDay)
VALUES ();

SELECT Id from Match

select * from Match

SELECT * from Referee

INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-08-15', 1, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-08-15', 1, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-08-15', 1, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-08-15', 1, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-08-15', 1, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-08-22', 2, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-08-22', 2, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-08-22', 2, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-08-22', 2, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-08-22', 2, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-08-29', 3, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-08-29', 3, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-08-29', 3, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-08-29', 3, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-08-29', 3, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-09-12', 4, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-09-12', 4, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-09-12', 4, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-09-12', 4, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-09-12', 4, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-09-19', 5, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-09-19', 5, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-09-19', 5, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-09-19', 5, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-09-19', 5, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-09-26', 6, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-09-26', 6, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-09-26', 6, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-09-26', 6, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-09-26', 6, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-10-03', 7, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-10-03', 7, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-10-03', 7, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-10-03', 7, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-10-03', 7, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-10-10', 8, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-10-10', 8, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-10-10', 8, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-10-10', 8, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-10-10', 8, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-10-17', 9, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-10-17', 9, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-10-17', 9, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-10-17', 9, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-10-17', 9, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-10-24', 10, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-10-24', 10, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-10-24', 10, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-10-24', 10, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-10-24', 10, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-10-31', 11, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-10-31', 11, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-10-31', 11, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-10-31', 11, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-10-31', 11, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-11-07', 12, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-11-07', 12, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-11-07', 12, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-11-07', 12, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-11-07', 12, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-11-14', 13, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-11-14', 13, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-11-14', 13, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-11-14', 13, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-11-14', 13, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-11-21', 14, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-11-21', 14, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-11-21', 14, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-11-21', 14, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-11-21', 14, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-11-28', 15, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-11-28', 15, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-11-28', 15, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-11-28', 15, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-11-28', 15, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-12-06', 16, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-12-06', 16, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-12-06', 16, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-12-06', 16, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-12-06', 16, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-12-13', 17, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-12-13', 17, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-12-13', 17, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2020-12-13', 17, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2020-12-13', 17, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-12-20', 18, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2020-12-20', 18, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2020-12-20', 18, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2020-12-20', 18, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2020-12-20', 18, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-01-20', 19, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-01-20', 19, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-01-20', 19, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-01-20', 19, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-01-20', 19, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-01-27', 20, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-01-27', 20, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-01-27', 20, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-01-27', 20, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-01-27', 20, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-02-13', 21, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-02-13', 21, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-02-13', 21, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-02-13', 21, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-02-13', 21, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-02-20', 22, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-02-20', 22, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-02-20', 22, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-02-20', 22, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-02-20', 22, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-02-27', 23, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-02-27', 23, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-02-27', 23, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-02-27', 23, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-02-27', 23, 1, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-03-06', 24, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-03-06', 24, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-03-06', 24, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-03-06', 24, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-03-06', 24, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-03-13', 25, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-03-13', 25, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-03-13', 25, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-03-13', 25, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-03-13', 25, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-03-20', 26, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-03-20', 26, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-03-20', 26, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-03-20', 26, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-03-20', 26, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-03-27', 27, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-03-27', 27, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-03-27', 27, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-03-27', 27, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-03-27', 27, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-04-07', 28, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-04-07', 28, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-04-07', 28, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-04-07', 28, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-04-07', 28, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-04-14', 29, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-04-14', 29, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-04-14', 29, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-04-14', 29, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-04-14', 29, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-04-21', 30, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-04-21', 30, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-04-21', 30, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-04-21', 30, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-04-21', 30, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-04-28', 31, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-04-28', 31, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-04-28', 31, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-04-28', 31, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-04-28', 31, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-01', 32, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-01', 32, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-05-01', 32, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-05-01', 32, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-05-01', 32, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-05-04', 33, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-05-04', 33, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-05-04', 33, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-04', 33, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-04', 33, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-05-08', 34, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-05-08', 34, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-05-08', 34, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-05-08', 34, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-05-08', 34, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0526c812-507b-eb11-b566-0050f2ed1c57 ', '0026c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-05-12', 35, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0426c812-507b-eb11-b566-0050f2ed1c57 ', '0226c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-12', 35, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0726c812-507b-eb11-b566-0050f2ed1c57 ', 'ff25c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b2c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-12', 35, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0626c812-507b-eb11-b566-0050f2ed1c57 ', '0326c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '93cb76af-3a7b-eb11-b566-0050f2ed1c57', '2021-05-12', 35, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0826c812-507b-eb11-b566-0050f2ed1c57 ', '0126c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2e0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-05-12', 35, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('ff25c812-507b-eb11-b566-0050f2ed1c57 ', '0526c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '2f0105b9-3a7b-eb11-b566-0050f2ed1c57', '2021-05-15', 36, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0326c812-507b-eb11-b566-0050f2ed1c57 ', '0426c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', '5248688d-3c7b-eb11-b566-0050f2ed1c57', '2021-05-15', 36, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0126c812-507b-eb11-b566-0050f2ed1c57 ', '0626c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ad7c42cd-3c7b-eb11-b566-0050f2ed1c57', '2021-05-15', 36, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0026c812-507b-eb11-b566-0050f2ed1c57 ', '0826c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'ccb08274-3a7b-eb11-b566-0050f2ed1c57', '2021-05-15', 36, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');
INSERT INTO Match(HomeTeamSeasonID, AwayTeamSeasonID, LeagueSeasonID, RefereeID, MatchDate, MatchDay, IsPlayed, ByUser) VALUES ('0226c812-507b-eb11-b566-0050f2ed1c57 ', '0726c812-507b-eb11-b566-0050f2ed1c57','d9673ce8-4d7b-eb11-b566-0050f2ed1c57', 'b1c38fa3-3a7b-eb11-b566-0050f2ed1c57', '2021-05-15', 36, 0, '9d51bf7c-397b-eb11-b566-0050f2ed1c57');


SELECT Id FROM Match where IsPlayed = 1;

select * from MATCH

------------------------------------------------------------------------------

CREATE TABLE SquadRegistration(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	TeamSeasonID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES TeamSeason(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	TeamRegistrationID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES TeamRegistration(Id),
	MatchID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Match(Id),
	Substitute BIT NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT SquadRegistration_uq UNIQUE(TeamSeasonID, TeamRegistrationID, MatchID)
);



------------------------------------------------------------------------------

CREATE TABLE Score(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	MatchID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Match(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	PlayerID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Player(Id),
	MatchMinute INTEGER NOT NULL,
	Autogoal BIT NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT Score_uq UNIQUE(MatchID, PlayerID)
);


INSERT INTO Score(MatchID, PlayerID, MatchMinute, Autogoal)
VALUES();

INSERT INTO Score(ScoreID, MatchID, PlayerID, MatchMinute, Autogoal)
VALUES();

SELECT * FROM Score;

----------------------------------------------------------------------------
CREATE TABLE MatchStatistics(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	MatchID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Match(Id),
	HomeGoals INT, 
    AwayGoals INT, 
    HomeYellowCards INT,
    AwayYellowCards INT,
    HomeRedCards INT,
    AwayRedCards INT,
    HomeShots INT,
    AwayShots INT,
    HomeShotsOnTarget INT,
    AwayShotsOnTarget INT,
    HomePossession INT,
    AwayPossession INT,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER,
	CONSTRAINT MatchStatistics_uq UNIQUE(MatchID)
);

select * from Match

update MatchStatistics set IsDeleted = 0 where IsDeleted = 1 

select * from MatchStatistics where MatchID='30b47b2b-5f7b-eb11-b566-0050f2ed1c57' 

select s.Id, s.MatchID, s.HomeGoals, s.AwayGoals, s.HomeYellowCards, s.AwayYellowCards, s.HomeRedCards, s.AwayRedCards, s.HomeShots, s.AwayShots, s.HomeShotsOnTarget, s.AwayShotsOnTarget,
s.HomePossession, s.AwayPossession, s.CreatedAt, s.UpdatedAt, s.IsDeleted, s.ByUser, c.Name from MatchStatistics as s 
right join Match as m on s.MatchID = m.Id right join TeamSeason as ts on m.HomeTeamSeasonID = ts.Id or m.AwayTeamSeasonID = ts.Id right join Club as c on ts.ClubID = c.Id where s.MatchID = '31b47b2b-5f7b-eb11-b566-0050f2ed1c57'

INSERT INTO MatchStatistics(TeamSeasonID, ClubID, MatchID, Home, Goals, YellowCards, RedCards, Shots, ShotsOnTarget, Possession)
VALUES (); 

INSERT INTO MatchStatistics(MatchStatisticsID, TeamSeasonID, ClubID, MatchID, Home, Goals, YellowCards, RedCards, Shots, ShotsOnTarget, Possession)
VALUES ();

insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('29b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,1,3,2,0,1,26,12, 15,14,45,69,31, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('2ab47b2b-5f7b-eb11-b566-0050f2ed1c57',3,0,4,3,1,1,13,11, 4,6,43,50,50, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('2bb47b2b-5f7b-eb11-b566-0050f2ed1c57',5,0,2,2,0,1,21,22, 10,2,65,28,72, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('2cb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,0,2,2,0,1,26,30, 15,13,36,37,63, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('2db47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,4,3,0,1,22,24, 11,8,46,20,80, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('2eb47b2b-5f7b-eb11-b566-0050f2ed1c57',4,1,3,3,1,0,29,29, 3,10,38,58,42, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('2fb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,0,4,3,1,0,9,24, 10,6,42,72,28, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('30b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,1,2,5,1,1,21,17, 15,6,46,39,61, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('31b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,1,2,4,1,0,14,19, 15,4,38,46,54, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('32b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,4,4,4,1,0,9,17, 12,9,22,40,60, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('33b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,2,3,4,1,1,29,6, 15,15,70,48,52, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('34b47b2b-5f7b-eb11-b566-0050f2ed1c57',0,3,4,2,0,1,26,5, 3,12,47,38,62, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('35b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,2,3,1,0,20,19, 13,11,32,76,24, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('36b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,0,3,5,0,0,15,11, 12,6,61,43,57, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('37b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,3,2,5,1,1,24,30, 3,4,54,78,22, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('38b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,3,2,3,0,0,9,14, 9,3,71,45,55, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('39b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,3,4,4,1,1,19,24, 10,14,47,33,67, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('3ab47b2b-5f7b-eb11-b566-0050f2ed1c57',4,1,3,5,0,0,27,24, 6,7,57,66,34, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('3bb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,1,3,4,0,1,14,24, 11,2,35,70,30, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('3cb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,2,3,2,0,0,25,19, 9,11,59,48,52, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('3db47b2b-5f7b-eb11-b566-0050f2ed1c57',2,0,2,4,1,1,30,10, 12,5,42,69,31, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('3eb47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,3,3,0,0,17,15, 12,7,63,68,32, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('3fb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,2,3,3,0,0,26,7, 14,3,72,43,57, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('40b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,0,2,4,1,0,19,8, 8,11,23,50,50, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('41b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,1,3,4,0,0,8,23, 4,11,32,64,36, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('42b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,3,3,2,1,0,23,26, 15,11,77,23,77, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('43b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,2,2,5,1,1,10,14, 6,12,31,21,79, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('44b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,2,2,2,0,0,15,20, 5,2,43,65,35, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('45b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,2,2,0,1,6,18, 5,9,42,71,29, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('46b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,3,5,0,1,7,28, 10,3,70,36,64, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('47b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,1,2,4,1,0,19,9, 2,7,73,60,40, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('48b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,1,4,3,1,1,15,20, 1,7,57,77,23, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('49b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,2,4,2,0,1,28,22, 14,12,55,33,67, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('4ab47b2b-5f7b-eb11-b566-0050f2ed1c57',4,3,4,4,0,0,6,24, 13,13,78,60,40, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('4bb47b2b-5f7b-eb11-b566-0050f2ed1c57',5,3,3,5,1,0,27,10, 3,13,44,41,59, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('4cb47b2b-5f7b-eb11-b566-0050f2ed1c57',3,3,3,2,1,0,19,15, 14,8,64,63,37, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('4db47b2b-5f7b-eb11-b566-0050f2ed1c57',4,0,3,3,0,0,18,23, 14,10,59,39,61, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('4eb47b2b-5f7b-eb11-b566-0050f2ed1c57',1,3,3,2,1,1,16,20, 11,3,58,70,30, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('4fb47b2b-5f7b-eb11-b566-0050f2ed1c57',1,0,4,2,0,0,11,11, 14,2,23,23,77, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('50b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,0,4,5,1,1,8,27, 5,4,79,42,58, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('51b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,1,4,5,1,0,28,14, 1,4,45,36,64, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('52b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,4,2,1,1,24,10, 8,11,57,70,30, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('53b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,2,3,0,1,23,28, 8,7,68,45,55, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('54b47b2b-5f7b-eb11-b566-0050f2ed1c57',0,3,2,5,1,0,6,18, 2,2,54,57,43, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('55b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,2,4,4,0,1,8,14, 6,12,46,22,78, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('56b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,4,4,5,1,1,29,20, 9,6,44,30,70, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('57b47b2b-5f7b-eb11-b566-0050f2ed1c57',0,1,2,2,0,0,15,11, 10,11,25,51,49, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('58b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,4,4,4,1,0,8,15, 2,7,24,39,61, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('59b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,3,3,5,0,0,28,8, 4,2,22,45,55, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('5ab47b2b-5f7b-eb11-b566-0050f2ed1c57',2,1,2,2,1,0,8,18, 1,2,48,25,75, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('5bb47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,3,3,1,0,13,7, 10,15,39,22,78, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('5cb47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,3,3,0,0,19,5, 14,5,30,60,40, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('5db47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,2,5,0,0,21,12, 15,2,33,63,37, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('5eb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,2,3,3,0,0,29,5, 1,14,48,69,31, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('5fb47b2b-5f7b-eb11-b566-0050f2ed1c57',3,2,2,4,1,1,26,8, 15,7,40,79,21, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('60b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,0,3,3,0,0,22,13, 12,14,32,52,48, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('61b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,0,4,2,0,0,19,28, 10,2,63,80,20, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('62b47b2b-5f7b-eb11-b566-0050f2ed1c57',0,1,2,3,1,0,6,11, 13,14,24,26,74, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('63b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,1,3,2,1,0,10,26, 1,3,79,31,69, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('64b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,3,2,3,1,1,9,23, 4,13,79,26,74, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('65b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,3,5,0,1,13,16, 8,12,74,44,56, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('66b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,4,3,3,1,1,25,5, 6,3,77,70,30, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('67b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,0,4,2,0,1,16,28, 7,13,64,51,49, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('68b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,0,3,5,0,1,15,16, 14,9,55,73,27, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('69b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,1,2,5,0,1,15,24, 10,15,35,46,54, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('6ab47b2b-5f7b-eb11-b566-0050f2ed1c57',2,3,4,4,0,1,20,8, 14,7,49,25,75, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('6bb47b2b-5f7b-eb11-b566-0050f2ed1c57',5,4,2,2,0,0,8,15, 9,6,71,77,23, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('6cb47b2b-5f7b-eb11-b566-0050f2ed1c57',5,4,4,3,1,0,9,23, 10,15,31,34,66, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('6db47b2b-5f7b-eb11-b566-0050f2ed1c57',2,3,3,3,1,0,7,10, 3,10,37,21,79, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('6eb47b2b-5f7b-eb11-b566-0050f2ed1c57',5,2,3,5,1,0,28,24, 13,1,71,77,23, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('6fb47b2b-5f7b-eb11-b566-0050f2ed1c57',1,1,4,5,0,0,25,25, 5,15,54,56,44, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('70b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,0,4,5,0,1,5,14, 14,9,48,72,28, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('71b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,3,4,3,0,1,29,28, 5,10,42,52,48, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('72b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,1,4,4,1,0,20,29, 11,15,40,74,26, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('73b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,4,4,3,1,1,18,20, 13,14,25,73,27, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('75b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,2,2,3,1,0,28,13, 3,9,28,43,57, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('76b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,4,2,3,1,0,11,20, 14,11,55,45,55, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('77b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,2,3,5,0,0,26,29, 5,8,71,73,27, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('79b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,3,4,1,0,10,24, 10,14,69,80,20, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('7ab47b2b-5f7b-eb11-b566-0050f2ed1c57',1,0,3,3,1,1,11,7, 15,12,43,47,53, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('7bb47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,4,3,1,1,26,27, 11,2,51,63,37, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('7cb47b2b-5f7b-eb11-b566-0050f2ed1c57',4,2,3,4,1,1,10,9, 11,14,32,53,47, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('7db47b2b-5f7b-eb11-b566-0050f2ed1c57',5,4,3,5,1,0,7,14, 4,6,73,36,64, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('7eb47b2b-5f7b-eb11-b566-0050f2ed1c57',1,4,4,2,0,0,22,29, 4,3,66,44,56, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('7fb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,0,3,2,0,0,17,8, 15,8,38,50,50, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('80b47b2b-5f7b-eb11-b566-0050f2ed1c57',0,2,2,2,0,0,26,20, 15,12,25,69,31, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('81b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,3,3,5,1,1,12,19, 11,5,45,36,64, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('82b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,4,2,4,1,1,30,22, 2,13,45,25,75, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('83b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,4,4,4,0,1,21,10, 5,1,26,29,71, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('84b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,1,3,3,1,1,13,18, 8,4,52,68,32, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('85b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,3,4,3,0,0,30,15, 1,2,76,24,76, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('86b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,4,3,2,1,1,29,11, 3,9,68,56,44, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('87b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,1,3,5,0,1,24,22, 8,2,61,70,30, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('88b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,4,3,2,1,0,13,28, 11,14,44,76,24, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('89b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,4,2,4,0,0,11,5, 10,3,63,58,42, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('8ab47b2b-5f7b-eb11-b566-0050f2ed1c57',0,4,4,3,0,0,23,25, 11,3,40,67,33, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('8bb47b2b-5f7b-eb11-b566-0050f2ed1c57',1,2,3,3,0,0,28,25, 9,2,58,32,68, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('8cb47b2b-5f7b-eb11-b566-0050f2ed1c57',0,1,4,2,0,0,23,17, 8,3,35,34,66, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('8db47b2b-5f7b-eb11-b566-0050f2ed1c57',3,0,2,5,1,1,26,21, 10,13,72,42,58, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('8eb47b2b-5f7b-eb11-b566-0050f2ed1c57',1,3,3,2,0,0,9,23, 11,6,53,79,21, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('90b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,4,4,3,0,1,24,18, 13,11,31,37,63, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('91b47b2b-5f7b-eb11-b566-0050f2ed1c57',2,0,4,2,0,0,5,22, 9,10,41,78,22, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('92b47b2b-5f7b-eb11-b566-0050f2ed1c57',1,1,2,3,0,0,14,5, 8,7,46,69,31, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('93b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,0,2,3,0,0,20,18, 9,9,58,30,70, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('95b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,0,2,3,1,0,16,17, 2,6,53,51,49, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('96b47b2b-5f7b-eb11-b566-0050f2ed1c57',4,3,2,3,1,0,21,11, 6,3,28,62,38, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('97b47b2b-5f7b-eb11-b566-0050f2ed1c57',3,3,4,5,0,0,30,17, 6,14,30,22,78, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('98b47b2b-5f7b-eb11-b566-0050f2ed1c57',5,2,3,2,0,1,25,9, 2,3,21,59,41, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('99b47b2b-5f7b-eb11-b566-0050f2ed1c57',0,0,2,5,0,1,29,15, 15,9,23,72,28, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('9ab47b2b-5f7b-eb11-b566-0050f2ed1c57',4,3,2,5,0,1,7,7, 9,4,55,78,22, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')
insert into MatchStatistics (MatchId, HomeGoals, AwayGoals, HomeYellowCards, AwayYellowCards, HomeRedCards, AwayRedCards, HomeShots, AwayShots, HomeShotsOnTarget, AwayShotsOnTarget, HomePossession, AwayPossession, IsDeleted, ByUser) values ('9bb47b2b-5f7b-eb11-b566-0050f2ed1c57',5,1,4,3,1,1,9,25, 6,3,47,48,52, '9d51bf7c-397b-eb11-b566-0050f2ed1c57')


drop table MatchStatistics

SELECT * FROM MatchStatistics;

----------------------------------------------------------------------------

CREATE TABLE CardDeserved(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	MatchID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Match(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	PlayerID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Player(Id),
	YellowCard BIT NOT NULL,
	RedCard BIT NOT NULL,
	MatchMinute INTEGER NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
);


INSERT INTO CardDeserved(MatchID, PlayerID, YellowCard, RedCard, MatchMinute)
VALUES ();

INSERT INTO CardDeserved(CardDeservedID, MatchID, PlayerID, YellowCard, RedCard, MatchMinute)
VALUES ();

SELECT * FROM CardDeserved;

-----------------------------------------------------------------------------

CREATE TABLE Substitution(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	MatchID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Match(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	PlayerInID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Player(Id),
	PlayerOutID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Player(Id),
	MatchMinute INTEGER NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT Substitution_uq UNIQUE(MatchID, PlayerInID, PlayerOutID)
);


INSERT INTO Substitution(MatchID, PlayerInID, PlayerOutID, MatchMinute)
VALUES ();

INSERT INTO Substitution(SubstitutionID, MatchID, PlayerInID, PlayerOutID, MatchMinute)
VALUES ();

SELECT * FROM Substitution;

---------------------------------------------------------------------------

CREATE TABLE Post(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	AppUserID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	Title TEXT NOT NULL,
	Body TEXT NOT NULL,
	Date DATE NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
);


INSERT INTO Post(UserInfoID, Title, Body, Date)
VALUES ();

INSERT INTO Post(PostID, UserInfoID, Title, Body, Date)
VALUES ();

SELECT * FROM Post;

----------------------------------------------------------------------------

CREATE TABLE Comment(
	Id UNIQUEIDENTIFIER DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
	AppUserID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	Body TEXT NOT NULL,
	Date DATE NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id)
);


INSERT INTO Comment(UserInfoID, Body, Date)
VALUES ();

INSERT INTO Comment(CommentID, UserInfoID, Body, Date)
VALUES ();

SELECT * FROM Comment;

-----------------------------------------------------------------------------

CREATE TABLE PostComment(
	Id UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Comment(Id) ON DELETE CASCADE ON UPDATE CASCADE,
	PostID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Post(Id),
	Date DATE NOT NULL,
	CreatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	UpdatedAt DATETIME DEFAULT GETDATE() NOT NULL,
	IsDeleted BIT DEFAULT 0 NOT NULL,
	ByUser UNIQUEIDENTIFIER FOREIGN KEY REFERENCES AppUser(Id),
	CONSTRAINT PostComment_uq UNIQUE(Id, PostID)
);


INSERT INTO PostComment(CommentID, PostID, Date)
VALUES ();

SELECT * FROM PostComment;

-----------------------------------------------------------------------------------

DROP TABLE PostComment;
DROP TABLE Post;
DROP TABLE Comment;
DROP TABLE Substitution;
DROP TABLE CardDeserved;
DROP TABLE MatchStatistics;
DROP TABLE Score;
DROP TABLE SquadRegistration;
DROP TABLE Match;
DROP TABLE Standing;
DROP TABLE TeamRegistration;
DROP TABLE TeamSeason;
DROP TABLE LeagueSeason;
DROP TABLE Club;
DROP TABLE Stadium;
DROP TABLE Referee;
DROP TABLE Coach;
DROP TABLE dbo.Player;
DROP TABLE Person;
DROP TABLE Position;
DROP TABLE Season;
DROP TABLE League;
DROP TABLE AppUser;