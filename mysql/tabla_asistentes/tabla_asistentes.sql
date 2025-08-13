CREATE TABLE asistentes (
	idasistentes INT NOT NULL PRIMARY KEY,             	 			-- identificador obligatorio (clave primaria)
    nombres VARCHAR(100) NOT NULL,                          		-- nombre obligatorio, hasta 50 caracteres
    edad INT NOT NULL,                               				-- edad obligatoria
    capacitacion_idcapacitacion INT NOT NULL                        -- llave foranea idcapacitacion, obligatorio
    );
    
ALTER TABLE asistentes
ADD CONSTRAINT asistentes_capacitacion_fk 
FOREIGN KEY ( capacitacion_idcapacitacion )
REFERENCES capacitacion ( idcapacitacion );