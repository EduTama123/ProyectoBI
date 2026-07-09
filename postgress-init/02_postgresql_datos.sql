-- 02_postgresql_datos.sql
-- Datos de gestión con errores deliberados + datos masivos (CORREGIDO)
-- Eliminadas tablas operacion y funcion

SET search_path TO gestion, public;

-- ==================== ZONAS ====================
INSERT INTO zona (codigo_zona, nombre, responsable) VALUES
('ZN', 'Zona Norte', 'Ana Torres'),
('ZC', 'Zona Centro', 'Luis Paredes'),
('ZS', 'Zona Sur', 'María Silva'),
('ZV', 'Zona Valle', 'Carlos Ruiz');

-- ==================== SEGMENTOS (9 segmentos) ====================
INSERT INTO segmento_cliente (codigo_segmento, nombre, descripcion) VALUES
('NUEVO', 'Cliente nuevo', 'Registrado hace menos de seis meses'),
('FREC', 'Frecuente', 'Asiste regularmente a clases'),
('VIP', 'Cliente VIP', 'Alta frecuencia y pago premium'),
('INACT', 'Inactivo', 'Sin asistencias recientes'),
('FAM', 'Cliente Familiar', 'Clientes que asisten en grupo familiar'),
('CORP', 'Corporativo', 'Empresas que inscriben a sus empleados'),
('EST', 'Estudiante', 'Clientes con descuento estudiantil'),
('PREMIUM', 'Premium', 'Clientes con membresía anual y beneficios exclusivos'),
('OCAS', 'Ocasional', 'Clientes que asisten esporádicamente (1-2 veces al mes)');

-- ==================== SUCURSALES ====================
INSERT INTO sucursal (codigo_sucursal, nombre_oficial, codigo_zona, ciudad, direccion, latitud, longitud, fecha_apertura, activa) VALUES
('NORTE', 'Gimnasio Norte', 'ZN', 'Quito', 'Av. 10 de Agosto N45-20', -0.180653, -78.484321, DATE '2022-02-01', TRUE),
('CENTRO', 'Gimnasio Centro Histórico', 'ZC', 'QUITO', 'Guayaquil y Chile', -0.220164, -78.512327, DATE '2020-08-15', TRUE),
('SUR', 'Gimnasio del Sur', 'ZS', 'quito ', 'Av. Maldonado S25-10', -0.285110, -78.548900, DATE '2023-01-10', TRUE),
('VALLE', 'Gimnasio Valle de los Chillos', 'ZV', 'Sangolquí', 'Av. Calderón 101', -0.334120, -78.449800, DATE '2024-04-20', TRUE);

