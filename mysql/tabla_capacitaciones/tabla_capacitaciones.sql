CREATE TABLE capacitacion (
	idcapacitacion INT NOT NULL PRIMARY KEY,             	 			-- Identificador obligatorio (clave primaria)
    -- RUT cliente, obligatorio, texto hasta 15. Use CHECK para determinar contenido, obligar al guion, que la k pueda ser en mayuscula o minuscula
    -- antes del guion entre 7 y 8 numeros y despues del guion solo 1
    rutcliente VARCHAR(15) NOT NULL CHECK (rutcliente REGEXP '^[0-9]{7,8}-[1-9kK]{1}$'),
    dia VARCHAR(10) NOT NULL,                                     		-- Día de la semana, obligatorio
    hora CHAR(5) NOT NULL CHECK (hora REGEXP '^[0-2][0-9]:[0-5][0-9]'), -- Hora texto, 5 caracteres, formato HH:MM, la restricción CHECK ayuda a asegurar el formato.
    lugar VARCHAR(50) NOT NULL,                          				-- Lugar obligatorio, hasta 50 caracteres
    duracion INT NOT NULL,                               				-- Duración en minutos, obligatorio
    cantidadasistentes INT NOT NULL                           			-- Cantidad de asistentes, obligatorio
    );
    
    -- pk idcapacitacion => capacitacion_pk