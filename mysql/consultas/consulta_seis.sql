-- 6) Eliminar capacitaciones sin asistentes (y con cantidadasistentes = 0)
-- previsualizar lo que se va a borrar:
SELECT c.idcapacitacion, c.dia, c.hora, c.lugar
FROM capacitacion AS c
LEFT JOIN asistentes AS a
  ON a.capacitacion_idcapacitacion = c.idcapacitacion
WHERE c.cantidadasistentes = 0
  AND a.idasistentes IS NULL;

-- borrar usando la PK idcapacitacion dentro del WHERE
DELETE FROM capacitacion
WHERE idcapacitacion IN (
  SELECT idcapacitacion
  FROM (
    SELECT c.idcapacitacion
    FROM capacitacion AS c
    LEFT JOIN asistentes AS a
      ON a.capacitacion_idcapacitacion = c.idcapacitacion
    WHERE c.cantidadasistentes = 0
      AND a.idasistentes IS NULL
  ) AS t
);