-- ==================== CLIENTES (34 iniciales + masivos) ====================
-- Clientes iniciales (34 registros con errores)
INSERT INTO cliente (documento, nombres, ciudad, fecha_nacimiento, sexo, codigo_segmento, fecha_registro, correo, activo) VALUES
('1712345601', 'Paola Rodríguez', 'Quito', DATE '1974-10-22', 'F', 'NUEVO', DATE '2024-04-25', 'paola_rodriguez@correo.com', TRUE),
('1712345602', 'Elena Mena', 'quito', DATE '1989-10-02', 'M', 'FREC', DATE '2025-06-15', 'elena_mena@correo.com', TRUE),
('1712345603', 'Camila Gómez', 'Sangolquí', DATE '1973-09-12', 'F', 'FREC', DATE '2025-04-04', 'camila_gomez@correo.com', TRUE),
('1712345604', 'Andrea Rodríguez', 'Quito ', DATE '1998-07-18', 'M', 'FREC', DATE '2025-12-15', 'andrea_rodriguez@correo.com', TRUE),
('1712345605', 'José Ortiz', 'quito', DATE '1996-04-04', 'M', 'VIP', DATE '2025-03-23', 'jose_ortiz@correo.com', TRUE),
('1712345606', 'Jorge Gómez', NULL, DATE '1985-11-12', 'M', 'FREC', DATE '2025-05-28', 'jorge_gomez@correo.com', TRUE),
('1712345607', 'Daniela Rodríguez', NULL, DATE '1988-09-08', 'M', 'INACT', DATE '2024-04-26', 'daniela_rodriguez@correo.com', TRUE),
('1712345608', 'Jorge Pérez', 'quito', DATE '2000-10-12', 'F', 'VIP', DATE '2026-03-20', 'jorge_perez@correo.com', TRUE),
('1712345609', 'Valeria Gómez', 'Quito', DATE '1984-07-23', 'F', 'FREC', DATE '2025-10-03', 'valeria_gomez@correo.com', TRUE),
('1712345610', 'Daniela Mena', 'Cumbayá', DATE '1969-08-15', 'F', 'NUEVO', DATE '2026-11-19', 'daniela_mena@correo.com', TRUE),
('1712345611', 'Daniela Rodríguez', 'Quito ', DATE '1997-01-27', 'M', 'FREC', DATE '2025-03-06', 'daniela_rodriguez@correo.com', TRUE),
('1712345612', 'Luis Torres', 'quito', DATE '1998-05-28', 'M', 'FREC', DATE '2026-09-09', 'luis_torres@correo.com', TRUE),
('1712345613', 'Daniela Vega', 'Sangolquí', DATE '1999-02-17', 'M', 'FREC', DATE '2026-03-06', 'daniela_vega@correo.com', TRUE),
('1712345614', 'Elena Ortiz', 'Cumbayá', DATE '2003-06-27', 'M', 'VIP', DATE '2024-02-02', 'elena_ortiz@correo.com', TRUE),
('1712345615', 'Elena Ortiz', 'quito', DATE '1978-10-14', 'M', 'FREC', DATE '2026-09-10', 'elena_ortiz@correo.com', TRUE),
('1712345616', 'Elena Vega', 'Quito ', DATE '1980-11-13', 'F', 'FREC', DATE '2026-01-06', 'elena_vega@correo.com', TRUE),
('1712345617', 'Jorge Cevallos', 'Quito ', DATE '1994-04-11', 'M', 'FREC', DATE '2026-06-24', 'jorge_cevallos@correo.com', TRUE),
('1712345618', 'Fernando Mena', 'Quito ', DATE '1973-06-17', 'M', 'FREC', DATE '2025-02-09', 'fernando_mena@correo.com', TRUE),
('1712345619', 'Jorge Torres', 'QUITO', DATE '1971-01-10', 'F', 'VIP', DATE '2025-04-28', 'jorge_torres@correo.com', TRUE),
('1712345620', 'Valeria Rodríguez', NULL, DATE '1985-10-24', 'F', 'NUEVO', DATE '2024-08-17', 'valeria_rodriguez@correo.com', TRUE),
('1712345621', 'Jorge Ruiz', 'quito', DATE '1996-01-03', 'F', 'FREC', DATE '2024-04-19', 'jorge_ruiz@correo.com', TRUE),
('1712345622', 'Luis Pérez', 'Quito', DATE '1983-08-20', 'F', 'FREC', DATE '2024-02-14', 'luis_perez@correo.com', TRUE),
('1712345623', 'Daniela Vega', 'Cumbayá', DATE '1988-07-12', 'M', 'FREC', DATE '2026-09-07', 'daniela_vega@correo.com', TRUE),
('1712345624', 'Luis Castro', 'quito', DATE '1969-07-17', 'F', 'VIP', DATE '2025-10-22', 'luis_castro@correo.com', TRUE),
('1712345625', 'Miguel Gómez', 'QUITO', DATE '1971-07-12', 'F', 'FREC', DATE '2025-03-07', 'miguel_gomez@correo.com', TRUE),
('1712345626', 'Miguel Castro', 'Quito ', DATE '1997-01-02', 'M', 'NUEVO', DATE '2025-08-17', 'miguel_castro@correo.com', TRUE),
('1712345627', 'Jorge Rodríguez', 'Sangolquí', DATE '1997-03-11', 'F', 'NUEVO', DATE '2026-12-27', 'jorge_rodriguez@correo.com', TRUE),
('1712345628', 'María Ortiz', 'quito', DATE '1997-09-18', 'F', 'VIP', DATE '2025-08-27', 'maria_ortiz@correo.com', TRUE),
('1712345629', 'Andrea Mena', 'quito', DATE '1972-07-19', 'F', 'VIP', DATE '2026-12-21', 'andrea_mena@correo.com', TRUE),
('1712345630', 'Andrea Ortiz', 'Quito ', DATE '1981-11-26', 'M', 'VIP', DATE '2026-08-06', 'andrea_ortiz@correo.com', TRUE),
('1712345605', 'MARIA PEREZ', 'QUITO', DATE '1984-05-14', 'F', 'FREC', DATE '2025-06-01', 'maria.perez@correo.com', TRUE),
('1712345610 ', 'Luis Gómez', 'Quito', DATE '1979-02-03', 'M', 'VIP', DATE '2024-11-20', NULL, TRUE),
('171-234-5615', 'Sofía Torres', 'quito', DATE '1992-09-09', 'F', 'NUEVO', DATE '2026-01-03', 'sofia@correo.com', TRUE),
('0000000000', 'Cliente de prueba', NULL, NULL, NULL, 'INACT', DATE '2025-01-01', NULL, FALSE);

