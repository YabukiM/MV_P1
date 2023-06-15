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
create procedure sp_agregarTiendas (@DeptoTienda VARCHAR(50),  @NoTienda INT, @NombreTienda VARCHAR(50),
@DireccionTienda VARCHAR(100), @SeriePC varchar(50), @activo bit) 
as begin insert into Tiendas( DeptoTienda, NoTienda , NombreTienda, DireccionTienda, SeriePC, activo) 
values (@DeptoTienda, @NoTienda,@NombreTienda, @DireccionTienda, @SeriePC, @activo)
end


--editar 
CREATE PROCEDURE sp_editarTiendas
    @ID_Tienda INT,
    @DeptoTienda VARCHAR(50),
    @NoTienda INT,
    @NombreTienda VARCHAR(50),
    @DireccionTienda VARCHAR(100),
	@SeriePC varchar(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Tiendas
    SET DeptoTienda = @DeptoTienda,
        NoTienda = @NoTienda,
        NombreTienda = @NombreTienda,
        DireccionTienda = @DireccionTienda,
		SeriePC = @SeriePC
		WHERE ID_TIENDA = @ID_Tienda;
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
create procedure sp_agregar_emplado( @nombre varchar (30), @puesto varchar(30),  @seriePC varchar(50) , @activo bit)
as begin insert into empleado(nombre, puesto, seriePC, Activo) 
values	(@nombre,@puesto,@seriePC,@activo)
end

--editar
CREATE PROCEDURE sp_editarEmpleado
    @No_emp INT,
    @nombre VARCHAR(30),
    @puesto VARCHAR(30),
	@SeriePC varchar(50) 
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE empleado
    SET 
	nombre = @nombre, 
	puesto = @puesto,
	SeriePC = @SeriePC
    WHERE No_emp = @No_emp;    
END


--eliminar
CREATE PROCEDURE sp_eliminar_empleado (@No_emp INT)
AS
BEGIN
UPDATE empleado
SET activo = 0
WHERE No_emp = @No_emp
END