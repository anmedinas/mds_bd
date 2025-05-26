-- Cuenta el numero de columnas de la tabla application_train
SELECT COUNT(*) AS column_count
FROM information_schema.columns
WHERE table_name = 'application_train';