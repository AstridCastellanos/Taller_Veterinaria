-- Dueños con su cedula y telefono
SELECT Cedula, Telefono FROM Duenios;

-- Mascotas vacunadas
SELECT Nombre FROM Mascotas WHERE Vacunada = "S";

-- Servicios con precio mayor a 80
SELECT Nombre, Precio_Base FROM Servicios WHERE Precio_Base > 80;

-- Mascotas ordenadas por edad descendente
SELECT Nombre, Edad FROM Mascotas ORDER BY Edad DESC;

-- Visitas con nombre de mascota y servicio
SELECT M.Nombre AS "Mascota", S.Nombre AS "Servicio", V.Fecha FROM Visitas VJOIN Mascotas M ON V.idMascota = M.idMascotaJOIN Servicios S ON V.idServicio = S.idServicio;

-- Crear tabla de servicios economicos
CREATE TABLE Servicios_Economicos ASSELECT Nombre, Precio_Base FROM Servicios WHERE Precio_Base < 100;

-- Alias en campos de dueños
SELECT Nombre_Completo AS "Nombre del dueño", Telefono AS "Contacto" FROM Duenios;

-- Alias en subconsultas de mascotas
SELECT M.Nombre, D.Nombre_CompletoFROM (SELECT * FROM Mascotas WHERE Edad > 2) AS MJOIN Duenios D ON M.idDuenio = D.idDuenio;

-- Alias en funciones de agregacion de mascotas
SELECT COUNT(*) AS "Total de mascotas", MIN(Edad) AS "Mascota mas joven",    MAX(Edad) AS "Mascota mas vieja"FROM Mascotas;

-- UPPER y LOWER en nombres de dueños
SELECT Nombre_Completo, UPPER(Nombre_Completo) AS "Nombre en mayusculas", LOWER(Nombre_Completo) AS "Nombre en minusculas" FROM Duenios;

-- Longitud del nombre de las mascotas
SELECT Nombre, LENGTH(Nombre) AS "Longitud del nombre" FROM Mascotas;

-- Concatenar dueño y mascota
SELECT CONCAT(D.Nombre_Completo, " - tiene a: ", M.Nombre) AS "Dueño y su mascota"FROM Mascotas MJOIN Duenios D ON M.idDuenio = D.idDuenio;

-- Subcadena en nombres de servicios
SELECT Nombre, SUBSTRING(Nombre, 1, 5) AS "Primeros caracteres" FROM Servicios;

-- Promedio de edad de mascotas
SELECT AVG(Edad) AS "Promedio de edad" FROM Mascotas;

-- Redondear promedio de precios
SELECT ROUND(AVG(Precio_Base), 0) AS "Promedio de precios" FROM Servicios;

-- Limpiar espacios en nombres de mascotas
SELECT TRIM(Nombre) AS "Nombre limpio", Edad FROM Mascotas;

-- If en mascotas segun vacunacion
SELECT Nombre,  Vacunada, IF(Vacunada = "S", "Vacunada", "No vacunada") AS "Estado de vacunacion"FROM Mascotas;