-- ==================== CLIENTES MASIVOS (1050 registros) ====================
-- Creamos una tabla temporal con nombres y apellidos
CREATE TEMP TABLE temp_nombres_postgres AS
SELECT * FROM (VALUES
    (1, 'Juan', 'Pérez', 'M'),
    (2, 'María', 'García', 'F'),
    (3, 'Carlos', 'Rodríguez', 'M'),
    (4, 'Ana', 'Martínez', 'F'),
    (5, 'Luis', 'López', 'M'),
    (6, 'Laura', 'González', 'F'),
    (7, 'Pedro', 'Sánchez', 'M'),
    (8, 'Isabel', 'Ramírez', 'F'),
    (9, 'Miguel', 'Torres', 'M'),
    (10, 'Carmen', 'Flores', 'F'),
    (11, 'Jorge', 'Díaz', 'M'),
    (12, 'Sofía', 'Ortiz', 'F'),
    (13, 'Diego', 'Cruz', 'M'),
    (14, 'Elena', 'Morales', 'F'),
    (15, 'Fernando', 'Reyes', 'M'),
    (16, 'Patricia', 'Gutiérrez', 'F'),
    (17, 'Andrés', 'Mendoza', 'M'),
    (18, 'Teresa', 'Castillo', 'F'),
    (19, 'Roberto', 'Ríos', 'M'),
    (20, 'Gloria', 'Aguilar', 'F'),
    (21, 'Manuel', 'Romero', 'M'),
    (22, 'Rosa', 'Vargas', 'F'),
    (23, 'Antonio', 'Soto', 'M'),
    (24, 'Marta', 'Paredes', 'F'),
    (25, 'Francisco', 'Castro', 'M'),
    (26, 'Lucía', 'Jiménez', 'F'),
    (27, 'Alberto', 'Serrano', 'M'),
    (28, 'Dolores', 'Herrera', 'F'),
    (29, 'Rafael', 'Velásquez', 'M'),
    (30, 'Carmela', 'Núñez', 'F'),
    (31, 'David', 'Molina', 'M'),
    (32, 'Angela', 'Delgado', 'F'),
    (33, 'Sergio', 'Ramos', 'M'),
    (34, 'Julia', 'Vega', 'F'),
    (35, 'Oscar', 'Ortega', 'M'),
    (36, 'Silvia', 'Méndez', 'F'),
    (37, 'Hugo', 'Suárez', 'M'),
    (38, 'Alicia', 'Cordero', 'F'),
    (39, 'Eduardo', 'Valencia', 'M'),
    (40, 'Natalia', 'Benítez', 'F'),
    (41, 'Raúl', 'Carvajal', 'M'),
    (42, 'Lourdes', 'Salazar', 'F'),
    (43, 'Enrique', 'Ponce', 'M'),
    (44, 'Claudia', 'León', 'F'),
    (45, 'Javier', 'Uribe', 'M'),
    (46, 'Margarita', 'Ayala', 'F'),
    (47, 'Tomás', 'Barrera', 'M'),
    (48, 'Isabela', 'Cabrera', 'F'),
    (49, 'Pablo', 'Hernández', 'M'),
    (50, 'Paula', 'Quintero', 'F')
) AS t(id, nombre, apellido, sexo);

