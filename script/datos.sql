-- 04_postgresql_compras_datos.sql
-- Datos de distribuidores y productos referencia

SET search_path TO gestion, public;

-- ==================== DISTRIBUIDORES ====================
INSERT INTO distribuidor (codigo_distribuidor, distribuidor, ruc, ciudad, contacto_ventas, cargo, telefono, correo, condicion_pago, tiempo_entrega_estimado, descuento_base, lineas_laboratorio) VALUES
('D001', 'SportFitness Andina S.A.', '1790012345001', 'Quito', 'Carolina Almeida', 'Ejecutiva de cuentas', '099 451 7810', 'calmeida@sportfitness.ec', '30 días crédito', '48 horas', 8.00, 'TecnoGym; Life Fitness; Precor'),
('D002', 'EquipSport Ecuador Cía. Ltda.', '1790024681001', 'Quito', 'Andrés Paredes', 'Asesor comercial', '098 322 4571', 'aparedes@equipsport.ec', '15 días crédito', '24-48 horas', 6.00, 'Matrix; Hammer Strength; Cybex'),
('D003', 'FitnessLogística Sierra', '1790035792001', 'Quito', 'María José Ruiz', 'Ventas institucionales', '096 811 2204', 'mruiz@fitnesslogistica.ec', 'Contado contra entrega', '24 horas', 4.00, 'Body Solid; Paramount; Star Trac'),
('D004', 'Distribuidora Salud Total Fitness', '1790046803001', 'Sangolquí', 'Luis Fernando Vega', 'Coordinador comercial', '099 210 3345', 'lvega@saludtotal-fitness.ec', '45 días crédito', '72 horas', 10.00, 'Technogym; Keiser; Hoist'),
('D005', 'GymExpress Quito', '1790057914001', 'Quito', 'Valeria Cevallos', 'Key Account Manager', '097 545 6890', 'vcevallos@gymexpress.ec', '30 días crédito', '24 horas', 7.00, 'Precor; Life Fitness; Star Trac'),
('D006', 'Insumos Deportivos del Pacífico', '0991234567001', 'Guayaquil', 'Roberto Salazar', 'Ventas regionales', '095 700 1198', 'rsalazar@idpacifico.ec', '60 días crédito', '96 horas', 12.00, 'Cybex; Hammer Strength; Keiser'),
('D007', 'Comercializadora BioFitness', '1790068025001', 'Quito', 'Teresa Mena', 'Representante de ventas', '098 011 7723', 'tmena@biofitness.ec', '15 días crédito', '48 horas', 5.00, 'Matrix; Precor; Hoist'),
('D008', 'Mayorista GymPlus', '1790079136001', 'Quito', 'Daniel Ortiz', 'Jefe de cuentas', '096 889 3011', 'dortiz@gymplus.ec', '30 días crédito', '24-72 horas', 9.00, 'Life Fitness; Technogym; Body Solid');

-- ==================== PRODUCTOS REFERENCIA ====================
INSERT INTO producto_referencia (codigo_producto, producto, categoria, proveedor, presentacion, costo_base, precio_venta, margen_referencial) VALUES
('P001', 'Cinta de correr 4.0 HP', 'Cardio', 'Life Fitness', 'Motor 4.0 HP, pantalla 22"', 2500.00, 3800.00, 34.21),
('P002', 'Elíptica CrossRower', 'Cardio', 'Precor', 'Resistencia magnética', 1800.00, 2800.00, 35.71),
('P003', 'Bicicleta estática Upright', 'Cardio', 'Technogym', 'Resistencia ajustable', 1200.00, 1900.00, 36.84),
('P004', 'Bicicleta Spinning Pro', 'Cardio', 'Star Trac', 'Volante 20 kg', 850.00, 1350.00, 37.04),
('P005', 'Máquina de remo', 'Cardio', 'Concept2', 'Resistencia de aire', 1100.00, 1700.00, 35.29),
('P006', 'Prensa de piernas 45°', 'Musculación', 'Hammer Strength', 'Capacidad 300 kg', 3200.00, 4800.00, 33.33),
('P007', 'Máquina de poleas crossover', 'Musculación', 'Body Solid', 'Estación dual', 2800.00, 4200.00, 33.33),
('P008', 'Banco de pesas regulable', 'Musculación', 'Paramount', 'Inclinación 0-90°', 650.00, 1050.00, 38.10),
('P009', 'Máquina de abdominales', 'Musculación', 'Hoist', 'Rojo profesional', 900.00, 1400.00, 35.71),
('P010', 'Máquina de extensión cuádriceps', 'Musculación', 'Cybex', 'Selección de pesos', 2100.00, 3200.00, 34.38),
('P011', 'Máquina de curl isquiotibiales', 'Musculación', 'Technogym', 'Palanca ajustable', 2100.00, 3200.00, 34.38),
('P012', 'Máquina de pectorales', 'Musculación', 'Precor', 'Fly press', 2200.00, 3400.00, 35.29),
('P013', 'Máquina de dorsalera', 'Musculación', 'Matrix', 'Lat pulldown', 2000.00, 3100.00, 35.48),
('P014', 'Máquina de hombros', 'Musculación', 'Keiser', 'Press shoulder', 2300.00, 3500.00, 34.29),
('P015', 'Máquina de bíceps', 'Musculación', 'Body Solid', 'Curl preacher', 1500.00, 2350.00, 36.17),
('P016', 'Máquina multifuncional', 'Musculación', 'Hoist', 'Estación 4 funciones', 4000.00, 6000.00, 33.33),
('P017', 'Juego de mancuernas (2-50 kg)', 'Accesorios', 'Paramount', 'Par completo', 1800.00, 2700.00, 33.33),
('P018', 'Discos de peso (olímpicos)', 'Accesorios', 'Star Trac', 'Set 150 kg', 800.00, 1250.00, 36.00),
('P019', 'Barras olímpicas', 'Accesorios', 'Hammer Strength', '3 barras', 500.00, 800.00, 37.50),
('P020', 'Kettlebells (4-32 kg)', 'Accesorios', 'Life Fitness', 'Set 8 pesas', 650.00, 1000.00, 35.00);