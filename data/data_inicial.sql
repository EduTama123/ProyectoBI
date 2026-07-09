-- data_inicial.sql
-- Datos base para el sistema de gimnasios

-- Crear las tablas
CREATE TABLE servicio (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    duracion_minutos INT,
    costo DECIMAL(10,2),
    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE instructor (
    id INT PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    email VARCHAR(50),
    activo BOOLEAN DEFAULT TRUE
);

CREATE TABLE clase (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    servicio_id INT,
    instructor_id INT,
    cupo_maximo INT,
    duracion_minutos INT,
    activo BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (servicio_id) REFERENCES servicio(id),
    FOREIGN KEY (instructor_id) REFERENCES instructor(id)
);

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE
);

-- Cargar datos base
INSERT INTO usuario (nombre, email) VALUES 
('Víctor', 'victor_m@g.com'),
('María', 'maria_m@t.com'),
('Lorena', 'lorena_m@d.com');

INSERT INTO servicio (id, nombre, descripcion, duracion_minutos, costo, activo) VALUES
(1, 'Yoga', 'Clase de yoga para todos los niveles', 60, 15.00, 1),
(2, 'CrossFit', 'Entrenamiento funcional de alta intensidad', 45, 20.00, 1),
(3, 'Musculación', 'Entrenamiento con pesas y máquinas', 60, 18.00, 1),
(4, 'Pilates', 'Ejercicios de control corporal', 50, 16.00, 1),
(5, 'Spinning', 'Ciclismo indoor', 45, 17.00, 1),
(6, 'Zumba', 'Baile fitness', 60, 14.00, 1),
(7, 'Boxeo', 'Entrenamiento de boxeo', 60, 22.00, 1),
(8, 'Natación', 'Clases de natación', 45, 19.00, 1);

INSERT INTO instructor (id, nombres, apellidos, especialidad, email, activo) VALUES
(1, 'Carlos', 'Mendoza', 'Yoga', 'carlos.m@fit.com', 1),
(2, 'Ana', 'López', 'CrossFit', 'ana.l@fit.com', 1),
(3, 'Luis', 'Ramírez', 'Musculación', 'luis.r@fit.com', 1),
(4, 'María', 'Torres', 'Pilates', 'maria.t@fit.com', 1),
(5, 'Pedro', 'Gómez', 'Spinning', 'pedro.g@fit.com', 1);

INSERT INTO clase (id, nombre, servicio_id, instructor_id, cupo_maximo, duracion_minutos, activo) VALUES
(1, 'Yoga Principiantes', 1, 1, 20, 60, 1),
(2, 'Yoga Avanzado', 1, 1, 15, 60, 1),
(3, 'CrossFit Nivel 1', 2, 2, 25, 45, 1),
(4, 'CrossFit Nivel 2', 2, 2, 20, 45, 1),
(5, 'Musculación Básica', 3, 3, 30, 60, 1),
(6, 'Musculación Avanzada', 3, 3, 25, 60, 1),
(7, 'Pilates Mat', 4, 4, 15, 50, 1),
(8, 'Pilates Reformer', 4, 4, 10, 50, 1),
(9, 'Spinning Clásico', 5, 5, 20, 45, 1),
(10, 'Spinning Intenso', 5, 5, 15, 45, 1);