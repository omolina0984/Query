
Create Database  [MovimientoBanca]
go
USE [MovimientoBanca]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 25/9/2022 21:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[ClienteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](200) NOT NULL,
	[Direccion] [varchar](350) NULL,
	[Telefono] [varchar](11) NULL,
	[Contraseña] [varchar](max) NULL,
	[Estado] [bit] NULL,
	[Genero] [varchar](50) NULL,
	[Edad] [int] NULL,
	[Identificacion] [varchar](13) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[ClienteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 25/9/2022 21:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[CuentaId] [int] IDENTITY(1,1) NOT NULL,
	[NumeroCuenta] [bigint] NULL,
	[TipoCuentaId] [int] NULL,
	[SaldoInicial] [numeric](15, 2) NULL,
	[Estado] [bit] NOT NULL,
	[ClienteId] [int] NULL,
 CONSTRAINT [PK_Cuenta] PRIMARY KEY CLUSTERED 
(
	[CuentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movimientos]    Script Date: 25/9/2022 21:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movimientos](
	[MovimientoId] [int] IDENTITY(1,1) NOT NULL,
	[TipoMovimientoId] [int] NULL,
	[Valor] [numeric](15, 2) NULL,
	[CuentaId] [int] NOT NULL,
	[Fecha] [date] NULL,
	[Saldo] [numeric](15, 2) NULL,
	[Detalle] [varchar](50) NULL,
	[SaldoAnterior] [numeric](15, 2) NULL,
 CONSTRAINT [PK_Movimientos] PRIMARY KEY CLUSTERED 
(
	[MovimientoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCuenta]    Script Date: 25/9/2022 21:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCuenta](
	[TipoCuentaId] [int] NOT NULL,
	[Cuenta] [varchar](50) NULL,
 CONSTRAINT [PK_TipoCuenta] PRIMARY KEY CLUSTERED 
(
	[TipoCuentaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMovimiento]    Script Date: 25/9/2022 21:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMovimiento](
	[TipoMovimientoId] [int] NOT NULL,
	[DescripcionMovimiento] [varchar](50) NULL,
 CONSTRAINT [PK_TipoMovimiento] PRIMARY KEY CLUSTERED 
(
	[TipoMovimientoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Direccion], [Telefono], [Contraseña], [Estado], [Genero], [Edad], [Identificacion]) VALUES (5, N'Jose Lema', N'Otavalo Sn y principal', N'098254785', N'1234', 1, N'Masculino', 30, N'1724120030')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Direccion], [Telefono], [Contraseña], [Estado], [Genero], [Edad], [Identificacion]) VALUES (6, N'Marianela Montalvo', N'Amazonas y NNUU', N'097548965', N'5678', 1, N'Femenino', 24, N'1724120031')
INSERT [dbo].[Cliente] ([ClienteId], [Nombres], [Direccion], [Telefono], [Contraseña], [Estado], [Genero], [Edad], [Identificacion]) VALUES (7, N'Juan Osorio', N'13 junio y Equinoccial', N'098874587', N'1245', 1, N'Masculino', 38, N'1724120032')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
GO
SET IDENTITY_INSERT [dbo].[Cuenta] ON 

INSERT [dbo].[Cuenta] ([CuentaId], [NumeroCuenta], [TipoCuentaId], [SaldoInicial], [Estado], [ClienteId]) VALUES (9, 478758, 1, CAST(1425.00 AS Numeric(15, 2)), 1, 5)
INSERT [dbo].[Cuenta] ([CuentaId], [NumeroCuenta], [TipoCuentaId], [SaldoInicial], [Estado], [ClienteId]) VALUES (10, 225487, 2, CAST(200.00 AS Numeric(15, 2)), 1, 6)
INSERT [dbo].[Cuenta] ([CuentaId], [NumeroCuenta], [TipoCuentaId], [SaldoInicial], [Estado], [ClienteId]) VALUES (11, 496825, 1, CAST(0.00 AS Numeric(15, 2)), 1, 6)
INSERT [dbo].[Cuenta] ([CuentaId], [NumeroCuenta], [TipoCuentaId], [SaldoInicial], [Estado], [ClienteId]) VALUES (12, 495878, 1, CAST(150.00 AS Numeric(15, 2)), 1, 7)
INSERT [dbo].[Cuenta] ([CuentaId], [NumeroCuenta], [TipoCuentaId], [SaldoInicial], [Estado], [ClienteId]) VALUES (13, 585545, 2, CAST(1000.00 AS Numeric(15, 2)), 1, 5)
SET IDENTITY_INSERT [dbo].[Cuenta] OFF
GO
SET IDENTITY_INSERT [dbo].[Movimientos] ON 

INSERT [dbo].[Movimientos] ([MovimientoId], [TipoMovimientoId], [Valor], [CuentaId], [Fecha], [Saldo], [Detalle], [SaldoAnterior]) VALUES (1, 1, CAST(575.00 AS Numeric(15, 2)), 9, CAST(N'2022-09-25' AS Date), CAST(1425.00 AS Numeric(15, 2)), N'Retiro de 575', CAST(2000.00 AS Numeric(15, 2)))
INSERT [dbo].[Movimientos] ([MovimientoId], [TipoMovimientoId], [Valor], [CuentaId], [Fecha], [Saldo], [Detalle], [SaldoAnterior]) VALUES (2, 2, CAST(100.00 AS Numeric(15, 2)), 10, CAST(N'2022-09-25' AS Date), CAST(200.00 AS Numeric(15, 2)), N'Deposito de 100', CAST(100.00 AS Numeric(15, 2)))
INSERT [dbo].[Movimientos] ([MovimientoId], [TipoMovimientoId], [Valor], [CuentaId], [Fecha], [Saldo], [Detalle], [SaldoAnterior]) VALUES (3, 2, CAST(150.00 AS Numeric(15, 2)), 12, CAST(N'2022-09-25' AS Date), CAST(150.00 AS Numeric(15, 2)), N'Deposito de 150', CAST(0.00 AS Numeric(15, 2)))
INSERT [dbo].[Movimientos] ([MovimientoId], [TipoMovimientoId], [Valor], [CuentaId], [Fecha], [Saldo], [Detalle], [SaldoAnterior]) VALUES (4, 1, CAST(540.00 AS Numeric(15, 2)), 11, CAST(N'2022-09-25' AS Date), CAST(0.00 AS Numeric(15, 2)), N'Retiro de 540', CAST(540.00 AS Numeric(15, 2)))
SET IDENTITY_INSERT [dbo].[Movimientos] OFF
GO
INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Cuenta]) VALUES (1, N'AHORROS')
INSERT [dbo].[TipoCuenta] ([TipoCuentaId], [Cuenta]) VALUES (2, N'CORRIENTE')
GO
INSERT [dbo].[TipoMovimiento] ([TipoMovimientoId], [DescripcionMovimiento]) VALUES (1, N'Retiro')
INSERT [dbo].[TipoMovimiento] ([TipoMovimientoId], [DescripcionMovimiento]) VALUES (2, N'Deposito')
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_Cliente] FOREIGN KEY([ClienteId])
REFERENCES [dbo].[Cliente] ([ClienteId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_Cliente]
GO
ALTER TABLE [dbo].[Cuenta]  WITH CHECK ADD  CONSTRAINT [FK_Cuenta_TipoCuenta] FOREIGN KEY([TipoCuentaId])
REFERENCES [dbo].[TipoCuenta] ([TipoCuentaId])
GO
ALTER TABLE [dbo].[Cuenta] CHECK CONSTRAINT [FK_Cuenta_TipoCuenta]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_Cuenta] FOREIGN KEY([CuentaId])
REFERENCES [dbo].[Cuenta] ([CuentaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_Cuenta]
GO
ALTER TABLE [dbo].[Movimientos]  WITH CHECK ADD  CONSTRAINT [FK_Movimientos_TipoMovimiento] FOREIGN KEY([TipoMovimientoId])
REFERENCES [dbo].[TipoMovimiento] ([TipoMovimientoId])
GO
ALTER TABLE [dbo].[Movimientos] CHECK CONSTRAINT [FK_Movimientos_TipoMovimiento]
GO
/****** Object:  StoredProcedure [dbo].[sps_obtener_estado_fecha_cliente]    Script Date: 25/9/2022 21:37:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sps_obtener_estado_fecha_cliente]
	-- Add the parameters for the stored procedure here
	@identificacion varchar(13), @fechainicio date,   @fechafin date
	as
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements
	SET NOCOUNT ON;

SELECT * from Cliente as c
inner join Cuenta d on c.ClienteId  =d.ClienteId
inner join TipoCuenta tc on tc.TipoCuentaId =d.TipoCuentaId
inner join Movimientos m on m.CuentaId= d.CuentaId
inner join TipoMovimiento tm on m.TipoMovimientoId=tm.TipoMovimientoId
where c.Identificacion=@identificacion and m.Fecha>= @fechainicio and m.Fecha<=@fechafin
END
GO
