USE [TP06-Qatar]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 13/7/2022 11:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[IdEquipo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Escudo] [varchar](200) NULL,
	[Camiseta] [varchar](200) NULL,
	[Continente] [varchar](50) NULL,
	[CopasGanadas] [int] NOT NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[IdEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 13/7/2022 11:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugador](
	[IdJugador] [int] IDENTITY(1,1) NOT NULL,
	[IdEquipo] [int] NULL,
	[Nombre] [varchar](100) NULL,
	[FechaDeNacimiento] [datetime] NULL,
	[Foto] [varchar](200) NULL,
	[EquipoActual] [varchar](50) NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[IdJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipo] ON 

INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (3, N'Qatar', N'qatar.jpg', N'camisetaQatar.jpg', N'Asia', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (4, N'Ecuador', N'ecuador.jpg', N'camisetaEcuador.jpg', N'Sudamerica', 2)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (5, N'Senegal', N'senegal.jpg', N'camisetaSenegal.jpg', N'Africa', 2)
SET IDENTITY_INSERT [dbo].[Equipo] OFF
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Equipo] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipo] ([IdEquipo])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Equipo]
GO
