-- 01_mysql_creacion.sql
-- Base operacional de inscripciones, clases y asistencia para gimnasios
-- ELIMINADA tabla inventario_clases
-- AGREGADO campo seguro_medico en inscripcion

CREATE DATABASE IF NOT EXISTS gimnasio_db
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_0900_ai_ci;
USE gimnasio_db;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS detalle_inscripcion;
DROP TABLE IF EXISTS inscripcion;
DROP TABLE IF EXISTS asistencia;
DROP TABLE IF EXISTS clase;
DROP TABLE IF EXISTS servicio;
DROP TABLE IF EXISTS instructor;
DROP TABLE IF EXISTS cliente_local;
SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE servicio (
    codigo_servicio VARCHAR(10) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200),
    duracion_minutos INT,
    costo DECIMAL(10,2),
    activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE instructor (
    codigo_instructor VARCHAR(10) PRIMARY KEY,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100),
    email VARCHAR(50),
    activo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE clase (
    codigo_clase VARCHAR(15) PRIMARY KEY,
    nombre VARCHAR(120) NOT NULL,
    codigo_servicio VARCHAR(10),
    codigo_instructor VARCHAR(10),
    cupo_maximo INT,
    duracion_minutos INT,
    activo BOOLEAN NOT NULL DEFAULT TRUE,
    CONSTRAINT fk_clase_servicio FOREIGN KEY (codigo_servicio)
        REFERENCES servicio(codigo_servicio),
    CONSTRAINT fk_clase_instructor FOREIGN KEY (codigo_instructor)
        REFERENCES instructor(codigo_instructor)
);

CREATE TABLE inscripcion (
    numero_inscripcion VARCHAR(15) PRIMARY KEY,
    fecha_hora DATETIME NOT NULL,
    sucursal_origen VARCHAR(60) NOT NULL,
    documento_cliente VARCHAR(25),
    forma_pago VARCHAR(30),
    descuento DECIMAL(10,2) DEFAULT 0,
    seguro_medico BOOLEAN DEFAULT FALSE,
    estado VARCHAR(20) NOT NULL DEFAULT 'COMPLETADA',
    observacion VARCHAR(200)
);

CREATE TABLE detalle_inscripcion (
    numero_inscripcion VARCHAR(15) NOT NULL,
    linea SMALLINT NOT NULL,
    codigo_clase VARCHAR(15),
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10,2),
    PRIMARY KEY (numero_inscripcion, linea),
    CONSTRAINT fk_det_inscripcion FOREIGN KEY (numero_inscripcion)
        REFERENCES inscripcion(numero_inscripcion),
    CONSTRAINT fk_det_clase FOREIGN KEY (codigo_clase)
        REFERENCES clase(codigo_clase)
);

CREATE TABLE asistencia (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    codigo_clase VARCHAR(15),
    documento_cliente VARCHAR(25),
    fecha DATE NOT NULL,
    hora_inicio TIME,
    estado_asistencia VARCHAR(20) DEFAULT 'PENDIENTE',
    observacion VARCHAR(200),
    CONSTRAINT fk_asistencia_clase FOREIGN KEY (codigo_clase)
        REFERENCES clase(codigo_clase)
);

CREATE INDEX idx_inscripcion_fecha ON inscripcion(fecha_hora);
CREATE INDEX idx_inscripcion_sucursal ON inscripcion(sucursal_origen);
CREATE INDEX idx_inscripcion_cliente ON inscripcion(documento_cliente);
CREATE INDEX idx_asistencia_cliente ON asistencia(documento_cliente);
CREATE INDEX idx_asistencia_fecha ON asistencia(fecha);