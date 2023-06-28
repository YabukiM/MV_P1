CREATE DATABASE Inventory;

USE Inventory;

CREATE TABLE Maquinas (
  Conteo INT identity (1,1),
  Contratos VARCHAR(50) unique,
  Producto VARCHAR(50) ,
  Descripcion VARCHAR(100),
  SeriePC VARCHAR(50) unique,
  Destino VARCHAR(50),
  Asignada VARCHAR(50),
  Estatuss VARCHAR(50),
  Activo BIT,
  NombreUsuarioPuesto VARCHAR(50),
  NoCartaCustodia VARCHAR(50),
  PRIMARY KEY (Conteo)
);

CREATE TABLE Tiendas (
  ID_Tienda int primary key identity (1,1),
  DeptoTienda VARCHAR(50),
  NoTienda INT ,
  NombreTienda VARCHAR(50),
  Activo BIT,
  DireccionTienda VARCHAR(100) ,
  SeriePC varchar(50), 
  foreign key (ID_Tienda)references Maquinas(Conteo)
);


create table empleado(
    No_emp int primary key identity (1,1),
	nombre varchar (30),
	seriePC varchar(50), 
	puesto varchar(30),
	Activo BIT,
	foreign key (No_emp) references Maquinas(Conteo)
);

create table contratos (
	id_Contrato int primary key not null,
	producto_contrato varchar(30) unique,
	descripcion varchar(30),
	serie varchar(30),
	destino varchar(30),
	comentarios varchar(30),
	fecha_surtido date,
	recibio varchar(30),
	Folio_pedido int,
	fecha_pedido  varchar(30),
	SeriePC  VARCHAR(50), 
	activo bit,
	foreign key (id_Contrato) references Maquinas(Conteo)

)


--sfadsfdfsa

--tacla compras o algo que seaea de compras