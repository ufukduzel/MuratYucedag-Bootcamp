USE [master]
GO
/****** Object:  Database [DbResume]    Script Date: 21.04.2023 23:26:53 ******/
CREATE DATABASE [DbResume]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DbResume', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbResume.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DbResume_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\DbResume_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DbResume] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DbResume].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DbResume] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DbResume] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DbResume] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DbResume] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DbResume] SET ARITHABORT OFF 
GO
ALTER DATABASE [DbResume] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DbResume] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DbResume] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DbResume] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DbResume] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DbResume] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DbResume] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DbResume] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DbResume] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DbResume] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DbResume] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DbResume] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DbResume] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DbResume] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DbResume] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DbResume] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DbResume] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DbResume] SET RECOVERY FULL 
GO
ALTER DATABASE [DbResume] SET  MULTI_USER 
GO
ALTER DATABASE [DbResume] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DbResume] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DbResume] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DbResume] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DbResume] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DbResume] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DbResume', N'ON'
GO
ALTER DATABASE [DbResume] SET QUERY_STORE = OFF
GO
USE [DbResume]
GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 21.04.2023 23:26:53 ******/
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
/****** Object:  Table [dbo].[TblContact]    Script Date: 21.04.2023 23:26:53 ******/
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
/****** Object:  Table [dbo].[TblProfile]    Script Date: 21.04.2023 23:26:53 ******/
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
/****** Object:  Table [dbo].[TblProject]    Script Date: 21.04.2023 23:26:53 ******/
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
/****** Object:  Table [dbo].[TblSkill]    Script Date: 21.04.2023 23:26:53 ******/
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
/****** Object:  Table [dbo].[TblTechnology]    Script Date: 21.04.2023 23:26:53 ******/
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

INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (1, N'Teşekkür')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (2, N'Şikayet')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (3, N'Proje Talebi')
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName]) VALUES (4, N'Destek')
SET IDENTITY_INSERT [dbo].[TblCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[TblContact] ON 

INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (1, N'Zeynep Yıldız', N'deneme@gmail.com', 1, N'test', CAST(N'2023-04-05T00:00:00.000' AS DateTime))
INSERT [dbo].[TblContact] ([ContactID], [NameSurname], [Mail], [Subject], [Message], [Date]) VALUES (2, N'Ali Kayalı', N'test@gmail.com', 3, N'deneme', CAST(N'2023-04-06T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[TblContact] OFF
GO
SET IDENTITY_INSERT [dbo].[TblSkill] ON 

INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (1, N'Web Geliştirme', N'Asp.Net Mvc ve Core ile Dinamik Web Projeleri Geliştiriyorum.', NULL)
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (2, N'Proje Analizi', N'Çeşitli doküman ve araçlarla proje analizi yapabiliyorum.', NULL)
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (3, N'Oyun Geliştirme', N'Unity ile C# dilini kullanarak oyun geliştirebiliyorum.', NULL)
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (5, N'Proje Yönetimi', N'Agile ekipte proje geliştirme ve takım liderliği', N'test')
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
USE [master]
GO
ALTER DATABASE [DbResume] SET  READ_WRITE 
GO
