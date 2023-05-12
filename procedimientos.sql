--procedimientos 



--tiendas

--ID_Tienda int primary key identity (1,1),
--  DeptoTienda VARCHAR(50),
--  NoTienda INT NOT NULL,
--  NombreTienda VARCHAR(50) NOT NULL,
--  DireccionTienda VARCHAR(100) ,
--  SeriePC varchar(50), 

--agregar
create procedure sp_agregarTiendas (@DeptoTienda VARCHAR(50),  @NoTienda INT, @NombreTienda VARCHAR(50), @DireccionTienda VARCHAR(100), @SeriePC varchar(50), @activo bit) 
as begin insert into Tiendas( DeptoTienda, NombreTienda, DireccionTienda, SeriePC, activo) values (@DeptoTienda, @NoTienda, @DireccionTienda, @SeriePC, @activo)
end


--editar 

create procedure sp_editarTiendas (@ID_Tienda int, @DeptoTienda VARCHAR(50),  @NoTienda INT, @NombreTienda VARCHAR(50), @DireccionTienda VARCHAR(100), @SeriePC varchar(50))
AS
BEGIN
SET NOCOUNT ON;
UPDATE sp_editarTiendas
set DeptoTienda= @DeptoTienda, NoTienda = @NoTienda, NombreTienda= @NombreTienda, DireccionTienda= @DireccionTienda, SeriePC= @SeriePC
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