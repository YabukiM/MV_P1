CREATE DATABASE Inventory;

USE Inventory;

CREATE TABLE Maquinas (
  Conteo INT IDENTITY (1,1),
  Contratos VARCHAR(50) UNIQUE,
  Producto VARCHAR(50),
  Descripcion VARCHAR(100),
  SeriePC VARCHAR(50) not null,
  Destino VARCHAR(50),
  Asignada VARCHAR(50),
  Estatuss VARCHAR(50),
  Activo BIT,
  NombreUsuarioPuesto VARCHAR(50),
  NoCartaCustodia VARCHAR(50),
  PRIMARY KEY (SeriePC)
);

CREATE TABLE Tiendas (
  ID_Tienda INT PRIMARY KEY IDENTITY (1,1),
  DeptoTienda VARCHAR(50),
  NoTienda INT,
  NombreTienda VARCHAR(50),
  Activo BIT,
  DireccionTienda VARCHAR(100),
  SeriePC VARCHAR(50),
  FOREIGN KEY (SeriePC) REFERENCES Maquinas(SeriePC)
);

CREATE TABLE empleado (
  No_emp INT PRIMARY KEY IDENTITY (1,1),
  nombre VARCHAR(30),
  seriePC VARCHAR(50),
  puesto VARCHAR(30),
  Activo BIT,
  FOREIGN KEY (seriePC) REFERENCES Maquinas(SeriePC)
);

CREATE TABLE contra (
  id_Contrato INT PRIMARY KEY identity (1,1) NOT NULL,
  producto_contrato VARCHAR(30) UNIQUE,
  descripcion VARCHAR(30),
  serie VARCHAR(30),
  destino VARCHAR(30),
  comentarios VARCHAR(30),
  fecha_surtido DATE,
  recibio VARCHAR(30),
  Folio_pedido INT,
  fecha_pedido date,
  SeriePC VARCHAR(50),
  activo BIT,
  FOREIGN KEY (SeriePC) REFERENCES Maquinas(SeriePC)
);


--sfadsfdfsa

--tacla compras o algo que seaea de compras