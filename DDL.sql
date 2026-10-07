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
    idRaza INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) UNIQUE NOT NULL
);

CREATE TABLE Tratamientos (
    idTratamiento INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) UNIQUE NOT NULL,
    Observaciones VARCHAR(200) NOT NULL
);

CREATE TABLE Servicios (
    idServicio INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) UNIQUE NOT NULL,
    Descripcion VARCHAR(200) NOT NULL,
    Precio_Base DECIMAL(10,2) NOT NULL
);

CREATE TABLE Mascotas (
    idMascota INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(60) NOT NULL,
    Edad INT NOT NULL,
    Sexo VARCHAR(1) NOT NULL,
    Vacunada VARCHAR(1),
    idDuenio INT NOT NULL,
    idRaza INT NOT NULL,
    idEspecie INT NOT NULL,
    FOREIGN KEY (idDuenio) REFERENCES Duenios(idDuenio),
    FOREIGN KEY (idRaza) REFERENCES Razas(idRaza),
    FOREIGN KEY (idEspecie) REFERENCES Especies(idEspecie)
);

CREATE TABLE Visitas (
    idVisita INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE NOT NULL,
    idServicio INT NOT NULL,
    idMascota INT NOT NULL,
    FOREIGN KEY (idServicio) REFERENCES Servicios(idServicio),
    FOREIGN KEY (idMascota) REFERENCES Mascotas(idMascota)
);

CREATE TABLE Visitas_has_Tratamientos (
    idVisita INT NOT NULL,
    idTratamiento INT NOT NULL,
    PRIMARY KEY (idVisita, idTratamiento),
    FOREIGN KEY (idVisita) REFERENCES Visitas(idVisita),
    FOREIGN KEY (idTratamiento) REFERENCES Tratamientos(idTratamiento)
);