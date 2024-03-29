USE [TP06-Qatar]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 11/8/2022 13:45:40 ******/
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
/****** Object:  Table [dbo].[Jugador]    Script Date: 11/8/2022 13:45:40 ******/
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

INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (1, N'Qatar', N'qatar.jpg', N'camisetaQatar.png', N'Asia', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (2, N'Ecuador', N'ecuador.jpg', N'camisetaEcuador.png', N'Sudamerica', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (3, N'Senegal', N'senegal.jpg', N'camisetaSenegal.png', N'Africa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (4, N'Paises Bajos', N'holanda.jpg', N'camisetaHolanda.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (6, N'Inglaterra', N'inglaterra.jpg', N'camisetaInglaterra.png', N'Europa', 1)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (7, N'Iran', N'iran.jpg', N'camisetaIran.png', N'Asia', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (9, N'Estados Unidos', N'eeuu.jpg', N'camisetaEEUU.png', N'Norteamerica', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (10, N'Gales', N'gales.jpg', N'camisetaGales.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (11, N'Argentina', N'argentina.jpg', N'camisetaArgentina.png', N'Sudamerica', 2)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (12, N'Arabia Saudita', N'arabiaSaudita.jpg', N'camisetaArabia.png', N'Asia', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (13, N'Mexico', N'mexico.jpg', N'camisetaMexico.png', N'Sudamerica', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (14, N'Polonia', N'polonia.jpg', N'camisetaPolonia.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (15, N'Francia', N'francia.jpg', N'camisetaFrancia.png', N'Europa', 2)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (16, N'Australia', N'australia.jpg', N'camisetaAustralia.png', N'Oceania', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (17, N'Dinamarca', N'dinamarca.jpg', N'camisetaDinamarca.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (18, N'Tunez', N'tunez.jpg', N'camisetaTunez.png', N'Africa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (19, N'España', N'españa.jpg', N'camisetaEspaña.png', N'Europa', 1)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (20, N'Costa Rica', N'costaRica.jpg', N'camisetaCR.png', N'Centroamerica', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (21, N'Alemania', N'alemania.jpg', N'camisetaAlemania.png', N'Europa', 4)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (22, N'Japon', N'japon.jpg', N'camisetaJapon.png', N'Asia', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (23, N'Belgica', N'belgica.jpg', N'camisetaBelgica.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (24, N'Canada', N'canada.jpg', N'camisetaCanada.png', N'Norteamerica', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (25, N'Marruecos', N'marruecos.jpg', N'camisetaMarruecos.png', N'Africa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (26, N'Croacia', N'croacia.jpg', N'camisetaCroacia.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (27, N'Brasil', N'brasil.jpg', N'camisetaBrasil.png', N'Sudamerica', 5)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (28, N'Serbia', N'serbia.jpg', N'camisetaSerbia.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (29, N'Suiza', N'suiza.jpg', N'camisetaSuiza.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (30, N'Camerun', N'camerun.jpg', N'camisetaCamerun.jpg', N'Africa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (31, N'Portugal', N'portugal.jpg', N'camisetaPortugal.png', N'Europa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (32, N'Ghana', N'ghana.jpg', N'camisetaGhana.png', N'Africa', 0)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (33, N'Uruguay', N'uruguay.jpg', N'camisetaUruguay.png', N'Sudamerica', 2)
INSERT [dbo].[Equipo] ([IdEquipo], [Nombre], [Escudo], [Camiseta], [Continente], [CopasGanadas]) VALUES (34, N'Corea del Sur', N'coreaDelSur.jpg', N'camisetaCDS.png', N'Asia', 0)
SET IDENTITY_INSERT [dbo].[Equipo] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugador] ON 

INSERT [dbo].[Jugador] ([IdJugador], [IdEquipo], [Nombre], [FechaDeNacimiento], [Foto], [EquipoActual]) VALUES (1, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Jugador] ([IdJugador], [IdEquipo], [Nombre], [FechaDeNacimiento], [Foto], [EquipoActual]) VALUES (2, 1, N'Lionel Andres Messi', CAST(N'1987-06-24T00:00:00.000' AS DateTime), NULL, N'Paris Saint Germain')
SET IDENTITY_INSERT [dbo].[Jugador] OFF
GO
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Equipo] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipo] ([IdEquipo])
GO
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Equipo]
GO
