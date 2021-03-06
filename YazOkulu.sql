USE [DbYazOkulu]
GO
/****** Object:  Table [dbo].[Tbl_BasvuruForm]    Script Date: 13.08.2021 19:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_BasvuruForm](
	[BasvuruId] [int] IDENTITY(1,1) NOT NULL,
	[OgrenciId] [int] NULL,
	[DersId] [int] NULL,
 CONSTRAINT [PK_Tbl_BasvuruForm] PRIMARY KEY CLUSTERED 
(
	[BasvuruId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tbl_Dersler]    Script Date: 13.08.2021 19:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Dersler](
	[DersId] [int] IDENTITY(1,1) NOT NULL,
	[DersAd] [varchar](50) NULL,
	[DersMintKont] [tinyint] NULL,
	[DersMaxKont] [tinyint] NULL,
 CONSTRAINT [PK_Tbl_Dersler] PRIMARY KEY CLUSTERED 
(
	[DersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Ogrenci]    Script Date: 13.08.2021 19:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Ogrenci](
	[OgrId] [int] IDENTITY(1,1) NOT NULL,
	[OgrAd] [varchar](50) NULL,
	[OgrSoyad] [varchar](50) NULL,
	[OgrNumara] [varchar](5) NULL,
	[OgrFoto] [varchar](500) NULL,
	[OgrSifre] [varchar](10) NULL,
	[OgrBakiye] [decimal](18, 2) NULL CONSTRAINT [DF_Tbl_Ogrenci_OgrBakiye]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Ogrenci] PRIMARY KEY CLUSTERED 
(
	[OgrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Ogretmen]    Script Date: 13.08.2021 19:07:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Ogretmen](
	[OgrtId] [int] IDENTITY(1,1) NOT NULL,
	[OgrtAdSoyad] [varchar](50) NULL,
	[OgrtBrans] [int] NULL,
 CONSTRAINT [PK_Tbl_Ogretmen] PRIMARY KEY CLUSTERED 
(
	[OgrtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_BasvuruForm] ON 

INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (1, 1, 4)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (2, 1, 8)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (3, 1, 10)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (4, 2, 4)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (5, 3, 7)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (6, 3, 8)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (7, 4, 10)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (8, 4, 1)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (9, 5, 1)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (12, 5, 2)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (13, 5, 6)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (14, 5, 10)
INSERT [dbo].[Tbl_BasvuruForm] ([BasvuruId], [OgrenciId], [DersId]) VALUES (15, 1, 1)
SET IDENTITY_INSERT [dbo].[Tbl_BasvuruForm] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Dersler] ON 

INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (1, N'Mühendislik Matematiği', 3, 10)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (2, N'Fizik 1', 5, 15)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (3, N'Mesleki İngilizce', 5, 10)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (4, N'Edebiyat', 5, 5)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (5, N'Algoritma ve Programlamaya Giriş', 10, 20)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (6, N'Yazılım Mühendisliği Temelleri', 3, 6)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (7, N'Görüntü İşleme', 5, 10)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (8, N'Yapay Sinir Ağları', 5, 10)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (9, N'Nesne Tabanlı Programlama', 6, 12)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (10, N'Veri Madenciliği ve Veri Analizi', 4, 10)
INSERT [dbo].[Tbl_Dersler] ([DersId], [DersAd], [DersMintKont], [DersMaxKont]) VALUES (11, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Dersler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Ogrenci] ON 

INSERT [dbo].[Tbl_Ogrenci] ([OgrId], [OgrAd], [OgrSoyad], [OgrNumara], [OgrFoto], [OgrSifre], [OgrBakiye]) VALUES (1, N'Burak', N'Nas', N'12345', N'deneme', N'1', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Tbl_Ogrenci] ([OgrId], [OgrAd], [OgrSoyad], [OgrNumara], [OgrFoto], [OgrSifre], [OgrBakiye]) VALUES (2, N'Mehmet', N'Çınar', N'2236', N'deneme', N'2', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Tbl_Ogrenci] ([OgrId], [OgrAd], [OgrSoyad], [OgrNumara], [OgrFoto], [OgrSifre], [OgrBakiye]) VALUES (3, N'Esra', N'Bulut', N'5411', N'deneme', N'3', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Tbl_Ogrenci] ([OgrId], [OgrAd], [OgrSoyad], [OgrNumara], [OgrFoto], [OgrSifre], [OgrBakiye]) VALUES (4, N'Ayşe', N'Kara', N'7748', N'deneme', N'4', CAST(0.00 AS Decimal(18, 2)))
INSERT [dbo].[Tbl_Ogrenci] ([OgrId], [OgrAd], [OgrSoyad], [OgrNumara], [OgrFoto], [OgrSifre], [OgrBakiye]) VALUES (5, N'Mehmet Ali', N'Öztürker', N'3365', N'deneme', N'5', CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Tbl_Ogrenci] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Ogretmen] ON 

INSERT [dbo].[Tbl_Ogretmen] ([OgrtId], [OgrtAdSoyad], [OgrtBrans]) VALUES (1, N'Ayşe Tunalı', 2)
INSERT [dbo].[Tbl_Ogretmen] ([OgrtId], [OgrtAdSoyad], [OgrtBrans]) VALUES (2, N'Atakan Yılmaz', 5)
INSERT [dbo].[Tbl_Ogretmen] ([OgrtId], [OgrtAdSoyad], [OgrtBrans]) VALUES (3, N'Selim Çınar', 1)
INSERT [dbo].[Tbl_Ogretmen] ([OgrtId], [OgrtAdSoyad], [OgrtBrans]) VALUES (4, N'Berna Meşe', 6)
SET IDENTITY_INSERT [dbo].[Tbl_Ogretmen] OFF
ALTER TABLE [dbo].[Tbl_BasvuruForm]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_BasvuruForm_Tbl_Dersler] FOREIGN KEY([DersId])
REFERENCES [dbo].[Tbl_Dersler] ([DersId])
GO
ALTER TABLE [dbo].[Tbl_BasvuruForm] CHECK CONSTRAINT [FK_Tbl_BasvuruForm_Tbl_Dersler]
GO
ALTER TABLE [dbo].[Tbl_BasvuruForm]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_BasvuruForm_Tbl_Ogrenci] FOREIGN KEY([OgrenciId])
REFERENCES [dbo].[Tbl_Ogrenci] ([OgrId])
GO
ALTER TABLE [dbo].[Tbl_BasvuruForm] CHECK CONSTRAINT [FK_Tbl_BasvuruForm_Tbl_Ogrenci]
GO
ALTER TABLE [dbo].[Tbl_Ogretmen]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Ogretmen_Tbl_Dersler] FOREIGN KEY([OgrtBrans])
REFERENCES [dbo].[Tbl_Dersler] ([DersId])
GO
ALTER TABLE [dbo].[Tbl_Ogretmen] CHECK CONSTRAINT [FK_Tbl_Ogretmen_Tbl_Dersler]
GO
