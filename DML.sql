-- Duenios
INSERT INTO Duenios (Cedula, Nombre_Completo, Telefono, Direccion) VALUES 
(1234567890987, "Astrid Castellanos", "55441122", "Zona 14, Guatemala"),
(1823456792710, "Juan Marinio", "33224411", "Colombia"),
(3012345654262, "Nancy Aldana", "44556677", "Zona 10, Guatemala"),
(1987654373629, "Alfredo Carrera", "66778899", "Zona 15, Guatemala"),
(2567890560021, "Karla Monterroso", "77889900", "Zona 5, Guatemala");

-- Especies
INSERT INTO Especies (Nombre) VALUES
("Perro"),
("Gato"),
("Conejo"),
("Loro"),
("Chivo");

-- Razas
INSERT INTO Razas (Nombre) VALUES
("Chihuahua"),
("Labrador"),
("Siames"),
("Enano"),
("Criollo");

-- Tratamientos
INSERT INTO Tratamientos (Nombre, Observaciones) VALUES
("Antibiotico", "Administrar cada 8 horas"),
("Vitaminas", "Una dosis diaria"),
("Desparasitante", "Una sola dosis"),
("Antiinflamatorio", "Solo si hay fiebre"),
("Suero", "Aplicar via intravenosa");

-- Servicios
INSERT INTO Servicios (Nombre, Descripcion, Precio_Base) VALUES
("Baño", "Baño completo con shampoo medicado", 75.00),
("Corte de uñas", "Corte y limado de uñas", 40.00),
("Consulta medica", "Evaluacion general del paciente", 150.00),
("Desparasitacion", "Aplicacion de medicamento oral", 90.00),
("Vacunacion", "Aplicacion de vacuna anual", 120.00);

-- Mascotas
INSERT INTO Mascotas (Nombre, Edad, Sexo, Vacunada, idDuenio, idRaza, idEspecie) VALUES
("Vaquita", 3, "H", "S", 1, 1, 1),
("Chiquita", 2, "H", "S", 1, 5, 5),
("Rocky", 5, "M", "S", 3, 2, 1),
("Luna", 4, "H", "N", 4, 3, 2),
("Pelusa", 1, "H", "N", 5, 4, 3),
("Max", 6, "M", "S", 1, 2, 1),
("Michi", 2, "M", "S", 2, 3, 2),
("Coco", 3, "M", "N", 3, 4, 4),
("Nala", 1, "H", "N", 4, 5, 2),
("Bunny", 2, "H", "S", 5, 4, 3);

-- Visitas
INSERT INTO Visitas (Fecha, idServicio, idMascota) VALUES
("2024-01-15", 1, 1),
("2024-01-20", 3, 2),
("2024-02-05", 5, 3),
("2024-02-10", 2, 4),
("2024-03-01", 4, 5),
("2024-03-15", 1, 6),
("2024-04-02", 3, 7),
("2024-04-18", 5, 8),
("2024-05-05", 2, 9),
("2024-05-20", 4, 10);

-- Visitas y Tratamientos
INSERT INTO Visitas_has_Tratamientos (idVisita, idTratamiento) VALUES
(2, 1),
(3, 2),
(5, 3),
(7, 4),
(9, 5);