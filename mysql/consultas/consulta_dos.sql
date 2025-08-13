-- 2) 3 INSERT en capacitacion SIN indicar idcapacitacion
INSERT INTO capacitacion (rutcliente, dia, hora, lugar, duracion, cantidadasistentes)
VALUES ('11111111-1', 'Lunes', '12:30', 'Quilicura', 50, 14);

INSERT INTO capacitacion (rutcliente, dia, hora, lugar, duracion, cantidadasistentes)
VALUES ('22222222-2', 'Martes', '18:00', 'Independencia', 75, 28);

INSERT INTO capacitacion (rutcliente, dia, hora, lugar, duracion, cantidadasistentes)
VALUES ('33333333-3', 'Jueves', '07:45', 'La Reina', 40, 9);

SELECT * FROM capacitacion;