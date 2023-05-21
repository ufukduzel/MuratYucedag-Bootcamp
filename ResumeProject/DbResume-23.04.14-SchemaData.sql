USE [DbResume]
GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategory](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblContact]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblContact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Subject] [int] NULL,
	[Message] [nvarchar](1000) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_TblContact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProfile]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProfile](
	[ProfileID] [int] IDENTITY(1,1) NOT NULL,
	[ProfileTitle] [nvarchar](max) NULL,
	[ProfileDescription] [nvarchar](max) NULL,
	[Name] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [nvarchar](50) NULL,
	[SocialMedia1] [nvarchar](100) NULL,
	[SocialMedia2] [nvarchar](100) NULL,
	[SocialMedia3] [nvarchar](100) NULL,
	[SocialMedia4] [nvarchar](100) NULL,
 CONSTRAINT [PK_TblProfile] PRIMARY KEY CLUSTERED 
(
	[ProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProject]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProject](
	[ProjectID] [int] IDENTITY(1,1) NOT NULL,
	[ProjectTitle] [nvarchar](200) NULL,
	[ProjectDescription] [nvarchar](500) NULL,
	[ProjectImageUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblProject] PRIMARY KEY CLUSTERED 
(
	[ProjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblService]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblService](
	[ServiceID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceTitle] [nvarchar](100) NULL,
	[ServiceIcon] [nvarchar](100) NULL,
	[ServiceDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_TblService] PRIMARY KEY CLUSTERED 
(
	[ServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblSkill]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSkill](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[SkillTitle] [nvarchar](50) NULL,
	[SkillDescription] [nvarchar](250) NULL,
	[Skillicon] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblSkill_1] PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTechnology]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTechnology](
	[TechnologyID] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyITitle] [nvarchar](50) NULL,
	[TechnologyIValue] [int] NULL,
 CONSTRAINT [PK_TblTechnology] PRIMARY KEY CLUSTERED 
(
	[TechnologyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TblCategory] ON 

INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (1, N'Teşekkürr')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (2, N'Şikayet')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (3, N'Proje Talebi')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (5, N'Arz')
SET IDENTITY_INSERT [dbo].[TblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TblContact] ON 

INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (1, N'Zeynep Yıldız', N'deneme@gmail.com', 1, N'test', CAST(N'2023-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (3, N'Hasan Kaya', N'test@gmail.com', 1, N'merhaba nasılsın', CAST(N'2023-04-11T00:00:00.000' AS DateTime))
INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (4, N'Veli Yıldırım', N'veli@gmail.com', 2, N'selamlar', CAST(N'2023-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (5, N'Cemil Öztürk', N'cemil@gmail.com', 1, N'test deneme', CAST(N'2023-04-12T00:00:00.000' AS DateTime))
INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (6, N'Kemal Yıldız', N'kemal@gmail.com', 3, N'deneme', CAST(N'2023-04-13T00:00:00.000' AS DateTime))
INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (7, N'Ali Çınarlı', N'deneme1@gmail.com', 2, NULL, CAST(N'2023-05-20T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblContact] OFF
GO
SET IDENTITY_INSERT [dbo].[TblProfile] ON 

INSERT [dbo].[TblProfile] ([ProfileID], [ProfileTitle], [ProfileDescription], [Name], [Mail], [Address], [Phone], [SocialMedia1], [SocialMedia2], [SocialMedia3], [SocialMedia4]) VALUES (1, N'Elektronik Mühendisi - Yazılım Geliştirici - Full Stack .Net Developer', N'Merhaba, ben Ufuk, yazılım geliştiriciyim. Asp.Net Core alanında Full Stack olarak Junior seviyesinde proje geliştirmeye devam ediyorum.', N'Ufuk Düzel', N'deneme@gmail.com', N'İstanbul, Türkiye', N'+90 500 300 20 10', N'#', N'#', N'#', N'#')
SET IDENTITY_INSERT [dbo].[TblProfile] OFF
GO
SET IDENTITY_INSERT [dbo].[TblService] ON 

INSERT [dbo].[TblService] ([ServiceID], [ServiceTitle], [ServiceIcon], [ServiceDescription]) VALUES (1, N'Web Development', N'fas fa-chalkboard', N'Asp.Net Core Full Stack Web Development, Mvc Db First ve Code First ile Projeler.')
INSERT [dbo].[TblService] ([ServiceID], [ServiceTitle], [ServiceIcon], [ServiceDescription]) VALUES (2, N'Scrum Master', N'fab fa-app-store', N'Scrum toplantıları için Scrum Master görevi yapabiliyorum, Agile ve Waterfall geliştirme.')
INSERT [dbo].[TblService] ([ServiceID], [ServiceTitle], [ServiceIcon], [ServiceDescription]) VALUES (3, N'Büyük Veri Yönetimi', N'fas fa-camera-retro', N'En az 10 milyondan kayıttan oluşan büyük veri analitiği üzerine çalışmalar.')
SET IDENTITY_INSERT [dbo].[TblService] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSkill] ON 

INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (1, N'Web Geliştirme', N'Asp.Net Mvc ve Core ile Dinamik Web Projeleri Geliştiriyorum.', N'fab fa-wordpress-simple')
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (2, N'Proje Analizi', N'Çeşitli doküman ve araçlarla proje analizi yapabiliyorum.', N'fab fa-css3-alt')
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (3, N'Oyun Geliştirme', N'Unity ile C# dilini kullanarak oyun geliştirebiliyorum.', N'fas fa-chart-line')
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (5, N'Proje Yönetimi', N'Agile ekipte proje geliştirme ve takım liderliği', N'fas fa-headset')
SET IDENTITY_INSERT [dbo].[TblSkill] OFF
GO
SET IDENTITY_INSERT [dbo].[TblTechnology] ON 

INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (1, N'Asp.Net Core', 99)
INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (2, N'C#', 97)
INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (4, N'Docker', 85)
INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (5, N'Dapper Orm', 80)
INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (6, N'Mysql Veri Tabanı', 78)
INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (9, N'PostgreSQL', 75)
INSERT [dbo].[TblTechnology] ([TechnologyID], [TechnologyITitle], [TechnologyIValue]) VALUES (10, N'adadasdas', 11)
SET IDENTITY_INSERT [dbo].[TblTechnology] OFF
GO
ALTER TABLE [dbo].[TblContact]  WITH CHECK ADD  CONSTRAINT [FK_TblContact_TblCategory] FOREIGN KEY([Subject])
REFERENCES [dbo].[TblCategory] ([CategoryID])
GO
ALTER TABLE [dbo].[TblContact] CHECK CONSTRAINT [FK_TblContact_TblCategory]
GO
/****** Object:  StoredProcedure [dbo].[CountProjeTalebi]    Script Date: 21.05.2023 16:35:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[CountProjeTalebi]
As
Select COUNT(*) From TblContact where Subject=(Select CategoryID From TblCategory where CategoryName='Proje Talebi')
GO
