USE [DbResume]
GO
/****** Object:  Table [dbo].[TblContact]    Script Date: 14.04.2023 05:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblContact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[NameSurname] [nvarchar](50) NULL,
	[Mail] [nvarchar](50) NULL,
	[Subject] [nvarchar](50) NULL,
	[Message] [nvarchar](1000) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_TblContact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProfile]    Script Date: 14.04.2023 05:18:24 ******/
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
/****** Object:  Table [dbo].[TblProject]    Script Date: 14.04.2023 05:18:24 ******/
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
/****** Object:  Table [dbo].[TblSkill]    Script Date: 14.04.2023 05:18:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblSkill](
	[SkillID] [int] IDENTITY(1,1) NOT NULL,
	[SkillTitle] [nvarchar](50) NULL,
	[SkillDescription] [nvarchar](250) NULL,
	[Skillicon] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblSkill] PRIMARY KEY CLUSTERED 
(
	[SkillID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTechnology]    Script Date: 14.04.2023 05:18:24 ******/
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
SET IDENTITY_INSERT [dbo].[TblSkill] ON 

INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (1, N'Web Geliştirme', N'Asp.Net Mvc ve Core ile Dinamik Web Projeleri Geliştiriyorum.', NULL)
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (2, N'Proje Analizi', N'Çeşitli doküman ve araçlarla proje analizi yapabiliyorum.', NULL)
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (3, N'Oyun Geliştirme', N'Unity ile C# dilini kullanarak oyun geliştirebiliyorum.', NULL)
INSERT [dbo].[TblSkill] ([SkillID], [SkillTitle], [SkillDescription], [Skillicon]) VALUES (5, N'asdasfwq', N'asfasfwq', N'asfasfwq')
SET IDENTITY_INSERT [dbo].[TblSkill] OFF
GO
