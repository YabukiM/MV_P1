CREATE DATABASE Inventory;

USE Inventory;

CREATE TABLE Maquinas (
  Conteo INT identity (1,1) NOT NULL,
  Contratos VARCHAR(50) unique,
  Producto VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(100),
  SeriePC VARCHAR(50) NOT NULL unique,
  Destino VARCHAR(50),
  Asignada VARCHAR(50),
  Estatuss VARCHAR(50),
  NombreUsuarioPuesto VARCHAR(50),
  NoCartaCustodia VARCHAR(50),
  PRIMARY KEY (SeriePC)
);
ALTER TABLE Maquinas ADD Activo BIT

CREATE TABLE Tiendas (
  ID_Tienda int primary key identity (1,1),
  DeptoTienda VARCHAR(50),
  NoTienda INT NOT NULL,
  NombreTienda VARCHAR(50) NOT NULL,
  DireccionTienda VARCHAR(100) ,
  SeriePC varchar(50), 
  foreign key (SeriePC)references Maquinas(SeriePC)
);
ALTER TABLE Tiendas ADD Activo BIT


create table empleado(
    No_emp int primary key identity (1,1),
	nombre varchar (30),
	seriePC varchar(50), 
	puesto varchar(30),
	cartacustiodia int not null unique,
	foreign key (seriePC) references Maquinas(seriePC)
);

ALTER TABLE empleado ADD Activo BIT

create table contratos (
	producto_contrato varchar(30) primary key not null,
	descripcion varchar(30),
	serie varchar(30),
	destino varchar(30),
	comentarios varchar(30),
	fecha_surtido date,
	recibio varchar(30),
	Folio_pedido int,
	fecha_pedido  varchar(30),
	SeriePC  VARCHAR(50), 
	foreign key (seriePC) references Maquinas(seriePC)

)
ALTER TABLE contratos ADD Activo BIT


--sfadsfdfsa

--tacla compras o algo que seaea de compras