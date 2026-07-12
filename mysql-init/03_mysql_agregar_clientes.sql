-- 03_mysql_agregar_clientes.sql
-- Maestro local de clientes con 1050+ registros

USE gimnasio_db;

DROP TABLE IF EXISTS cliente_local;

CREATE TABLE cliente_local (
    codigo_cliente INT NOT NULL,
    cedula_ruc VARCHAR(20),
    apellido1 VARCHAR(40),
    apellido2 VARCHAR(40),
    nombres VARCHAR(70) NOT NULL,
    direccion VARCHAR(180),
    telefono_principal VARCHAR(20),
    telefono_alterno VARCHAR(20),
    email_contacto VARCHAR(120),
    fecha_alta DATETIME,
    tipo_cliente CHAR(1) NOT NULL DEFAULT 'N',
    permite_credito CHAR(1) NOT NULL DEFAULT 'N',
    estado_registro CHAR(1) NOT NULL DEFAULT 'A',
    observaciones VARCHAR(250),
    PRIMARY KEY (codigo_cliente)
);

CREATE INDEX idx_cliente_cedula_ruc ON cliente_local(cedula_ruc);
CREATE INDEX idx_cliente_apellidos ON cliente_local(apellido1, apellido2);

INSERT INTO cliente_local
(codigo_cliente, cedula_ruc, apellido1, apellido2, nombres, direccion,
 telefono_principal, telefono_alterno, email_contacto, fecha_alta,
 tipo_cliente, permite_credito, estado_registro, observaciones)
