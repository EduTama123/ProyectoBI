-- 02_mysql_datos.sql
-- Datos con errores deliberados para ETL + Datos masivos (CORREGIDO)

USE gimnasio_db;

-- ==================== SERVICIOS ====================
INSERT INTO servicio (codigo_servicio, nombre, descripcion, duracion_minutos, costo, activo) VALUES
('S001', 'Yoga', 'Clase de yoga para todos los niveles', 60, 15.00, 1),
('S002', 'CrossFit', 'Entrenamiento funcional de alta intensidad', 45, 20.00, 1),
('S003', 'Musculación', 'Entrenamiento con pesas y máquinas', 60, 18.00, 1),
('S004', 'Pilates', 'Ejercicios de control corporal', 50, 16.00, 1),
('S005', 'Spinning', 'Ciclismo indoor', 45, 17.00, 1),
('S006', 'Zumba', 'Baile fitness', 60, 14.00, 1),
('S007', 'Boxeo', 'Entrenamiento de boxeo', 60, 22.00, 1),
('S008', 'Natación', 'Clases de natación', 45, 19.00, 1);

-- ==================== INSTRUCTORES ====================
INSERT INTO instructor (codigo_instructor, nombres, apellidos, especialidad, email, activo) VALUES
('I001', 'Carlos', 'Mendoza', 'Yoga', 'carlos.m@fit.com', 1),
('I002', 'Ana', 'López', 'CrossFit', 'ana.l@fit.com', 1),
('I003', 'Luis', 'Ramírez', 'Musculación', 'luis.r@fit.com', 1),
('I004', 'María', 'Torres', 'Pilates', 'maria.t@fit.com', 1),
('I005', 'Pedro', 'Gómez', 'Spinning', 'pedro.g@fit.com', 1);

-- ==================== CLASES ====================
INSERT INTO clase (codigo_clase, nombre, codigo_servicio, codigo_instructor, cupo_maximo, duracion_minutos, activo) VALUES
('CL001', 'Yoga Principiantes', 'S001', 'I001', 20, 60, 1),
('CL002', 'Yoga Avanzado', 'S001', 'I001', 15, 60, 1),
('CL003', 'CrossFit Nivel 1', 'S002', 'I002', 25, 45, 1),
('CL004', 'CrossFit Nivel 2', 'S002', 'I002', 20, 45, 1),
('CL005', 'Musculación Básica', 'S003', 'I003', 30, 60, 1),
('CL006', 'Musculación Avanzada', 'S003', 'I003', 25, 60, 1),
('CL007', 'Pilates Mat', 'S004', 'I004', 15, 50, 1),
('CL008', 'Pilates Reformer', 'S004', 'I004', 10, 50, 1),
('CL009', 'Spinning Clásico', 'S005', 'I005', 20, 45, 1),
('CL010', 'Spinning Intenso', 'S005', 'I005', 15, 45, 1);

-- ==================== INVENTARIO CLASES ====================
INSERT INTO inventario_clases (sucursal_origen, codigo_clase, cupos_disponibles, fecha_actualizacion) VALUES
('GIMNASIO NORTE', 'CL001', 4, '2026-03-09'),
('GIMNASIO NORTE', 'CL002', 4, '2026-02-13'),
('GIMNASIO NORTE', 'CL003', 16, '2026-01-20'),
('GIMNASIO NORTE', 'CL004', 19, '2026-02-26'),
('GIMNASIO NORTE', 'CL005', 34, '2026-01-31'),
('GIMNASIO NORTE', 'CL006', 26, '2026-01-30'),
('GIMNASIO NORTE', 'CL007', 0, '2026-02-09'),
('GIMNASIO NORTE', 'CL008', 20, '2026-03-15'),
('GIMNASIO NORTE', 'CL009', 37, '2026-02-18'),
('GIMNASIO NORTE', 'CL010', 41, '2026-01-21'),
('GIMNASIO CENTRO', 'CL001', 17, '2026-01-12'),
('GIMNASIO CENTRO', 'CL002', 36, '2026-01-04'),
('GIMNASIO CENTRO', 'CL003', 11, '2026-03-06'),
('GIMNASIO CENTRO', 'CL004', 23, '2026-01-11'),
('GIMNASIO CENTRO', 'CL005', 22, '2026-02-10'),
('GIMNASIO CENTRO', 'CL006', 29, '2026-01-18'),
('GIMNASIO CENTRO', 'CL007', 26, '2026-01-18'),
('GIMNASIO CENTRO', 'CL008', 36, '2026-01-11'),
('GIMNASIO CENTRO', 'CL009', 24, '2026-01-20'),
('GIMNASIO CENTRO', 'CL010', 41, '2026-01-15'),
('Gimnasio Sur', 'CL001', 35, '2026-02-15'),
('Gimnasio Sur', 'CL002', 44, '2026-01-24'),
('Gimnasio Sur', 'CL003', 5, '2026-01-11'),
('Gimnasio Sur', 'CL004', 3, '2026-01-09'),
('Gimnasio Sur', 'CL005', 42, '2026-02-19'),
('Gimnasio Sur', 'CL006', 10, '2026-02-17'),
('Gimnasio Sur', 'CL007', 9, '2026-01-09'),
('Gimnasio Sur', 'CL008', 23, '2026-03-16'),
('Gimnasio Sur', 'CL009', 16, '2026-02-15'),
('Gimnasio Sur', 'CL010', 29, '2026-03-01'),
('Sucursal Valle', 'CL001', 90, '2026-02-05'),
('Sucursal Valle', 'CL002', 70, '2026-01-10'),
('Sucursal Valle', 'CL003', 24, '2026-01-25'),
('Sucursal Valle', 'CL004', 30, '2026-02-12'),
('Sucursal Valle', 'CL005', 15, '2026-02-25'),
('Sucursal Valle', 'CL006', 36, '2026-02-13'),
('Sucursal Valle', 'CL007', 39, '2026-02-17'),
('Sucursal Valle', 'CL008', 25, '2026-02-24'),
('Sucursal Valle', 'CL009', 35, '2026-03-11'),
('Sucursal Valle', 'CL010', 28, '2026-01-11');