-- Creamos una tabla temporal con ciudades
CREATE TEMP TABLE temp_ciudades_postgres AS
SELECT * FROM (VALUES
    (1, 'Quito'),
    (2, 'Guayaquil'),
    (3, 'Cuenca'),
    (4, 'Sangolquí'),
    (5, 'Cumbayá'),
    (6, 'Tumbaco'),
    (7, 'Machachi'),
    (8, 'Latacunga'),
    (9, 'Ambato'),
    (10, 'Riobamba')
) AS t(id, ciudad);

-- Creamos una tabla temporal con segmentos
CREATE TEMP TABLE temp_segmentos_postgres AS
SELECT codigo_segmento FROM segmento_cliente;

-- Insertamos clientes masivos usando las tablas temporales
INSERT INTO cliente (documento, nombres, ciudad, fecha_nacimiento, sexo, codigo_segmento, fecha_registro, correo, activo)
SELECT 
    CASE 
        WHEN RANDOM() < 0.04 THEN ' ' || LPAD((g + 1712347000)::TEXT, 10, '0')
        WHEN RANDOM() < 0.04 THEN LPAD((g + 1712347000)::TEXT, 10, '0') || ' '
        WHEN RANDOM() < 0.04 THEN SUBSTRING(LPAD((g + 1712347000)::TEXT, 10, '0'), 1, 3) || '-' || 
                                  SUBSTRING(LPAD((g + 1712347000)::TEXT, 10, '0'), 4, 3) || '-' ||
                                  SUBSTRING(LPAD((g + 1712347000)::TEXT, 10, '0'), 7, 4)
        ELSE LPAD((g + 1712347000)::TEXT, 10, '0')
    END,
    n.nombre || ' ' || n.apellido,
    c.ciudad,
    DATE '1970-01-01' + (RANDOM() * 30 * 365)::INT,
    CASE WHEN RANDOM() < 0.08 THEN 
        CASE WHEN n.sexo = 'M' THEN 'F' WHEN n.sexo = 'F' THEN 'M' ELSE n.sexo END
    ELSE n.sexo END,
    s.codigo_segmento,
    CASE WHEN RANDOM() < 0.45 THEN DATE '2024-01-01' + (RANDOM() * 364)::INT 
         ELSE DATE '2025-01-01' + (RANDOM() * 364)::INT END,
    CASE WHEN RANDOM() < 0.12 THEN NULL 
         ELSE LOWER(SUBSTRING(n.nombre, 1, 1) || '.' || n.apellido || (RANDOM() * 1000)::INT::TEXT || '@correo.com') END,
    CASE WHEN RANDOM() < 0.04 THEN FALSE ELSE TRUE END
FROM generate_series(1, 1050) g
CROSS JOIN (SELECT nombre, apellido, sexo FROM temp_nombres_postgres ORDER BY RANDOM() LIMIT 1) n
CROSS JOIN (SELECT ciudad FROM temp_ciudades_postgres ORDER BY RANDOM() LIMIT 1) c
CROSS JOIN (SELECT codigo_segmento FROM temp_segmentos_postgres ORDER BY RANDOM() LIMIT 1) s;

-- Eliminamos las tablas temporales
DROP TABLE temp_nombres_postgres;
DROP TABLE temp_ciudades_postgres;
DROP TABLE temp_segmentos_postgres;

-- ==================== METAS MENSUALES (2024-2025) ====================
INSERT INTO meta_mensual (codigo_sucursal, periodo, meta_ingresos, meta_clientes_nuevos, meta_renovaciones)
SELECT 
    s.codigo_sucursal,
    DATE '2024-01-01' + (g * INTERVAL '1 month'),
    ROUND((5000 + RANDOM() * 5000)::NUMERIC, 2),
    FLOOR(RANDOM() * 30) + 15,
    FLOOR(RANDOM() * 25) + 10
