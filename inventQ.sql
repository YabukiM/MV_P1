CREATE DATABASE Invento;

USE Invento;

CREATE TABLE Maquinas (
  Conteo INT identity (1,1) NOT NULL,
  Contratos VARCHAR(50),
  Producto VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(100),
  SeriePC VARCHAR(50) NOT NULL,
  Destino VARCHAR(50),
  Asignada VARCHAR(50),
  Estatuss VARCHAR(50),
  NombreUsuarioPuesto VARCHAR(50),
  NoCartaCustodia VARCHAR(50),
  PRIMARY KEY (SeriePC)
);

CREATE TABLE Tiendas (
  ID_Tienda int primary key identity (1,1),
  DeptoTienda VARCHAR(50),
  NoTienda INT NOT NULL,
  NombreTienda VARCHAR(50) NOT NULL,
  DireccionTienda VARCHAR(100),

);


--ALTER TABLE Maquinas ADD FOREIGN KEY (SeriePC) REFERENCES Tiendas(ID_Tienda);