-- ==================== INSCRIPCIONES (120 iniciales) ====================
INSERT INTO inscripcion (numero_inscripcion, fecha_hora, sucursal_origen, documento_cliente, forma_pago, descuento, estado, observacion) VALUES
('I0001', '2026-03-23 09:00:00', 'SUR', '1712345605', 'EFECTIVO', 2.0, 'COMPLETADA', NULL),
('I0002', '2026-03-19 08:40:00', 'Sucursal Norte', '1712345618', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0003', '2026-02-24 13:20:00', 'GIMNASIO NORTE', ' 1712345603', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0004', '2026-02-28 16:00:00', 'Sucursal Valle', '1712345618', 'TRANSFERENCIA', 2.0, 'COMPLETADA', NULL),
('I0005', '2026-01-30 12:00:00', 'VALLE', '9999999999', 'TRANSFERENCIA', 0.5, 'COMPLETADA', NULL),
('I0006', '2026-03-31 18:50:00', 'GIMNASIO NORTE', '1712345618', 'TARJETA', 0, 'COMPLETADA', NULL),
('I0007', '2026-03-29 13:00:00', 'Sucursal Norte', '1712345611', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0008', '2026-01-19 12:10:00', 'Sucursal Norte', '1712345609', 'Efectivo', 0.5, 'COMPLETADA', NULL),
('I0009', '2026-03-05 09:00:00', 'VALLE', '1712345606', 'tarjeta', 1.0, 'COMPLETADA', NULL),
('I0010', '2026-01-02 18:50:00', 'GIMNASIO NORTE', ' 1712345603', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0011', '2026-02-03 16:10:00', 'CENTRO', '1712345621', 'TRANSFERENCIA', 2.0, 'COMPLETADA', NULL),
('I0012', '2026-03-11 16:00:00', 'Gimnasio Sur', '1712345604', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0013', '2026-01-11 19:30:00', 'VALLE', NULL, 'TARJETA', 0, 'COMPLETADA', NULL),
('I0014', '2026-03-30 11:50:00', 'GIMNASIO CENTRO', '', 'TRANSFERENCIA', 0.5, 'COMPLETADA', NULL),
('I0015', '2026-03-17 16:10:00', 'Gimnasio Sur', '1712345623', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0016', '2026-03-07 11:20:00', 'Gimnasio Sur', '1712345605', 'Efectivo', 1.0, 'COMPLETADA', NULL),
('I0017', '2026-02-25 13:30:00', 'GIMNASIO CENTRO', '1712345601 ', 'EFECTIVO', 0, 'COMPLETADA', 'Registro importado con nombre de sucursal distinto'),
('I0018', '2026-03-10 15:10:00', 'GIMNASIO CENTRO', '1712345608', 'EFECTIVO', 0.5, 'COMPLETADA', NULL),
('I0019', '2026-01-22 14:30:00', 'CENTRO', '1712345601 ', 'TARJETA', 0.5, 'COMPLETADA', NULL),
('I0020', '2026-02-24 19:50:00', 'Sucursal Valle', '1712345623', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0021', '2026-03-11 08:50:00', 'GIMNASIO CENTRO', '1712345616', 'Efectivo', 1.0, 'COMPLETADA', NULL),
('I0022', '2026-01-16 17:10:00', 'CENTRO', '1712345603', 'tarjeta', 2.0, 'COMPLETADA', NULL),
('I0023', '2026-02-20 10:50:00', 'Gimnasio Sur', '1712345630', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0024', '2026-01-09 11:20:00', 'NORTE ', '1712345618', 'TRANSFERENCIA', 1.0, 'ANULADA', NULL),
('I0025', '2026-02-03 09:00:00', 'SUR', '1712345610', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0026', '2026-03-06 15:20:00', 'VALLE', '1712345601 ', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0027', '2026-02-26 16:50:00', 'GIMNASIO CENTRO', '1712345603', 'TARJETA', 1.0, 'COMPLETADA', NULL),
('I0028', '2026-02-09 13:00:00', 'VALLE', '1712345608', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0029', '2026-01-23 14:00:00', 'Sucursal Norte', '9999999999', 'TARJETA', 0, 'COMPLETADA', NULL),
('I0030', '2026-03-02 11:10:00', 'VALLE', '1712345610', 'TARJETA', 0, 'COMPLETADA', NULL),
('I0031', '2026-01-09 12:20:00', 'Gimnasio Sur', '1712345627', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0032', '2026-01-23 17:20:00', 'GIMNASIO NORTE', '1712345612', 'TRANSFERENCIA', 0.5, 'COMPLETADA', NULL),
('I0033', '2026-01-01 16:40:00', 'Gimnasio Sur', '', 'TARJETA', 0, 'COMPLETADA', NULL),
('I0034', '2026-02-08 16:20:00', 'Gimnasio Sur', '1712345623', 'TRANSFERENCIA', 1.0, 'COMPLETADA', NULL),
('I0035', '2026-03-20 17:20:00', 'GIMNASIO CENTRO', '1712345610', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0036', '2026-03-02 19:10:00', 'Gimnasio Sur', '1712345622', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0037', '2026-01-26 10:00:00', 'GIMNASIO NORTE', NULL, 'EFECTIVO', 0.5, 'COMPLETADA', NULL),
('I0038', '2026-03-30 08:00:00', 'SUR', '1712345626', 'Efectivo', 0.5, 'COMPLETADA', NULL),
('I0039', '2026-02-28 10:30:00', 'Gimnasio Sur', NULL, 'TRANSFERENCIA', 0.5, 'COMPLETADA', NULL),
('I0040', '2026-02-27 12:10:00', 'VALLE', '1712345625', 'Efectivo', 0.5, 'COMPLETADA', NULL),
('I0041', '2026-02-12 13:40:00', 'GIMNASIO NORTE', '1712345613', 'TARJETA', 2.0, 'COMPLETADA', NULL),
('I0042', '2026-01-27 14:30:00', 'VALLE', '1712345623', 'EFECTIVO', 1.0, 'COMPLETADA', NULL),
('I0043', '2026-02-19 14:40:00', 'SUR', '1712345620', 'TARJETA', 0.5, 'COMPLETADA', NULL),
('I0044', '2026-02-21 19:10:00', 'VALLE', NULL, 'Efectivo', 0, 'COMPLETADA', NULL),
('I0045', '2026-01-07 12:30:00', 'GIMNASIO CENTRO', '1712345611', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0046', '2026-03-11 08:20:00', 'Sucursal Norte', '1712345621', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0047', '2026-01-20 11:10:00', 'CENTRO', '1712345607', 'tarjeta', 2.0, 'COMPLETADA', NULL),
('I0048', '2026-01-15 10:20:00', 'GIMNASIO NORTE', '1712345610', 'Efectivo', 2.0, 'COMPLETADA', NULL),
('I0049', '2026-03-30 18:10:00', 'GIMNASIO NORTE', '1712345628', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0050', '2026-03-24 13:00:00', 'VALLE', '1712345604', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0051', '2026-03-25 12:40:00', 'VALLE', '1712345616', 'tarjeta', 0.5, 'COMPLETADA', NULL),
('I0052', '2026-02-01 15:40:00', 'Gimnasio Sur', '1712345601', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0053', '2026-02-13 12:40:00', 'SUR', '1712345601', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0054', '2026-03-24 19:30:00', 'GIMNASIO CENTRO', '1712345610', 'TARJETA', 0.5, 'COMPLETADA', NULL),
('I0055', '2026-02-14 14:50:00', 'CENTRO', '1712345615', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0056', '2026-01-16 19:40:00', 'Sucursal Valle', '1712345607', 'TARJETA', 2.0, 'COMPLETADA', NULL),
('I0057', '2026-01-30 13:10:00', 'GIMNASIO CENTRO', '1712345605', 'TRANSFERENCIA', 0, 'ANULADA', NULL),
('I0058', '2026-03-15 12:30:00', 'CENTRO', '1712345602', 'TRANSFERENCIA', 0.5, 'COMPLETADA', 'Registro importado con nombre de sucursal distinto'),
('I0059', '2026-03-15 18:50:00', 'GIMNASIO NORTE', '1712345619', 'TRANSFERENCIA', 0, 'ANULADA', NULL),
('I0060', '2026-03-19 17:40:00', 'Sucursal Norte', '1712345615', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0061', '2026-01-13 11:50:00', 'Sucursal Norte', '1712345606', 'TARJETA', 0, 'COMPLETADA', NULL),
('I0062', '2026-03-30 17:30:00', 'GIMNASIO CENTRO', '1712345623', 'TRANSFERENCIA', 2.0, 'COMPLETADA', NULL),
('I0063', '2026-03-22 17:50:00', 'VALLE', '1712345604', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0064', '2026-03-18 19:40:00', 'Sucursal Valle', '1712345615', 'TRANSFERENCIA', 2.0, 'COMPLETADA', NULL),
('I0065', '2026-01-06 14:50:00', 'GIMNASIO CENTRO', '1712345603', 'TARJETA', 2.0, 'COMPLETADA', NULL),
('I0066', '2026-01-23 15:40:00', 'Gimnasio Sur', '171-234-5602', 'Efectivo', 0.5, 'COMPLETADA', NULL),
('I0067', '2026-02-11 18:00:00', 'VALLE', '1712345623', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0068', '2026-02-10 12:20:00', 'GIMNASIO NORTE', '1712345628', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0069', '2026-02-26 08:10:00', 'NORTE ', '1712345610', 'tarjeta', 2.0, 'COMPLETADA', NULL),
('I0070', '2026-01-31 19:10:00', 'GIMNASIO CENTRO', '1712345614', 'EFECTIVO', 0, 'ANULADA', NULL),
('I0071', '2026-03-24 10:30:00', 'Sucursal Valle', '1712345623', 'TRANSFERENCIA', 0.5, 'COMPLETADA', NULL),
('I0072', '2026-03-18 16:50:00', 'VALLE', ' 1712345603', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0073', '2026-03-04 10:30:00', 'CENTRO', '1712345618', 'Efectivo', 0.5, 'COMPLETADA', NULL),
('I0074', '2026-02-19 11:30:00', 'GIMNASIO NORTE', '1712345623', 'tarjeta', 0.5, 'ANULADA', NULL),
('I0075', '2026-01-17 16:40:00', 'GIMNASIO CENTRO', '1712345628', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0076', '2026-01-10 15:20:00', 'GIMNASIO CENTRO', '1712345621', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0077', '2026-03-21 09:10:00', 'Gimnasio Sur', '171-234-5602', 'EFECTIVO', 0.5, 'ANULADA', NULL),
('I0078', '2026-02-08 08:00:00', 'GIMNASIO CENTRO', '1712345612', 'TRANSFERENCIA', 0.5, 'COMPLETADA', NULL),
('I0079', '2026-02-18 17:50:00', 'Sucursal Norte', '171-234-5602', 'TARJETA', 0.5, 'COMPLETADA', NULL),
('I0080', '2026-03-28 16:10:00', 'GIMNASIO NORTE', NULL, 'TRANSFERENCIA', 2.0, 'ANULADA', NULL),
('I0081', '2026-01-14 11:30:00', 'CENTRO', '1712345623', 'TRANSFERENCIA', 0, 'ANULADA', NULL),
('I0082', '2026-01-07 17:50:00', 'CENTRO', ' 1712345603', 'TARJETA', 1.0, 'COMPLETADA', NULL),
('I0083', '2026-02-02 18:50:00', 'SUR', '1712345605', 'EFECTIVO', 2.0, 'COMPLETADA', NULL),
('I0084', '2026-01-17 09:20:00', 'GIMNASIO CENTRO', '1712345607', 'TARJETA', 1.0, 'COMPLETADA', NULL),
('I0085', '2026-03-03 12:50:00', 'VALLE', '1712345615', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0086', '2026-03-28 14:40:00', 'GIMNASIO CENTRO', '1712345601', 'TRANSFERENCIA', 1.0, 'COMPLETADA', NULL),
('I0087', '2026-03-23 13:00:00', 'Gimnasio Sur', '1712345620', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0088', '2026-03-01 19:20:00', 'Gimnasio Sur', '1712345602', 'EFECTIVO', 0, 'ANULADA', NULL),
('I0089', '2026-01-18 14:30:00', 'GIMNASIO CENTRO', '', 'Efectivo', 0.5, 'COMPLETADA', NULL),
('I0090', '2026-01-13 15:40:00', 'GIMNASIO CENTRO', '1712345601 ', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0091', '2026-03-29 13:40:00', 'VALLE', '1712345602', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0092', '2026-01-12 18:10:00', 'Gimnasio Sur', '1712345601', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0093', '2026-01-09 16:10:00', 'Gimnasio Sur', '1712345608', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0094', '2026-01-23 09:50:00', 'VALLE', '1712345612', 'TARJETA', 1.0, 'COMPLETADA', NULL),
('I0095', '2026-02-23 16:00:00', 'SUR', '1712345625', 'TRANSFERENCIA', 1.0, 'COMPLETADA', NULL),
('I0096', '2026-03-26 16:20:00', 'GIMNASIO CENTRO', '1712345601 ', 'tarjeta', 0.5, 'COMPLETADA', NULL),
('I0097', '2026-01-10 09:20:00', 'Gimnasio Sur', '1712345609', 'Efectivo', 2.0, 'COMPLETADA', NULL),
('I0098', '2026-03-06 17:30:00', 'GIMNASIO NORTE', '1712345628', 'Efectivo', 2.0, 'COMPLETADA', NULL),
('I0099', '2026-02-21 14:50:00', 'GIMNASIO NORTE', '1712345622', 'TRANSFERENCIA', 0, 'ANULADA', NULL),
('I0100', '2026-01-13 19:50:00', 'GIMNASIO CENTRO', '1712345602', 'Efectivo', 1.0, 'COMPLETADA', NULL),
('I0101', '2026-02-24 19:00:00', 'Sucursal Valle', '1712345612', 'EFECTIVO', 1.0, 'COMPLETADA', NULL),
('I0102', '2026-01-14 13:40:00', 'GIMNASIO CENTRO', '1712345619', 'TARJETA', 0.5, 'COMPLETADA', NULL),
('I0103', '2026-01-04 10:20:00', 'SUR', '1712345611', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0104', '2026-01-09 10:50:00', 'Gimnasio Sur', '1712345624', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0105', '2026-03-14 17:00:00', 'VALLE', '1712345625', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0106', '2026-02-23 12:10:00', 'SUR', '1712345614', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0107', '2026-01-01 11:20:00', 'Sucursal Valle', '1712345625', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0108', '2026-01-23 10:30:00', 'CENTRO', '1712345618', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0109', '2026-01-10 13:40:00', 'GIMNASIO CENTRO', '1712345621', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0110', '2026-03-21 15:50:00', 'Sucursal Valle', '1712345628', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0111', '2026-02-13 11:20:00', 'SUR', '1712345621', 'EFECTIVO', 1.0, 'COMPLETADA', NULL),
('I0112', '2026-01-31 09:10:00', 'NORTE ', '1712345605', 'EFECTIVO', 0, 'ANULADA', NULL),
('I0113', '2026-03-29 17:50:00', 'Gimnasio Sur', '1712345628', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0114', '2026-01-08 13:40:00', 'GIMNASIO NORTE', '1712345602', 'EFECTIVO', 0, 'COMPLETADA', NULL),
('I0115', '2026-03-20 17:40:00', 'GIMNASIO CENTRO', '1712345626', 'EFECTIVO', 0.5, 'COMPLETADA', NULL),
('I0116', '2026-01-14 13:50:00', 'GIMNASIO NORTE', '1712345602', 'TARJETA', 2.0, 'COMPLETADA', NULL),
('I0117', '2026-02-06 14:30:00', 'SUR', '1712345602', 'TRANSFERENCIA', 0, 'COMPLETADA', NULL),
('I0118', '2026-02-12 09:40:00', 'Gimnasio Sur', ' 1712345603', 'tarjeta', 0, 'COMPLETADA', NULL),
('I0119', '2026-03-24 13:10:00', 'Gimnasio Sur', '1712345624', 'Efectivo', 0, 'COMPLETADA', NULL),
('I0120', '2026-01-28 13:30:00', 'Sucursal Norte', '171-234-5602', 'EFECTIVO', 0, 'COMPLETADA', NULL);

-- ==================== INSCRIPCIONES MASIVAS (2000 registros) ====================
-- Generamos 2000 inscripciones usando un procedimiento con bucles
DELIMITER $$
DROP PROCEDURE IF EXISTS generar_inscripciones_masivas$$
CREATE PROCEDURE generar_inscripciones_masivas()
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE v_numero VARCHAR(15);
    DECLARE v_fecha DATETIME;
    DECLARE v_sucursal VARCHAR(60);
    DECLARE v_documento VARCHAR(25);
    DECLARE v_pago VARCHAR(30);
    DECLARE v_descuento DECIMAL(10,2);
    DECLARE v_estado VARCHAR(20);
    DECLARE v_anio CHAR(4);
    DECLARE v_mes INT;
    DECLARE v_dia INT;
    DECLARE v_hora INT;
    DECLARE v_minuto INT;
    DECLARE v_random INT;
    
    SET i = 1;
    WHILE i <= 2000 DO
        SET v_random = FLOOR(RAND() * 100);
        SET v_anio = CASE WHEN v_random < 40 THEN '2024' WHEN v_random < 80 THEN '2025' ELSE '2026' END;
        SET v_mes = FLOOR(RAND() * 12) + 1;
        SET v_dia = FLOOR(RAND() * 28) + 1;
        SET v_hora = FLOOR(RAND() * 24);
        SET v_minuto = FLOOR(RAND() * 60);
        SET v_fecha = CONCAT(v_anio, '-', LPAD(v_mes, 2, '0'), '-', LPAD(v_dia, 2, '0'), ' ', LPAD(v_hora, 2, '0'), ':', LPAD(v_minuto, 2, '0'), ':00');
        
        SET v_numero = CONCAT('I', LPAD(i + 1200, 6, '0'));
        
        -- Sucursal (con nombres inconsistentes)
        SET v_random = FLOOR(RAND() * 12);
        SET v_sucursal = CASE v_random
            WHEN 0 THEN 'SUR'
            WHEN 1 THEN 'Sucursal Norte'
            WHEN 2 THEN 'GIMNASIO NORTE'
            WHEN 3 THEN 'Sucursal Valle'
            WHEN 4 THEN 'VALLE'
            WHEN 5 THEN 'CENTRO'
            WHEN 6 THEN 'GIMNASIO CENTRO'
            WHEN 7 THEN 'Gimnasio Sur'
            WHEN 8 THEN 'NORTE '
            WHEN 9 THEN 'Sucursal Centro'
            WHEN 10 THEN 'Gimnasio Valle'
            ELSE 'NORTE'
        END;
        
        -- Documento (con errores)
        SET v_random = FLOOR(RAND() * 100);
        SET v_documento = CASE
            WHEN v_random < 3 THEN ''
            WHEN v_random < 6 THEN NULL
            WHEN v_random < 9 THEN CONCAT(' ', LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0'))
            WHEN v_random < 12 THEN CONCAT(LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0'), ' ')
            WHEN v_random < 15 THEN CONCAT(
                SUBSTRING(LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0'), 1, 3), '-',
                SUBSTRING(LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0'), 4, 3), '-',
                SUBSTRING(LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0'), 7, 4)
            )
            WHEN v_random < 18 THEN '9999999999'
            ELSE LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0')
        END;
        
        -- Forma de pago
        SET v_random = FLOOR(RAND() * 9);
        SET v_pago = CASE v_random
            WHEN 0 THEN 'EFECTIVO'
            WHEN 1 THEN 'Efectivo'
            WHEN 2 THEN 'efectivo'
            WHEN 3 THEN 'TARJETA'
            WHEN 4 THEN 'Tarjeta'
            WHEN 5 THEN 'tarjeta'
            WHEN 6 THEN 'TRANSFERENCIA'
            WHEN 7 THEN 'Transferencia'
            ELSE 'transferencia'
        END;
        
        SET v_descuento = ROUND(RAND() * 5, 1);
        SET v_estado = CASE WHEN RAND() < 0.05 THEN 'ANULADA' ELSE 'COMPLETADA' END;
        
        INSERT INTO inscripcion (numero_inscripcion, fecha_hora, sucursal_origen, documento_cliente, forma_pago, descuento, estado, observacion)
        VALUES (v_numero, v_fecha, v_sucursal, v_documento, v_pago, v_descuento, v_estado, CASE WHEN RAND() < 0.03 THEN 'Registro masivo con observación' ELSE NULL END);
        
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

CALL generar_inscripciones_masivas();
DROP PROCEDURE IF EXISTS generar_inscripciones_masivas;

-- ==================== DETALLE INSCRIPCIONES ====================
-- Detalles para las 120 inscripciones iniciales
INSERT INTO detalle_inscripcion (numero_inscripcion, linea, codigo_clase, cantidad, precio_unitario) VALUES
('I0001', 1, 'CL001', 2, 15.00),
('I0001', 2, 'CL002', 1, 15.00),
('I0002', 1, 'CL003', 1, 20.00),
('I0002', 2, 'CL001', 3, 15.00),
('I0003', 1, 'CL005', 1, 18.00),
('I0003', 2, 'CL007', 3, 16.00),
('I0004', 1, 'CL007', 1, 16.00),
('I0004', 2, 'CL008', 3, 16.00),
('I0005', 1, 'CL002', 3, 15.00),
('I0005', 2, 'CL004', 1, 20.00),
('I0006', 1, 'CL009', 2, 17.00),
('I0006', 2, 'CL007', 1, 16.00),
('I0007', 1, 'CL005', 2, 18.00),
('I0007', 2, 'CL003', 3, 20.00),
('I0007', 3, 'CL007', 2, 16.00),
('I0008', 1, 'CL004', 1, 20.00),
('I0008', 2, 'CL006', 2, 18.00),
('I0009', 1, 'CL007', 1, 16.00),
('I0009', 2, 'CL002', 2, 15.00),
('I0010', 1, 'CL002', 3, 15.00),
('I0011', 1, 'CL001', 1, 15.00),
('I0012', 1, 'CL005', 1, 18.00),
('I0013', 1, 'CL001', 1, 15.00),
('I0013', 2, 'CL009', 2, 17.00),
('I0013', 3, 'CL007', 3, 16.00),
('I0014', 1, 'CL001', 1, 15.00),
('I0014', 2, 'CL001', 1, 15.00),
('I0015', 1, 'CL005', 1, 18.00),
('I0016', 1, 'CL010', 1, 17.00),
('I0016', 2, 'CL001', 3, 15.00),
('I0017', 1, 'CL010', 1, 17.00),
('I0017', 2, 'CL001', 1, 15.00),
('I0018', 1, 'CL001', 1, 15.00),
('I0018', 2, 'CL007', 1, 16.00),
('I0018', 3, 'CL009', 1, 17.00),
('I0019', 1, 'CL001', 2, 15.00),
('I0019', 2, 'CL010', 1, 17.00),
('I0020', 1, 'CL009', 2, 17.00),
('I0021', 1, 'CL001', 3, 15.00),
('I0021', 2, 'CL001', 1, 15.00),
('I0021', 3, 'CL007', 2, 16.00),
('I0022', 1, 'CL003', 1, 20.00),
('I0022', 2, 'CL001', 1, 15.00),
('I0022', 3, 'CL007', 1, 16.00),
('I0023', 1, 'CL006', 1, 18.00),
('I0023', 2, 'CL001', 1, 15.00),
('I0023', 3, 'CL001', 1, 15.00),
('I0024', 1, 'CL001', 3, 15.00),
('I0024', 2, 'CL010', 1, 17.00),
('I0024', 3, 'CL003', 1, 20.00),
('I0025', 1, 'CL008', 1, 16.00),
('I0026', 1, 'CL007', 1, 16.00),
('I0026', 2, 'CL007', 1, 16.00),
('I0027', 1, 'CL007', 1, 16.00),
('I0027', 2, 'CL001', 1, 15.00),
('I0028', 1, 'CL009', 1, 17.00),
('I0028', 2, 'CL007', 1, 16.00),
('I0029', 1, 'CL004', 1, 20.00),
('I0030', 1, 'CL002', 1, 15.00),
('I0031', 1, 'CL005', 1, 18.00),
('I0032', 1, 'CL001', 1, 15.00),
('I0032', 2, 'CL010', 3, 17.00),
('I0032', 3, 'CL001', 2, 15.00),
('I0033', 1, 'CL007', 1, 16.00),
('I0033', 2, 'CL007', 3, 16.00),
('I0034', 1, 'CL007', 3, 16.00),
('I0034', 2, 'CL004', 1, 20.00),
('I0035', 1, 'CL007', 3, 16.00),
('I0035', 2, 'CL003', 1, 20.00),
('I0035', 3, 'CL002', 2, 15.00),
('I0036', 1, 'CL007', 1, 16.00),
('I0037', 1, 'CL001', 1, 15.00),
('I0037', 2, 'CL008', 1, 16.00),
('I0037', 3, 'CL009', 3, 17.00),
('I0038', 1, 'CL010', 1, 17.00),
('I0039', 1, 'CL002', 1, 15.00),
('I0039', 2, 'CL010', 3, 17.00),
('I0039', 3, 'CL002', 2, 15.00),
('I0040', 1, 'CL002', 1, 15.00),
('I0040', 2, 'CL008', 1, 16.00),
('I0041', 1, 'CL002', 2, 15.00),
('I0041', 2, 'CL009', 1, 17.00),
('I0042', 1, 'CL006', 1, 18.00),
('I0043', 1, 'CL009', 3, 17.00),
('I0043', 2, 'CL004', 3, 20.00),
('I0044', 1, 'CL007', 1, 16.00),
('I0044', 2, 'CL001', 2, 15.00),
('I0044', 3, 'CL007', 1, 16.00),
('I0045', 1, 'CL001', 1, 15.00),
('I0045', 2, 'CL001', 3, 15.00),
('I0046', 1, 'CL005', 2, 18.00),
('I0047', 1, 'CL001', 3, 15.00),
('I0047', 2, 'CL007', 3, 16.00),
('I0048', 1, 'CL002', 1, 15.00),
('I0048', 2, 'CL008', 2, 16.00),
('I0049', 1, 'CL007', 1, 16.00),
('I0049', 2, 'CL003', 1, 20.00),
('I0049', 3, 'CL002', 2, 15.00),
('I0050', 1, 'CL008', 3, 16.00),
('I0050', 2, 'CL002', 2, 15.00),
('I0051', 1, 'CL001', 1, 15.00),
('I0051', 2, 'CL005', 1, 18.00),
('I0051', 3, 'CL005', 2, 18.00),
('I0052', 1, 'CL004', 1, 20.00),
('I0053', 1, 'CL009', 3, 17.00),
('I0053', 2, 'CL007', 2, 16.00),
('I0054', 1, 'CL007', 2, 16.00),
('I0054', 2, 'CL004', 2, 20.00),
('I0055', 1, 'CL008', 1, 16.00),
('I0056', 1, 'CL009', 1, 17.00),
('I0056', 2, 'CL009', 1, 17.00),
('I0056', 3, 'CL001', 1, 15.00),
('I0057', 1, 'CL003', 2, 20.00),
('I0057', 2, 'CL006', 1, 18.00),
('I0057', 3, 'CL007', 1, 16.00),
('I0058', 1, 'CL002', 1, 15.00),
('I0059', 1, 'CL009', 2, 17.00),
('I0060', 1, 'CL003', 2, 20.00),
('I0060', 2, 'CL007', 3, 16.00),
('I0061', 1, 'CL001', 2, 15.00),
('I0062', 1, 'CL008', 1, 16.00),
('I0063', 1, 'CL005', 1, 18.00),
('I0063', 2, 'CL001', 1, 15.00),
('I0064', 1, 'CL009', 1, 17.00),
('I0064', 2, 'CL009', 2, 17.00),
('I0065', 1, 'CL007', 1, 16.00),
('I0065', 2, 'CL001', 2, 15.00),
('I0065', 3, 'CL007', 1, 16.00),
('I0066', 1, 'CL009', 2, 17.00),
('I0066', 2, 'CL002', 1, 15.00),
('I0067', 1, 'CL010', 2, 17.00),
('I0067', 2, 'CL009', 1, 17.00),
('I0068', 1, 'CL002', 2, 15.00),
('I0068', 2, 'CL001', 2, 15.00),
('I0068', 3, 'CL009', 3, 17.00),
('I0069', 1, 'CL009', 2, 17.00),
('I0070', 1, 'CL002', 1, 15.00),
('I0071', 1, 'CL001', 2, 15.00),
('I0071', 2, 'CL009', 1, 17.00),
('I0072', 1, 'CL001', 2, 15.00),
('I0072', 2, 'CL001', 2, 15.00),
('I0072', 3, 'CL008', 3, 16.00),
('I0073', 1, 'CL005', 1, 18.00),
('I0073', 2, 'CL009', 2, 17.00),
('I0074', 1, 'CL009', 1, 17.00),
('I0075', 1, 'CL001', 3, 15.00),
('I0075', 2, 'CL001', 1, 15.00),
('I0076', 1, 'CL004', 2, 20.00),
('I0076', 2, 'CL003', 2, 20.00),
('I0076', 3, 'CL008', 1, 16.00),
('I0077', 1, 'CL002', 25, 15.00),
('I0078', 1, 'CL002', 1, 15.00),
('I0078', 2, 'CL008', 1, 16.00),
('I0078', 3, 'CL001', 2, 15.00),
('I0079', 1, 'CL001', 2, 15.00),
('I0079', 2, 'CL001', 1, 15.00),
('I0080', 1, 'CL002', 2, 15.00),
('I0080', 2, 'CL003', 2, 20.00),
('I0081', 1, 'CL001', 3, 15.00),
('I0081', 2, 'CL007', 3, 16.00),
('I0082', 1, 'CL007', 2, 16.00),
('I0083', 1, 'CL010', 1, 17.00),
('I0083', 2, 'CL001', 3, 15.00),
('I0084', 1, 'CL009', 1, 17.00),
('I0084', 2, 'CL010', 1, 17.00),
('I0085', 1, 'CL005', 3, 18.00),
('I0086', 1, 'CL007', 2, 16.00),
('I0086', 2, 'CL007', 2, 16.00),
('I0087', 1, 'CL007', 3, 16.00),
('I0088', 1, 'CL001', 2, 15.00),
('I0089', 1, 'CL005', 3, 18.00),
('I0090', 1, 'CL005', 1, 18.00),
('I0091', 1, 'CL006', 2, 18.00),
('I0092', 1, 'CL010', 1, 17.00),
('I0093', 1, 'CL001', 1, 15.00),
('I0093', 2, 'CL005', 2, 18.00),
('I0093', 3, 'CL001', 1, 15.00),
('I0094', 1, 'CL001', 1, 15.00),
('I0095', 1, 'CL009', 1, 17.00),
('I0095', 2, 'CL006', 3, 18.00),
('I0096', 1, 'CL009', 2, 17.00),
('I0097', 1, 'CL004', 1, 20.00),
('I0097', 2, 'CL007', 2, 16.00),
('I0098', 1, 'CL002', 1, 15.00),
('I0098', 2, 'CL001', 2, 15.00),
('I0099', 1, 'CL001', 1, 15.00),
('I0099', 2, 'CL005', 2, 18.00),
('I0100', 1, 'CL002', 3, 15.00),
('I0101', 1, 'CL007', 1, 16.00),
('I0102', 1, 'CL007', 3, 16.00),
('I0102', 2, 'CL007', 3, 16.00),
('I0102', 3, 'CL001', 1, 15.00),
('I0103', 1, 'CL007', 2, 16.00),
('I0104', 1, 'CL003', 3, 20.00),
('I0104', 2, 'CL004', 1, 20.00),
('I0105', 1, 'CL002', 2, 15.00),
('I0105', 2, 'CL002', 2, 15.00),
('I0106', 1, 'CL009', 2, 17.00),
('I0106', 2, 'CL007', 2, 16.00),
('I0106', 3, 'CL001', 1, 15.00),
('I0107', 1, 'CL009', 2, 17.00),
('I0108', 1, 'CL002', 2, 15.00),
('I0109', 1, 'CL009', 1, 17.00),
('I0110', 1, 'CL009', 1, 17.00),
('I0110', 2, 'CL002', 3, 15.00),
('I0111', 1, 'CL004', 3, 20.00),
('I0111', 2, 'CL006', 1, 18.00),
('I0112', 1, 'CL002', 2, 15.00),
('I0112', 2, 'CL007', 2, 16.00),
('I0113', 1, 'CL002', 1, 15.00),
('I0113', 2, 'CL003', 2, 20.00),
('I0114', 1, 'CL007', 1, 16.00),
('I0115', 1, 'CL007', 1, 16.00),
('I0115', 2, 'CL003', 1, 20.00),
('I0115', 3, 'CL002', 2, 15.00),
('I0116', 1, 'CL009', 1, 17.00),
('I0116', 2, 'CL007', 1, 16.00),
('I0117', 1, 'CL008', 3, 16.00),
('I0117', 2, 'CL003', 2, 20.00),
('I0117', 3, 'CL008', 1, 16.00),
('I0118', 1, 'CL003', 2, 20.00),
('I0119', 1, 'CL009', 1, 17.00),
('I0119', 2, 'CL001', 1, 15.00),
('I0120', 1, 'CL009', 2, 17.00);

-- Detalles masivos para las 2000 inscripciones
DELIMITER $$
DROP PROCEDURE IF EXISTS generar_detalles_masivos$$
CREATE PROCEDURE generar_detalles_masivos()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_numero VARCHAR(15);
    DECLARE v_linea INT;
    DECLARE v_clase VARCHAR(15);
    DECLARE v_cantidad INT;
    DECLARE v_precio DECIMAL(10,2);
    DECLARE v_servicio VARCHAR(10);
    DECLARE v_costo DECIMAL(10,2);
    DECLARE cur CURSOR FOR 
        SELECT i.numero_inscripcion, c.codigo_clase, s.costo
        FROM inscripcion i
        CROSS JOIN clase c
        CROSS JOIN servicio s
        WHERE i.estado = 'COMPLETADA'
          AND c.codigo_servicio = s.codigo_servicio
          AND i.numero_inscripcion > 'I0120'
        ORDER BY RAND()
        LIMIT 3000;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_numero, v_clase, v_costo;
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SET v_linea = (SELECT COALESCE(MAX(linea), 0) + 1 FROM detalle_inscripcion WHERE numero_inscripcion = v_numero);
        IF v_linea <= 3 THEN
            SET v_cantidad = CASE 
                WHEN RAND() < 0.015 THEN FLOOR(RAND() * 20) + 10
                WHEN RAND() < 0.01 THEN 0
                ELSE FLOOR(RAND() * 3) + 1
            END;
            SET v_precio = CASE 
                WHEN RAND() < 0.01 THEN 0
                ELSE ROUND(v_costo + (v_costo * 0.5 + RAND() * 5), 2)
            END;
            
            INSERT INTO detalle_inscripcion (numero_inscripcion, linea, codigo_clase, cantidad, precio_unitario)
            VALUES (v_numero, v_linea, v_clase, v_cantidad, v_precio);
        END IF;
    END LOOP;
    CLOSE cur;
END$$
DELIMITER ;

CALL generar_detalles_masivos();
DROP PROCEDURE IF EXISTS generar_detalles_masivos;

-- ==================== ASISTENCIA (3000 registros) ====================
DELIMITER $$
DROP PROCEDURE IF EXISTS generar_asistencias_masivas$$
CREATE PROCEDURE generar_asistencias_masivas()
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE v_clase VARCHAR(15);
    DECLARE v_documento VARCHAR(25);
    DECLARE v_fecha DATE;
    DECLARE v_hora TIME;
    DECLARE v_estado VARCHAR(20);
    DECLARE v_random INT;
    DECLARE v_doc_base VARCHAR(10);
    
    SET i = 1;
    WHILE i <= 3000 DO
        SET v_random = FLOOR(RAND() * 10) + 1;
        SET v_clase = CASE v_random
            WHEN 1 THEN 'CL001' WHEN 2 THEN 'CL002' WHEN 3 THEN 'CL003'
            WHEN 4 THEN 'CL004' WHEN 5 THEN 'CL005' WHEN 6 THEN 'CL006'
            WHEN 7 THEN 'CL007' WHEN 8 THEN 'CL008' WHEN 9 THEN 'CL009'
            ELSE 'CL010'
        END;
        
        SET v_doc_base = LPAD(FLOOR(RAND() * 10000000) + 1712340000, 10, '0');
        SET v_random = FLOOR(RAND() * 100);
        SET v_documento = CASE
            WHEN v_random < 3 THEN ''
            WHEN v_random < 6 THEN NULL
            WHEN v_random < 9 THEN CONCAT(' ', v_doc_base)
            WHEN v_random < 12 THEN CONCAT(v_doc_base, ' ')
            WHEN v_random < 15 THEN CONCAT(SUBSTRING(v_doc_base, 1, 3), '-', SUBSTRING(v_doc_base, 4, 3), '-', SUBSTRING(v_doc_base, 7, 4))
            WHEN v_random < 18 THEN '9999999999'
            ELSE v_doc_base
        END;
        
        SET v_random = FLOOR(RAND() * 100);
        SET v_fecha = CONCAT(
            CASE WHEN v_random < 35 THEN '2024' WHEN v_random < 70 THEN '2025' ELSE '2026' END,
            '-',
            LPAD(FLOOR(RAND() * 12) + 1, 2, '0'),
            '-',
            LPAD(FLOOR(RAND() * 28) + 1, 2, '0')
        );
        
        SET v_hora = CONCAT(LPAD(FLOOR(RAND() * 12) + 7, 2, '0'), ':', LPAD(FLOOR(RAND() * 60), 2, '0'), ':00');
        
        SET v_random = FLOOR(RAND() * 100);
        SET v_estado = CASE
            WHEN v_random < 70 THEN 'ASISTIO'
            WHEN v_random < 85 THEN 'FALTA'
            WHEN v_random < 95 THEN 'JUSTIFICADO'
            ELSE 'RETRASO'
        END;
        
        INSERT INTO asistencia (codigo_clase, documento_cliente, fecha, hora_inicio, estado_asistencia, observacion)
        VALUES (v_clase, v_documento, v_fecha, v_hora, v_estado, CASE WHEN RAND() < 0.03 THEN 'Observación especial de asistencia' ELSE NULL END);
        
        SET i = i + 1;
    END WHILE;
END$$
DELIMITER ;

CALL generar_asistencias_masivas();
DROP PROCEDURE IF EXISTS generar_asistencias_masivas;

-- ==================== VERIFICACIONES ====================
-- SELECT COUNT(*) AS total_inscripciones FROM inscripcion;
-- SELECT COUNT(*) AS total_detalles FROM detalle_inscripcion;
-- SELECT COUNT(*) AS total_asistencias FROM asistencia;