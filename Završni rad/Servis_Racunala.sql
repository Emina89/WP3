USE master;
go
DROP DATABASE IF EXISTS Servis_Racunala;
go
CREATE DATABASE Servis_Racunala;
go
ALTER DATABASE Servis_Racunala collate Croatian_CI_AS;
go
USE Servis_Racunala;

CREATE TABLE Klijenti (
ID INT NOT NULL PRIMARY KEY IDENTITY (1,1),
Ime VARCHAR(55) NOT NULL,
Prezime VARCHAR(55) NOT NULL,
Email VARCHAR(55) NULL,
KontaktBroj VARCHAR (25) NOT NULL,

);

CREATE TABLE PrimkaServisa (
ID INT NOT NULL PRIMARY KEY IDENTITY (2,1),
Vrsta VARCHAR(150) NOT NULL,
Model VARCHAR(150) NOT NULL ,
ServisniNalogID INT NOT NULL,
   
);

CREATE TABLE AktivnostServis (
ID INT NOT NULL PRIMARY KEY IDENTITY (3,1),
PrimkaServisaID INT NOT NULL,
DatumZavrsetka DATE NOT NULL,
Opis VARCHAR(1000) NOT NULL,
   
);

CREATE TABLE ServisniNalozi (
ID INT NOT NULL PRIMARY KEY IDENTITY (4,1),
KlijentiID INT NOT NULL,
DatumNaloga DATE NOT NULL,
OpisKvara NVARCHAR (1000) NOT NULL,

);

Alter table  PrimkaServisa
add foreign key (ServisniNalogID) references ServisniNalozi(ID);

Alter table AktivnostServis
add foreign key(PrimkaServisaID) references PrimkaServisa(ID);

Alter table ServisniNalozi
add foreign key(KlijentiID) references Klijenti(ID);

INSERT INTO Klijenti (Ime,Prezime,Email,KontaktBroj)
 VALUES
('Emina','VejsiloviĆ','emina@proces.hr','098-555-999'),
('Ivan','IviĆ','ivan@proces.hr','098-555-000'),
('Tin','UjeviĆ','tin@proces.hr','098-509-999'),
('Vanja','VejsiloviĆ','vanja@proces.hr','099-323-999'),
('Zana','Vejsi','zana@proces.hr','099-323-999'),
('Rea','Sirko','rea@proces.hr','091-323-999'),
('Rea','Bertoša','reab@proces.hr','091-323-867'),
('Rea','Bertoša','reab@proces.hr','091-323-867'),
('Martina','Bertoša','mer@proces.hr','091-323-867'),
('Sonja','Bertoša','jhgh@proces.hr','091-323-867'),
('Rea','Žulj','rkhghb@proces.hr','091-323-867'),
('Ivana','Sinj','ibas@proces.hr','091-323-867'),
('Tena','Bertić','tena@proces.hr','091-323-867'),
('Tin','Sirko','tin@proces.hr','099-993-999');


INSERT INTO ServisniNalozi(KlijentiID,DatumNaloga,OpisKvara)
 VALUES
(1,'2024-01-10','Tijekom rada se zaledi'),
(2,'2024-01-08','Nakon nestanka el.energije, više se nije mogao upaliti'),
(3,'2023-10-07','Ne pokreće određene igrice'),
(4,'2023-09-07','Ne podiže sistem'),
(6,'2024-01-07','Ne pokreće određene igrice'),
(5,'2023-10-10','Nakon paljenja,zatamni ekran'),
(7,'2023-10-07','Ne pokreće određene igrice'),
(2,'2023-10-09','Ne može zapamtiti vrijeme i datum');


INSERT INTO PrimkaServisa(Vrsta,Model,ServisniNalogID)
 VALUES
('Prijenosno računalo','HP 245n',4),
('Stolno računalo','Asus mnjdg666',5),
('Stolno računalo','Asrock MB444',6),
('Stolno računalo','Asrock 765',8),
('Stolno računalo','Asrock Mc46435',7);

INSERT INTO AktivnostServis(PrimkaServisaID,DatumZavrsetka,Opis)
 VALUES
(2,'2024-01-13','Zamjenjena matična ploča'),
(3,'2024-01-09','Izgorila matična ploča, korisnik ne želi mjenjati'),
(4,'2023-10-07','Zamjena memorije i grafičke kartice'),
(5,'2023-10-07','Zamjena CMOS baterije, CR2032');

     








