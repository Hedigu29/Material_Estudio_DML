CREATE DATABASE Trazabilidad_SGVA;

USE Trazabilidad_SGVA;

CREATE TABLE Empresa (
    id_empresa INT NOT NULL AUTO_INCREMENT,
    CodigoEmpresa INT NOT NULL UNIQUE,
    NombreEmpresa VARCHAR(100) NOT NULL,
    PRIMARY KEY (id_empresa)
);

CREATE TABLE Trazabilidad (
    IdTrazabilidad INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    NombreEmpresa VARCHAR(100) NOT NULL,
    Encargado VARCHAR(100) NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaFin DATE NULL,
    Telefono VARCHAR(20),
    Correo VARCHAR(100),
    Estado VARCHAR(50),
    FechaCierre DATE NULL,
    CodigoEmpresa INT NOT NULL,
    
    CONSTRAINT fk_empresa_trazabilidad
    FOREIGN KEY (CodigoEmpresa)
    REFERENCES Empresa (CodigoEmpresa)
);

ALTER TABLE Trazabilidad
DROP FOREIGN KEY fk_empresa_trazabilidad;

ALTER TABLE Empresa DROP PRIMARY KEY;

ALTER TABLE Empresa DROP COLUMN id_empresa;

ALTER TABLE Empresa ADD PRIMARY KEY (CodigoEmpresa);

SELECT * FROM Empresa;

DESCRIBE Empresa;

ALTER TABLE Trazabilidad
CHANGE NombreEmpresa COD_EMPRESA INT;

ALTER TABLE Trazabilidad
RENAME COLUMN COD_EMPRESA TO cod_empresa;

DESCRIBE Trazabilidad;
DESCRIBE Empresa;

INSERT INTO Empresa (CodigoEmpresa, NombreEmpresa)
VALUES (1, 'SENA');
    
    