FROM sucursal s
CROSS JOIN generate_series(0, 11) AS g;

INSERT INTO meta_mensual (codigo_sucursal, periodo, meta_ingresos, meta_clientes_nuevos, meta_renovaciones)
SELECT 
    s.codigo_sucursal,
    DATE '2025-01-01' + (g * INTERVAL '1 month'),
    ROUND((5500 + RANDOM() * 5500)::NUMERIC, 2),
    FLOOR(RANDOM() * 35) + 18,
    FLOOR(RANDOM() * 30) + 12
FROM sucursal s
CROSS JOIN generate_series(0, 11) AS g;

-- ==================== ENCUESTAS SATISFACCIÓN (500 registros) ====================
INSERT INTO encuesta_satisfaccion (fecha, codigo_sucursal, documento_cliente, puntuacion, tiempo_espera_minutos, comentario)
SELECT 
    CASE WHEN RANDOM() < 0.4 THEN DATE '2024-01-01' + (RANDOM() * 364)::INT
         WHEN RANDOM() < 0.8 THEN DATE '2025-01-01' + (RANDOM() * 364)::INT
         ELSE DATE '2026-01-01' + (RANDOM() * 90)::INT END,
    s.codigo_sucursal,
    CASE 
        WHEN RANDOM() < 0.03 THEN ''
        WHEN RANDOM() < 0.03 THEN NULL
        WHEN RANDOM() < 0.05 THEN ' ' || LPAD((FLOOR(RANDOM() * 10000000) + 1712340000)::TEXT, 10, '0')
        WHEN RANDOM() < 0.05 THEN LPAD((FLOOR(RANDOM() * 10000000) + 1712340000)::TEXT, 10, '0') || ' '
        WHEN RANDOM() < 0.05 THEN SUBSTRING(LPAD((FLOOR(RANDOM() * 10000000) + 1712340000)::TEXT, 10, '0'), 1, 3) || '-' || 
                                  SUBSTRING(LPAD((FLOOR(RANDOM() * 10000000) + 1712340000)::TEXT, 10, '0'), 4, 3) || '-' ||
                                  SUBSTRING(LPAD((FLOOR(RANDOM() * 10000000) + 1712340000)::TEXT, 10, '0'), 7, 4)
        WHEN RANDOM() < 0.02 THEN '9999999999'
        ELSE LPAD((FLOOR(RANDOM() * 10000000) + 1712340000)::TEXT, 10, '0')
    END,
    CASE 
        WHEN RANDOM() < 0.02 THEN 7
        WHEN RANDOM() < 0.02 THEN 0
        ELSE FLOOR(RANDOM() * 5) + 1
    END,
    CASE 
        WHEN RANDOM() < 0.02 THEN FLOOR(RANDOM() * 60) + 61
        ELSE FLOOR(RANDOM() * 40) + 1
    END,
    CASE 
        WHEN RANDOM() < 0.08 THEN 'Excelente servicio'
        WHEN RANDOM() < 0.16 THEN 'Muy buena atención'
        WHEN RANDOM() < 0.24 THEN 'Buena atención'
        WHEN RANDOM() < 0.32 THEN 'Atención regular'
        WHEN RANDOM() < 0.40 THEN 'Local cómodo'
        WHEN RANDOM() < 0.48 THEN 'Demasiada espera'
        WHEN RANDOM() < 0.56 THEN 'Pocos productos disponibles'
        WHEN RANDOM() < 0.64 THEN 'No había stock'
        WHEN RANDOM() < 0.72 THEN 'Faltó el medicamento solicitado'
        ELSE NULL
    END
FROM generate_series(1, 500) g
CROSS JOIN sucursal s
WHERE RANDOM() < 0.03
LIMIT 500;

-- ==================== VERIFICACIONES ====================
-- SELECT COUNT(*) AS total_clientes FROM cliente;
-- SELECT COUNT(*) AS total_metas FROM meta_mensual;
-- SELECT COUNT(*) AS total_encuestas FROM encuesta_satisfaccion;