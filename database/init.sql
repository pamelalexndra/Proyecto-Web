CREATE DATABASE emprendedores_db;
GO

USE emprendedores_db;
GO

CREATE TABLE emprendedores (
  id INT IDENTITY(1,1) PRIMARY KEY,
  nombre NVARCHAR(100) NOT NULL,
  email NVARCHAR(150),
  telefono NVARCHAR(20),
  descripcion NVARCHAR(100),
  fecha_registro DATETIME DEFAULT GETDATE()M
)

CREATE TABLE productos (
  id INT IDENTITY(1,1) PRIMARY KEY,
  categoria_id INT FOREIGN KEY REFERENCES categorias(id),
  nombre NVARCHAR(100) NOT NULL,
  descripcion NVARCHAR(200),
  precio DECIMAL(10,2) NOT NULL,
  stock INT DEFAULT 0,
  imagen_url NVARCHAR(255)
)

CREATE TABLE categorias (
  id INT IDENTITY(1,1) PRIMARY KEY,
  nombre NVARCHAR(50) NOT NULL,
  descripcion NVARCHAR(255)
)
