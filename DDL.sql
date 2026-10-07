CREATE DATABASE taller_veterinaria;

USE taller_veterinaria;

CREATE TABLE Duenios (
    idDuenio INT AUTO_INCREMENT PRIMARY KEY,
    Cedula INT UNIQUE NOT NULL,
    Nombre_Completo VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15) UNIQUE NOT NULL,
    Direccion VARCHAR(200) NOT NULL
);

CREATE TABLE Especies (
    idEspecie INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) UNIQUE NOT NULL
);
