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

CREATE TABLE ZavrsenServis (
    ID INT NOT NULL PRIMARY KEY IDENTITY (3,1),
	PrimkaServisaID INT NOT NULL,
    DatumZavrsetka DATE NOT NULL,
	Zavrseno VARCHAR(1000) NOT NULL,
    


);

CREATE TABLE ServisniNalozi (
ID INT NOT NULL PRIMARY KEY IDENTITY (4,1),
KlijentiID INT NOT NULL,
DatumNaloga DATE NOT NULL,
OpisKvara VARCHAR (1000) NOT NULL,

);

	Alter table  PrimkaServisa 
	add foreign key (ServisniNalogID) references ServisniNalozi(ID);

	Alter table ZavrsenServis 
	add foreign key(PrimkaServisaID) references PrimkaServisa(ID);

	Alter table ServisniNalozi 
	add foreign key(KlijentiID) references Klijenti(ID);

	INSERT INTO Klijenti (Ime,Prezime,Email,KontaktBroj)
	VALUES
	 ('Emina','Vejsilovic','emina@proces.hr','098-555-999'),
	 ('Ivan','Ivic','ivan@proces.hr','098-555-000'),
	 ('Tin','Ujevic','tin@proces.hr','098-509-999'),
	 ('Vanja','Vejsilovic','vanja@proces.hr','099-323-999'),
	 ('Zana','Vejsi','zana@proces.hr','099-323-999');


	 INSERT INTO ServisniNalozi(KlijentiID,DatumNaloga,OpisKvara)
	VALUES
	(1,'2024-01-10','Tijekom rada se zaledi'),
	(2,'2024-01-08','Nakon nestanka el.energije, vi�e se nije mogao upaliti'),
	(3,'2023-10-07','Ne pokre�e odre�ene igrice');

	 INSERT INTO PrimkaServisa(Vrsta,Model,ServisniNalogID)
	VALUES
	('Prijenosno ra�unalo','HP 245n',4),
	('Stolno ra�unalo','Asus mnjdg666',5),
	('Stolno ra�unalo','Asrock MB444',6);

	INSERT INTO ZavrsenServis(PrimkaServisaID,DatumZavrsetka,Zavrseno)
	VALUES
	(2,'2024-01-13','Zamjenjena mati�na plo�a'),
	(3,'2024-01-09','izgorila mati�na plo�a, korisnik ne �eli mjenjati'),
	(4,'2023-10-07','Zamjena memorije i grafi�ke kartice'); 

	UPDATE Klijenti
	SET KontaktBroj= '092-333-444', Email= 'eeee.aa@gmail.com'
	WHERE ID = 2;

	UPDATE ServisniNalozi
	SET DatumNaloga = '2024-01-09'
	WHERE KlijentiID = 2; 

	UPDATE PrimkaServisa
	SET Vrsta = 'Napajanje', Model = 'jugzzghj333'
	WHERE ServisniNalogID = 2;

	UPDATE ZavrsenServis
	SET DatumZavrsetka = '2024-01-14'
	WHERE PrimkaServisaID = 2;

	DELETE FROM ZavrsenServis
    WHERE PrimkaServisaID IN (SELECT ID
    FROM PrimkaServisa
    WHERE 
	ServisniNalogID IN (SELECT ID
        FROM ServisniNalozi
        WHERE KlijentiID = 1
    )
); 

    DELETE FROM PrimkaServisa
    WHERE ServisniNalogID IN (
    SELECT ID
    FROM ServisniNalozi
    WHERE KlijentiID = 1
);
    DELETE FROM ServisniNalozi
    WHERE KlijentiID = 1;


    DELETE FROM Klijenti
    WHERE ID = 1;

	SELECT 
    a.ID AS ServisniNalogID,
    b.Ime AS ImeKlijenta,
    b.Prezime AS PrezimeKlijenta,
    a.DatumNaloga,
    a.OpisKvara
FROM 
    ServisniNalozi a
INNER JOIN 
    Klijenti b ON a.KlijentiID = b.ID;









	 




