-- 1) Volver las PK a autonuméricas (AUTO_INCREMENT)
-- CAPACITACION: convertir PK a AUTO_INCREMENT
SELECT CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME = 'asistentes'
  AND REFERENCED_TABLE_NAME = 'capacitacion';

-- Quita temporalmente la FK
ALTER TABLE asistentes
  DROP FOREIGN KEY asistentes_capacitacion_fk;

-- Modifica la PK para que sea auto-incremental
ALTER TABLE capacitacion
  MODIFY idcapacitacion INT NOT NULL AUTO_INCREMENT;

-- Asegura el próximo valor (tienes registros hasta el 10)
ALTER TABLE capacitacion AUTO_INCREMENT = 11;

-- Vuelve a crear la FK (aprovecho de dejar ON UPDATE CASCADE)
ALTER TABLE asistentes
  ADD CONSTRAINT asistentes_capacitacion_fk
  FOREIGN KEY (capacitacion_idcapacitacion)
  REFERENCES capacitacion (idcapacitacion)
  ON UPDATE CASCADE
  ON DELETE RESTRICT;

/* -------------------------------------------------------- */
-- ASISTENTES: convertir PK a AUTO_INCREMENT
ALTER TABLE asistentes
  MODIFY idasistentes INT NOT NULL AUTO_INCREMENT;

-- Asegurar el siguiente valor (actualmente llega hasta 15)
ALTER TABLE asistentes AUTO_INCREMENT = 16;