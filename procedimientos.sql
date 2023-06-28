--procedimientos 
--maquinas
create procedure sp_agregarMaquinas ( @Contratos VARCHAR(50) , @Producto VARCHAR(50), @Descripcion VARCHAR(100), @SeriePC VARCHAR(50), 
@Destino VARCHAR(50), @Asignada VARCHAR(50), @Estatuss VARCHAR(50), @NombreUsuarioPuesto VARCHAR(50), @NoCartaCustodia VARCHAR(50), @Activo bit)
as begin insert into Maquinas( Contratos  ,Producto , Descripcion ,SeriePC,  Destino , Asignada ,Estatuss ,  NombreUsuarioPuesto, NoCartaCustodia, Activo)
values  ( @Contratos  , @Producto , @Descripcion , @SeriePC,  @Destino , @Asignada , @Estatuss ,  @NombreUsuarioPuesto, @NoCartaCustodia,  @Activo)
end

--editar
CREATE PROCEDURE sp_editarMaquinas
(
    @Conteo int,
    @Contratos VARCHAR(50),
    @Producto VARCHAR(50),
    @Descripcion VARCHAR(100),
    @SeriePC VARCHAR(50),
    @Destino VARCHAR(50),
    @Asignada VARCHAR(50),
    @Estatuss VARCHAR(50),
    @NombreUsuarioPuesto VARCHAR(50),
    @NoCartaCustodia VARCHAR(50)
)
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE Maquinas
    SET Contratos = @Contratos,
        Producto = @Producto,
        Descripcion = @Descripcion,
        SeriePC = @SeriePC,
        Destino = @Destino,
        Asignada = @Asignada,
        Estatuss = @Estatuss,
        NombreUsuarioPuesto = @NombreUsuarioPuesto,
        NoCartaCustodia = @NoCartaCustodia
    WHERE Conteo = @Conteo;
END


--create procedure sp_editarTiendas (@ID_Tienda int, @DeptoTienda VARCHAR(50),  @NoTienda INT, @NombreTienda VARCHAR(50), @DireccionTienda VARCHAR(100))
--AS
--BEGIN
--SET NOCOUNT ON;
--UPDATE sp_editarTiendas
--set DeptoTienda= @DeptoTienda, NoTienda = @NoTienda, NombreTienda= @NombreTienda, DireccionTienda= @DireccionTienda
--where ID_TIENDA =@ID_Tienda
--END

--ELIMINAR
CREATE PROCEDURE sp_eliminar_maquinas (@Conteo INT)
AS
BEGIN
UPDATE Maquinas
SET Activo = 0
WHERE Conteo = @Conteo
END


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

CREATE PROCEDURE sp_editarTiendas
(
    @ID_Tienda int,
    @DeptoTienda varchar(50),
    @NoTienda int,
    @NombreTienda varchar(50),
    @DireccionTienda varchar(100),
	@SeriePC varchar(50)
)
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
create procedure sp_agregar_emplado( @nombre varchar (30), @seriePC varchar(50) , @puesto varchar(30), @activo bit)
as begin insert into empleado(nombre, seriePC, puesto, Activo) values	(@nombre,@seriePC,@puesto,@activo)
end
--editar
CREATE PROCEDURE sp_editarEmpleado
(
    @No_emp int,
    @nombre varchar(30),
    @puesto varchar(30),
	@seriePC varchar(50)
)
AS 
BEGIN
    SET NOCOUNT ON;

    UPDATE empleado
    SET nombre = @nombre,
        puesto = @puesto,
		 seriePC = @seriePC
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

