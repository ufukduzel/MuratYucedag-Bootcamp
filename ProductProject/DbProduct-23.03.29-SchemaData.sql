USE [DbProduct]
GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 14.04.2023 05:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCategory](
	[CategoryID] [int] NULL,
	[CategoryName] [varchar](50) NULL,
	[CategoryStatus] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblCustomer]    Script Date: 14.04.2023 05:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblCustomer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [varchar](30) NULL,
	[CustomerSurname] [varchar](30) NULL,
	[CustomerCity] [varchar](20) NULL,
	[CustomerWork] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblDepartment]    Script Date: 14.04.2023 05:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblDepartment](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](50) NULL,
 CONSTRAINT [PK_TblDepartment] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblEmployee]    Script Date: 14.04.2023 05:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblEmployee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](50) NULL,
	[EmployeeSurname] [nvarchar](50) NULL,
	[EmployeeCity] [nvarchar](50) NULL,
	[EmployeeSalary] [decimal](18, 2) NULL,
	[EmployeeDepartment] [int] NULL,
 CONSTRAINT [PK_TblEmployee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblProduct]    Script Date: 14.04.2023 05:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblProduct](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](50) NOT NULL,
	[ProductStock] [smallint] NULL,
	[PurchasePrice] [decimal](18, 2) NULL,
	[SalePrice] [decimal](18, 2) NULL,
	[ProductCategory] [int] NULL,
 CONSTRAINT [PK_TblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblTest]    Script Date: 14.04.2023 05:16:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblTest](
	[TotalStock] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (1, N'Beyaz Eşya', 1)
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (2, N'Bilgisayar', 1)
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (3, N'Küçük Ev Aletleri', 1)
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (4, N'Mobilya', 0)
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (5, N'Telefon', 1)
INSERT [dbo].[TblCategory] ([CategoryID], [CategoryName], [CategoryStatus]) VALUES (6, N'Kırtasiye', 1)
GO
SET IDENTITY_INSERT [dbo].[TblCustomer] ON 

INSERT [dbo].[TblCustomer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerCity], [CustomerWork]) VALUES (1, N'Ali Kaan', N'Yayla', N'İstanbul', N'Mühendis')
INSERT [dbo].[TblCustomer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerCity], [CustomerWork]) VALUES (2, N'Ufuk', N'Düzel', N'Ankara', N'Mühendis')
INSERT [dbo].[TblCustomer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerCity], [CustomerWork]) VALUES (3, N'Emine', N'Alnar', N'Ankara', N'Doktor')
INSERT [dbo].[TblCustomer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerCity], [CustomerWork]) VALUES (4, N'Furkan', N'İnce', N'İstanbul', N'Psikolog')
INSERT [dbo].[TblCustomer] ([CustomerID], [CustomerName], [CustomerSurname], [CustomerCity], [CustomerWork]) VALUES (5, N'Erkan', N'Gündüz', N'Bursa', N'Öğretmen')
SET IDENTITY_INSERT [dbo].[TblCustomer] OFF
GO
SET IDENTITY_INSERT [dbo].[TblProduct] ON 

INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (1, N'Buzdolabı', 75, CAST(11500.00 AS Decimal(18, 2)), CAST(12500.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (2, N'Çamaşır Makinesi', 25, CAST(6500.00 AS Decimal(18, 2)), CAST(7000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (3, N'Bulaşık Makinesi', 198, CAST(4500.00 AS Decimal(18, 2)), CAST(5200.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (4, N'Ütü', 180, CAST(850.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (5, N'Monster Laptop', 50, CAST(15000.00 AS Decimal(18, 2)), CAST(17500.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (6, N'Kilim', 100, CAST(150.00 AS Decimal(18, 2)), CAST(185.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (7, N'Avize', 20, CAST(350.00 AS Decimal(18, 2)), CAST(375.00 AS Decimal(18, 2)), 3)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (8, N'Koltuk', 50, CAST(20000.00 AS Decimal(18, 2)), CAST(22000.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (10, N'Klavye', 98, CAST(250.00 AS Decimal(18, 2)), CAST(325.00 AS Decimal(18, 2)), 2)
INSERT [dbo].[TblProduct] ([ProductID], [ProductName], [ProductStock], [PurchasePrice], [SalePrice], [ProductCategory]) VALUES (11, N'Kettle', 120, CAST(350.00 AS Decimal(18, 2)), CAST(420.00 AS Decimal(18, 2)), 3)
SET IDENTITY_INSERT [dbo].[TblProduct] OFF
GO
INSERT [dbo].[TblTest] ([TotalStock]) VALUES (10)
GO
ALTER TABLE [dbo].[TblEmployee]  WITH CHECK ADD  CONSTRAINT [FK_TblEmployee_TblDepartment] FOREIGN KEY([EmployeeDepartment])
REFERENCES [dbo].[TblDepartment] ([DepartmentID])
GO
ALTER TABLE [dbo].[TblEmployee] CHECK CONSTRAINT [FK_TblEmployee_TblDepartment]
GO
/****** Object:  StoredProcedure [dbo].[Pro1]    Script Date: 14.04.2023 05:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Pro1]
As
Select EmployeeName,EmployeeSurname,DepartmentName From TblEmployee
Inner Join TblDepartment
On TblEmployee.EmployeeDepartment=TblDepartment.DepartmentID
GO
/****** Object:  StoredProcedure [dbo].[Pro2]    Script Date: 14.04.2023 05:16:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Pro2]
As
Select * From TblEmployee where EmployeeDepartment=(Select DepartmentID From TblDepartment where DepartmentName='Yazılım') or EmployeeCity='Bursa'
GO
