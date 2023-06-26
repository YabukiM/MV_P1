--procedimientos 
--maquinas
create procedure sp_agregarMaquinas (


--tiendas

--ID_Tienda int primary key identity (1,1),
--  DeptoTienda VARCHAR(50),
--  NoTienda INT NOT NULL,
--  NombreTienda VARCHAR(50) NOT NULL,
--  DireccionTienda VARCHAR(100) ,
--  SeriePC varchar(50), 

--agregar
create procedure sp_agregarTiendas (@DeptoTienda VARCHAR(50),  @NoTienda INT, @NombreTienda VARCHAR(50), @DireccionTienda VARCHAR(100), @SeriePC varchar(50), @activo bit) 
as begin insert into Tiendas( DeptoTienda, NoTienda , NombreTienda, DireccionTienda, SeriePC, activo) values (@DeptoTienda, @NoTienda,@NombreTienda, @DireccionTienda, @SeriePC, @activo)
end


--editar 

create procedure sp_editarTiendas (@ID_Tienda int, @DeptoTienda VARCHAR(50),  @NoTienda INT, @NombreTienda VARCHAR(50), @DireccionTienda VARCHAR(100))
AS
BEGIN
SET NOCOUNT ON;
UPDATE sp_editarTiendas
set DeptoTienda= @DeptoTienda, NoTienda = @NoTienda, NombreTienda= @NombreTienda, DireccionTienda= @DireccionTienda
where ID_TIENDA =@ID_Tienda
END

--ELIMINAR
CREATE PROCEDURE sp_eliminar_tiendas (@ID_Tienda INT)
AS
BEGIN
UPDATE Tiendas
SET activo = 0
WHERE ID_Tienda = @ID_Tienda
END


-- empleado
 --No_emp int primary key identity (1,1),
	--nombre varchar (30),
	--seriePC varchar(50), 
	--puesto varchar(30),
	--cartacustiodia int not null unique,
	--foreign key (seriePC) references Maquinas(seriePC)
--agregar
create procedure sp_agregar_emplado( @nombre varchar (30), @seriePC varchar(50) , @puesto varchar(30), @cartacustiodia varchar(50), @activo bit)
as begin insert into empleado(nombre, seriePC, puesto, cartacustiodia, Activo) values	(@nombre,@seriePC,@puesto, @cartacustiodia,@activo)
end
--editar
create procedure sp_editarEmpleado(@No_emp int, @nombre varchar (30), @seriePC varchar(50) , @puesto varchar(30), @cartacustiodia varchar(50))
AS
BEGIN
SET NOCOUNT ON;
UPDATE sp_editarEmpleado
set nombre= @nombre, seriePC = @seriePC, puesto= @puesto, cartacustiodia= @cartacustiodia
where No_emp =No_emp
END
--eliminar
CREATE PROCEDURE sp_eliminar_empleado (@No_emp INT)
AS
BEGIN
UPDATE empleado
SET activo = 0
WHERE No_emp = @No_emp
END