VALUES
(1001, '1712345601', 'Rodriguez', NULL, 'Paola', 'Quito - La Magdalena', '0991000001', NULL, 'paola.rodriguez@gmail.com', '2024-04-25 09:10:00', 'F', 'N', 'A', NULL),
(1002, '1712345602', 'Mena', NULL, 'Elena', 'Quito, sector Centro', '0991000002', NULL, 'elena.mena@gmail.com', '2025-06-15 15:22:00', 'N', 'N', 'A', NULL),
(1003, '1712345603', 'Gomez', NULL, 'Camila', 'Sangolqui / San Rafael', '0991000003', NULL, 'camila.gomez@gmail.com', '2025-04-04 11:08:00', 'F', 'N', 'A', NULL),
(1004, '1712345604', 'Rodriguez', NULL, 'Andrea', 'Quito', '0991000004', NULL, 'andrea.rodriguez@gmail.com', '2025-12-15 13:42:00', 'N', 'N', 'A', NULL),
(1005, '1712345605', 'Ortiz', NULL, 'Jose', 'Quito Norte', '0991000005', NULL, 'jose.ortiz@gmail.com', '2025-03-23 10:15:00', 'F', 'S', 'A', 'Cliente frecuente'),
(1006, '1712345606', 'Gomez', NULL, 'Jorge', 'Quito - Cotocollao', NULL, NULL, 'jorge.gomez@gmail.com', '2025-05-28 17:31:00', 'N', 'N', 'A', 'No registra teléfono'),
(1007, '1712345607', 'Rodriguez', NULL, 'Daniela', 'Quito', '0991000007', NULL, NULL, '2024-04-26 08:55:00', 'N', 'N', 'I', 'Registro inactivo en caja'),
(1008, '1712345608', 'Perez', NULL, 'Jorge', 'Quito Centro', '0991000008', NULL, 'jperez@gimnasio.local', '2026-03-20 12:18:00', 'E', 'S', 'A', 'Cuenta empresarial'),
(1009, '1712345609', 'Gomez', NULL, 'Valeria', 'Quito', '0991000009', NULL, 'valeria.gomez@gmail.com', '2025-10-03 14:29:00', 'N', 'N', 'A', NULL),
(1010, '1712345610', 'Mena', NULL, 'Daniela', 'Cumbaya, cerca del parque', '0991000010', NULL, 'daniela.mena@gmail.com', '2026-01-19 09:45:00', 'N', 'N', 'A', NULL),
(1011, '1712345611', 'Rodriguez', NULL, 'Daniela', 'Quito', '0991000011', NULL, 'daniela.r@gmail.com', '2025-03-06 16:02:00', 'F', 'N', 'A', NULL),
(1012, '1712345612', 'Torres', NULL, 'Luis', 'Quito Sur', '0991000012', NULL, 'luis.torres@gmail.com', '2026-01-09 10:27:00', 'N', 'N', 'A', NULL),
(1013, '1712345613', 'Vega', NULL, 'Daniela', 'Sangolqui', '0991000013', NULL, 'daniela.vega@gmail.com', '2026-03-06 11:11:00', 'N', 'N', 'A', NULL),
(1014, '1712345614', 'Ortiz', NULL, 'Elena', 'Cumbaya', '0991000014', NULL, 'elena.ortiz@gmail.com', '2024-02-02 08:35:00', 'F', 'N', 'A', NULL),
(1015, '1712345615', 'Ortiz', NULL, 'Elena', 'Quito', '0991000015', NULL, 'elena.ortiz2@gmail.com', '2026-01-10 18:06:00', 'N', 'N', 'A', 'No confundir con cliente 1014'),
(1016, '1712345616', 'Vega', NULL, 'Elena', 'Quito', '0991000016', NULL, 'elena.vega@gmail.com', '2026-01-06 09:38:00', 'N', 'N', 'A', NULL),
(1017, '1712345617', 'Cevallos', NULL, 'Jorge', 'Quito', '0991000017', NULL, 'jorge.cevallos@gmail.com', '2026-06-24 15:54:00', 'N', 'N', 'A', NULL),
(1018, '1712345618', 'Mena', NULL, 'Fernando', 'Quito', '0991000018', NULL, 'fernando.mena@gmail.com', '2025-02-09 13:21:00', 'F', 'S', 'A', NULL),
(1019, '1712345619', 'Torres', NULL, 'Jorge', 'Quito', '0991000019', NULL, 'jorge.torres@gmail.com', '2025-04-28 10:05:00', 'N', 'N', 'A', NULL),
(1020, '1712345620', 'Rodriguez', NULL, 'Valeria', 'Quito', '0991000020', NULL, 'valeria.rodriguez@gmail.com', '2024-08-17 14:17:00', 'F', 'N', 'A', NULL),
(1021, '1712345621', 'Ruiz', NULL, 'Jorge', 'Quito', '0991000021', NULL, 'jorge.ruiz@gmail.com', '2024-04-19 11:48:00', 'N', 'N', 'A', NULL),
(1022, '1712345622', 'Perez', NULL, 'Luis', 'Quito', '0991000022', NULL, 'luis.perez@gmail.com', '2024-02-14 09:03:00', 'F', 'N', 'A', NULL),
(1023, '1712345623', 'Vega', NULL, 'Daniela', 'Cumbaya', '0991000023', NULL, 'daniela.vega2@gmail.com', '2026-01-07 12:33:00', 'N', 'N', 'A', NULL),
(1024, '1712345624', 'Castro', NULL, 'Luis', 'Quito', '0991000024', NULL, 'luis.castro@gmail.com', '2025-10-22 17:19:00', 'N', 'N', 'A', NULL),
(1025, '1712345625', 'Gomez', NULL, 'Miguel', 'Quito', '0991000025', NULL, 'miguel.gomez@gmail.com', '2025-03-07 10:52:00', 'F', 'N', 'A', NULL),
(1026, '1712345626', 'Castro', NULL, 'Miguel', 'Quito', '0991000026', NULL, 'miguel.castro@gmail.com', '2025-08-17 15:09:00', 'N', 'N', 'A', NULL),
(1027, '1712345627', 'Rodriguez', NULL, 'Jorge', 'Sangolqui', '0991000027', NULL, 'jorge.rodriguez@gmail.com', '2026-01-27 13:14:00', 'N', 'N', 'A', NULL),
(1028, '1712345628', 'Ortiz', NULL, 'Maria', 'Quito', '0991000028', NULL, 'maria.ortiz@gmail.com', '2025-08-27 09:49:00', 'F', 'N', 'A', NULL),
(1029, '1712345629', 'Mena', NULL, 'Andrea', 'Quito', '0991000029', NULL, 'andrea.mena@gmail.com', '2026-01-21 16:44:00', 'N', 'N', 'A', NULL),
(1030, '1712345630', 'Ortiz', NULL, 'Andrea', 'Quito', '0991000030', NULL, 'andrea.ortiz@gmail.com', '2026-01-06 08:26:00', 'N', 'N', 'A', NULL),
(1031, '1720000001', 'Almeida', NULL, 'Roberto', 'Machachi', '0992000001', NULL, 'roberto.almeida@gmail.com', '2025-05-10 10:00:00', 'N', 'N', 'A', 'No migrado al sistema corporativo'),
(1032, '1720000002', 'Salazar', NULL, 'Teresa', 'Quito', '0992000002', NULL, 'teresa.salazar@gmail.com', '2025-11-03 15:30:00', 'N', 'N', 'A', 'No migrada al sistema corporativo'),
(1033, '171-234-5602', 'Mena', NULL, 'Elena', 'Quito Centro', '0991000002', NULL, 'elena.mena@gmail.com', '2025-06-16 09:14:00', 'N', 'N', 'A', 'Documento registrado con guiones'),
(1034, ' 1712345603', 'GOMEZ', NULL, 'CAMILA', 'SANGOLQUI', NULL, NULL, 'camila.gomez@gmail.com', '2025-04-05 12:41:00', 'N', 'N', 'A', 'Documento con espacio inicial'),
(1035, '1712345601 ', 'Rodriguez', NULL, 'Paola R.', 'Quito ', '0991000001', NULL, 'paola.rodriguez@correo.com', '2024-04-26 10:20:00', 'F', 'N', 'A', 'Documento con espacio final y correo diferente'),
(1036, '9999999999', 'NO IDENTIFICADO', NULL, 'CLIENTE', 'Quito', NULL, NULL, NULL, '2026-01-01 00:00:00', 'N', 'N', 'A', 'Registro genérico creado por un operador'),
(1037, NULL, 'FINAL', NULL, 'CONSUMIDOR', NULL, NULL, NULL, NULL, '2026-01-01 00:00:00', 'N', 'N', 'A', 'Cliente genérico para ventas sin identificación');

