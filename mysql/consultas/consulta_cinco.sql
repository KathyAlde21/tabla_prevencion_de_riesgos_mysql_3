-- 5) Actualizar dia y hora cuando ambos son NULL
UPDATE capacitacion
SET dia = '01/01/2020',
    hora = '00:00'
WHERE dia IS NULL
  AND hora IS NULL;
  
SELECT * FROM capacitacion;