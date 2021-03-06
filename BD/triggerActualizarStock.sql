USE [BDVENTAS_5]
GO
/****** Object:  Trigger [dbo].[ActualizarStock]    Script Date: 04/05/2021 14:00:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER trigger [dbo].[ActualizarStock]
on [dbo].[DETALLE_VENTA]
	for Insert
as
	Begin
		declare @Cantidad int
		declare @StockActual int
		
	--Obtener la cantidad que estamos insertando
	select @Cantidad=DV_Cantidad
		from inserted
	
	--Obtener el Stock Actual
	select @StockActual=P.canproducto
		from PRODUCTOS P
		join inserted i
			on P.codproducto=i.codproducto
			
	--Validar la cantidad pedida
		Begin
			--Actualizar el Stock del producto
				Update Productos
					set canproducto=canproducto-@Cantidad
				from Productos P
				join inserted i
				on P.codproducto=i.codproducto
		END
	END
