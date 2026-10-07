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

CREATE TABLE Razas (
    idRazas INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE Tratamientos (
    idTratamiento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) UNIQUE NOT NULL,
    Observaciones VARCHAR(200) NOT NULL
);

CREATE TABLE Servicios (
    idServicios INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) UNIQUE NOT NULL,
    Descripcion VARCHAR(200) NOT NULL,
    Precio_Base DECIMAL(10,2) NOT NULL
);

CREATE TABLE Mascotas (
    idMascota INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Edad INT NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    Vacuna VARCHAR(1),
    idDuenio INT,
    idRaza INT,
    idEspecie INT,
    FOREIGN KEY (idDuenio) REFERENCES Duenios(idDuenio),
    FOREIGN KEY (idRaza) REFERENCES Razas(idRaza),
    FOREIGN KEY (idEspecie) REFERENCES Especies(idEspecie)
);

