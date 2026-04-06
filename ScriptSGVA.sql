
CREATE DATABASE Trazabilidad_SGVA;

USE Trazabilidad_SGVA;

CREATE TABLE Empresa (
    CodigoEmpresa INT NOT NULL AUTO_INCREMENT,
    NombreEmpresa VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodigoEmpresa)
);

CREATE TABLE Trazabilidad (
    IdTrazabilidad INT NOT NULL AUTO_INCREMENT,
    NombreEmpresa VARCHAR(100) NOT NULL,
    Encargado VARCHAR(100) NOT NULL,
    FechaInicio DATE NOT NULL,
    FechaFin DATE NULL,
    Telefono VARCHAR(20),
    Correo VARCHAR(100),
    Estado VARCHAR(50),
    FechaCierre DATE NULL,
    CodigoEmpresa INT NOT NULL,
    
    PRIMARY KEY (IdTrazabilidad),
    
    CONSTRAINT fk_empresa_trazabilidad
    FOREIGN KEY (CodigoEmpresa)
    REFERENCES Empresa (CodigoEmpresa)
);