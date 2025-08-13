-- 4) Restricción única sobre nombres en asistentes
ALTER TABLE asistentes
  ADD CONSTRAINT asistentes_nombres_uk UNIQUE (nombres);
  
SELECT * FROM asistentes;