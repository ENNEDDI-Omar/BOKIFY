CREATE DATABASE  Bokify;

CREATE Table Employees(
     Id SERIAL PRIMARY KEY,
     Nom VARCHAR NOT NULL(255),
     Email VARCHAR NOT NULL(255),
     Departement VARCHAR NOT NULL(255),
     Post VARCHAR NOT NULL(255)
     
);

CREATE Table Salles(
     Id SERIAL PRIMARY KEY,
     Nom VARCHAR (255),
     Capacité VARCHAR(255)
     
);
CREATE Table Equipements(
    Id SERIAL PRIMARY KEY,
    Id_Salles int,
    Nom VARCHAR (255),
    Foreign Key (Id_Salles) REFERENCES Salles(Id)
);

CREATE Table Reservations(
     Id SERIAL PRIMARY KEY,
     Id_Employees int,
     Id_Salles int,
     Date_Debut timestamp NOT NULL,
     Date_Fin timestamp NOT NULL,
     Foreign Key (Id_Employees) REFERENCES Employees(Id),
     Foreign Key (Id_Salles) REFERENCES Salles(Id)
);

----------isertion des données dans la table employees-------------------------------
INSERT INTO Employees (Nom, Email, Departement, Post),
 VALUES 
 ('Omar', 'omar@gmail.com', 'Educatif', 'Formateur' ),
 ('Mehdi', 'mehdi@gmail.com', 'Administration', 'Inspecteur' ),
 ('Ghizlane', 'ghizlane@gmail.com', 'Administration', 'Conseillere' ),
 ('Adnan', 'adnan@gmail.com', 'Educatif', 'Formateur' );

 ----------isertion des Données dans la table Salles-------------------------------
 INSERT INTO Salles(Nom, Capacité)
 VALUES 
 ('Breakin Code', 25),
 ('Reunion', 60),
 ('Agorra', 200),
 ('2b || 2b', 40);

  ----------isertion des Données dans la table d'Equipement-------------------------------
 INSERT INTO Equipements(Id_Salles, Nom)
 VALUES 
 ( 3, 'Microphone' ),
 ( 1, 'Tables' ),
 ( 3, 'DataShow'),
 ( 4, 'Chaises');
 

 ----------isertion des Dates dans la table reservations-------------------------------
 INSERT INTO Reservations (Id_Employees, Id_Salles, Date_Debut, Date_Fin)
 VALUES 
 (1, 1,'2023-10-11 10:00','2023-10-11 12:30' ),
 (2, 2,'2023-10-13 09:00','2023-10-13 11:00' ),
 (3, 3,'2023-10-14 14:00','2023-10-14 16:30' ),
 (4, 4,'2023-10-15 08:00','2023-10-15 10:00' ),
 (1, 3,'2023-11-20 10:00','2023-11-20 12:30' ),
 (2, 4,'2023-10-04 08:00','2023-10-04 12:00' ),
 (4, 1,'2023-10-06 14:00','2023-10-06 17:30' ),
 (3, 3,'2023-10-14 14:00','2023-10-14 16:30' ),
 (4, 4,'2023-10-15 08:00','2023-10-15 10:00' ),
 (1, 3,'2023-12-24 10:00','2023-12-24 12:30' ),
 (2, 4,'2023-11-04 08:00','2023-11-04 12:00' ),
 (4, 1,'2023-11-06 14:00','2023-11-06 17:30' ),
 (3, 3,'2023-12-14 14:00','2023-12-14 16:30' ),
 (4, 4,'2023-12-15 08:00','2023-12-15 10:00' ),
 (3, 3,'2023-12-22 10:00','2023-12-22 12:30' );

  
  SELECT*
  FROM Employees
 WHERE Post = 'Formateur';
 
 SELECT*
 FROM Reservations
 WHERE Date_Debut > '02-11-2023';

 SELECT Employees.Nom, Salles.Nom, Reservation.Date_Debut, Reservation.Date_Fin
 FROM Reservations as R
 INNER JOIN Employees ON R.Id_Employees = Employees.Id 
 INNER JOIN Salles ON  R.Id_Salles = Salles.Id 
 WHERE Nom = 'Omar';


 



