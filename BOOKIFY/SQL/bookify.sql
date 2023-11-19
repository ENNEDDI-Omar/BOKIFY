CREATE DATABASE  Bokify;

CREATE Table Employees(
     id INT PRIMARY KEY auto_increment,
     Name VARCHAR (255),
     Email VARCHAR(255),
     Departement VARCHAR(255),
     Post VARCHAR(255)
     
);

CREATE Table Salles(
     id int primary KEY SERIAL,
     Nom VARCHAR (255),
     Capacité VARCHAR(255)
     
);
CREATE Table Reservations(
     id_Employees int,
     Foreign Key (id_Employees) REFERENCES Employees(id),
     id_Salles int,
     Foreign Key (id_Salles) REFERENCES Salles(id),
     Date_Debut DATE,
     Date_Fin DATE
);