-- Clientes masivos (1050 registros)
DELIMITER $$
DROP PROCEDURE IF EXISTS generar_clientes_masivos$$
CREATE PROCEDURE generar_clientes_masivos()
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE v_nombre VARCHAR(50);
    DECLARE v_apellido VARCHAR(50);
    DECLARE v_ciudad VARCHAR(50);
    DECLARE v_cedula VARCHAR(20);
    DECLARE v_codigo INT;
    DECLARE v_random INT;
    
    SET i = 0;
    WHILE i < 1050 DO
        SET v_random = FLOOR(RAND() * 50);
        SET v_nombre = CASE v_random
            WHEN 0 THEN 'Juan' WHEN 1 THEN 'María' WHEN 2 THEN 'Carlos' WHEN 3 THEN 'Ana' WHEN 4 THEN 'Luis'
            WHEN 5 THEN 'Laura' WHEN 6 THEN 'Pedro' WHEN 7 THEN 'Isabel' WHEN 8 THEN 'Miguel' WHEN 9 THEN 'Carmen'
            WHEN 10 THEN 'Jorge' WHEN 11 THEN 'Sofía' WHEN 12 THEN 'Diego' WHEN 13 THEN 'Elena' WHEN 14 THEN 'Fernando'
            WHEN 15 THEN 'Patricia' WHEN 16 THEN 'Andrés' WHEN 17 THEN 'Teresa' WHEN 18 THEN 'Roberto' WHEN 19 THEN 'Gloria'
            WHEN 20 THEN 'Manuel' WHEN 21 THEN 'Rosa' WHEN 22 THEN 'Antonio' WHEN 23 THEN 'Marta' WHEN 24 THEN 'Francisco'
            WHEN 25 THEN 'Lucía' WHEN 26 THEN 'Alberto' WHEN 27 THEN 'Dolores' WHEN 28 THEN 'Rafael' WHEN 29 THEN 'Carmela'
            WHEN 30 THEN 'David' WHEN 31 THEN 'Angela' WHEN 32 THEN 'Sergio' WHEN 33 THEN 'Julia' WHEN 34 THEN 'Oscar'
            WHEN 35 THEN 'Silvia' WHEN 36 THEN 'Hugo' WHEN 37 THEN 'Alicia' WHEN 38 THEN 'Eduardo' WHEN 39 THEN 'Natalia'
            WHEN 40 THEN 'Raúl' WHEN 41 THEN 'Lourdes' WHEN 42 THEN 'Enrique' WHEN 43 THEN 'Claudia' WHEN 44 THEN 'Javier'
            WHEN 45 THEN 'Margarita' WHEN 46 THEN 'Tomás' WHEN 47 THEN 'Isabela' WHEN 48 THEN 'Pablo' WHEN 49 THEN 'Paula'
        END;
        
        SET v_apellido = CASE v_random
            WHEN 0 THEN 'Pérez' WHEN 1 THEN 'García' WHEN 2 THEN 'Rodríguez' WHEN 3 THEN 'Martínez' WHEN 4 THEN 'López'
            WHEN 5 THEN 'González' WHEN 6 THEN 'Sánchez' WHEN 7 THEN 'Ramírez' WHEN 8 THEN 'Torres' WHEN 9 THEN 'Flores'
            WHEN 10 THEN 'Díaz' WHEN 11 THEN 'Ortiz' WHEN 12 THEN 'Cruz' WHEN 13 THEN 'Morales' WHEN 14 THEN 'Reyes'
            WHEN 15 THEN 'Gutiérrez' WHEN 16 THEN 'Mendoza' WHEN 17 THEN 'Castillo' WHEN 18 THEN 'Ríos' WHEN 19 THEN 'Aguilar'
            WHEN 20 THEN 'Romero' WHEN 21 THEN 'Vargas' WHEN 22 THEN 'Soto' WHEN 23 THEN 'Paredes' WHEN 24 THEN 'Castro'
            WHEN 25 THEN 'Jiménez' WHEN 26 THEN 'Serrano' WHEN 27 THEN 'Herrera' WHEN 28 THEN 'Velásquez' WHEN 29 THEN 'Núñez'
            WHEN 30 THEN 'Molina' WHEN 31 THEN 'Delgado' WHEN 32 THEN 'Ramos' WHEN 33 THEN 'Vega' WHEN 34 THEN 'Ortega'
            WHEN 35 THEN 'Méndez' WHEN 36 THEN 'Suárez' WHEN 37 THEN 'Cordero' WHEN 38 THEN 'Valencia' WHEN 39 THEN 'Benítez'
            WHEN 40 THEN 'Carvajal' WHEN 41 THEN 'Salazar' WHEN 42 THEN 'Ponce' WHEN 43 THEN 'León' WHEN 44 THEN 'Uribe'
            WHEN 45 THEN 'Ayala' WHEN 46 THEN 'Barrera' WHEN 47 THEN 'Cabrera' WHEN 48 THEN 'Hernández' WHEN 49 THEN 'Quintero'
        END;
        
        SET v_ciudad = CASE FLOOR(RAND() * 10)
            WHEN 0 THEN 'Quito' WHEN 1 THEN 'Guayaquil' WHEN 2 THEN 'Cuenca'
            WHEN 3 THEN 'Sangolquí' WHEN 4 THEN 'Cumbayá' WHEN 5 THEN 'Tumbaco'
            WHEN 6 THEN 'Machachi' WHEN 7 THEN 'Latacunga' WHEN 8 THEN 'Ambato'
            ELSE 'Riobamba'
        END;
        
        SET v_random = FLOOR(RAND() * 100);
        SET v_cedula = CASE
            WHEN v_random < 4 THEN CONCAT(' ', LPAD(i + 1712346000, 10, '0'))
            WHEN v_random < 8 THEN CONCAT(LPAD(i + 1712346000, 10, '0'), ' ')
            WHEN v_random < 12 THEN CONCAT(
                SUBSTRING(LPAD(i + 1712346000, 10, '0'), 1, 3), '-',
                SUBSTRING(LPAD(i + 1712346000, 10, '0'), 4, 3), '-',
                SUBSTRING(LPAD(i + 1712346000, 10, '0'), 7, 4)
            )
            ELSE LPAD(i + 1712346000, 10, '0')
        END;
        
        SET v_codigo = i + 2000;
        
        INSERT INTO cliente_local
        (codigo_cliente, cedula_ruc, apellido1, apellido2, nombres, direccion,
         telefono_principal, telefono_alterno, email_contacto, fecha_alta,
         tipo_cliente, permite_credito, estado_registro, observaciones)
        VALUES (
            v_codigo,
            v_cedula,
            v_apellido,
            NULL,
            v_nombre,
            CONCAT(v_ciudad, ' - Calle ', FLOOR(RAND() * 100) + 1, ' #', FLOOR(RAND() * 50) + 1),
            CONCAT('099', LPAD(FLOOR(RAND() * 1000000), 6, '0')),
            CASE WHEN RAND() < 0.3 THEN CONCAT('099', LPAD(FLOOR(RAND() * 1000000), 6, '0')) ELSE NULL END,
            CASE WHEN RAND() < 0.1 THEN NULL ELSE LOWER(CONCAT(SUBSTRING(v_nombre, 1, 1), '.', v_apellido, FLOOR(RAND() * 1000), '@gmail.com')) END,
            CONCAT(
                CASE WHEN RAND() < 0.5 THEN '2024' ELSE '2025' END,
                '-',
                LPAD(FLOOR(RAND() * 12) + 1, 2, '0'),
                '-',
                LPAD(FLOOR(RAND() * 28) + 1, 2, '0'),
                ' ',
                LPAD(FLOOR(RAND() * 24), 2, '0'),
                ':',
                LPAD(FLOOR(RAND() * 60), 2, '0'),
                ':00'
            ),
            CASE WHEN RAND() < 0.2 THEN 'E' WHEN RAND() < 0.4 THEN 'F' ELSE 'N' END,
            CASE WHEN RAND() < 0.15 THEN 'S' ELSE 'N' END,
            CASE WHEN RAND() < 0.05 THEN 'I' ELSE 'A' END,
            CASE WHEN RAND() < 0.05 THEN 'Cliente con observaciones especiales' ELSE NULL END
        );
        
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

CALL generar_clientes_masivos();
DROP PROCEDURE IF EXISTS generar_clientes_masivos;

-- ==================== VERIFICACIONES ====================
-- SELECT COUNT(*) AS total_clientes_mysql FROM cliente_local;
-- SELECT cedula_ruc, COUNT(*) FROM cliente_local GROUP BY cedula_ruc HAVING COUNT(*) > 1;