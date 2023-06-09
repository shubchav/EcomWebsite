USE [ECommerceWebsiteTrail17-1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 5/18/2023 6:06:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CartDetails]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartDetails](
	[CartDetailId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_CartDetails] PRIMARY KEY CLUSTERED 
(
	[CartDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[IsPaymentDone] [bit] NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountDetails]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountDetails](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[DiscountName] [nvarchar](max) NOT NULL,
	[DiscountRate] [float] NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DiscountDetails] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderHistory]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderHistory](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [nvarchar](max) NOT NULL,
	[InvoiceDate] [datetime2](7) NOT NULL,
	[DeliveryDate] [datetime2](7) NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[Qty] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_OrderHistory] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentCards]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentCards](
	[CardId] [int] IDENTITY(1,1) NOT NULL,
	[CardNumber] [nvarchar](max) NOT NULL,
	[ExpiryDate] [nvarchar](max) NOT NULL,
	[CVV] [int] NOT NULL,
 CONSTRAINT [PK_PaymentCards] PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](max) NOT NULL,
	[ProductCode] [nvarchar](max) NOT NULL,
	[ProductImage] [nvarchar](max) NOT NULL,
	[Category] [nvarchar](max) NOT NULL,
	[Brand] [nvarchar](max) NOT NULL,
	[SellingPrice] [decimal](18, 2) NOT NULL,
	[PurchasePrice] [decimal](18, 2) NOT NULL,
	[SellingDate] [datetime2](7) NOT NULL,
	[Stock] [int] NOT NULL,
	[DiscountId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesDetails]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDetails](
	[SaleDetailId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [nvarchar](max) NOT NULL,
	[ProductId] [int] NOT NULL,
	[ProductCode] [nvarchar](max) NOT NULL,
	[SalesQuantity] [int] NOT NULL,
	[NewStock] [int] NOT NULL,
	[SellingPrice] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_SalesDetails] PRIMARY KEY CLUSTERED 
(
	[SaleDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesMasters]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesMasters](
	[SaleMasterId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [nvarchar](max) NOT NULL,
	[UserId] [int] NOT NULL,
	[InvoiceDate] [datetime2](7) NOT NULL,
	[Subtotal] [decimal](18, 2) NOT NULL,
	[DeliveryAddress] [nvarchar](max) NOT NULL,
	[DeliveryZipcode] [nvarchar](max) NOT NULL,
	[DeliveryCountry] [nvarchar](max) NOT NULL,
	[DeliveryState] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_SalesMasters] PRIMARY KEY CLUSTERED 
(
	[SaleMasterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[States]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](max) NOT NULL,
	[CountryId] [int] NOT NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOtps]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOtps](
	[OtpId] [int] IDENTITY(1,1) NOT NULL,
	[OtpName] [nvarchar](max) NOT NULL,
	[CreatedTimeOtp] [datetime2](7) NOT NULL,
	[ExpireTimeOtp] [datetime2](7) NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserOtps] PRIMARY KEY CLUSTERED 
(
	[OtpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 5/18/2023 6:06:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](max) NOT NULL,
	[Lastname] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[UserType] [nvarchar](max) NOT NULL,
	[DOB] [datetime2](7) NOT NULL,
	[Username] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[MobileNumber] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Zipcode] [int] NOT NULL,
	[ProfileImage] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[State] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221017110905_init', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221018051241_init1018', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221019080355_addpaymenttable', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221020042329_changedatatypeofexpirydate', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221026102022_addSalesTable', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221109074543_removeForeigen', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221110033948_addOrderHistoryTable', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221111090032_addUserIdInOrder', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221111115631_addDiscountTable', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221114064424_adddiscountIdInproductt', N'6.0.9')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221116063029_mig21', N'6.0.9')
SET IDENTITY_INSERT [dbo].[CartDetails] ON 

INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (20, 7, 3, 6, 10)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (1019, 7, 3, 6, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2028, 1010, 1006, 6, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2029, 1010, 1006, 6, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2039, 1017, 1009, 5, 2)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2041, 1017, 1009, 2, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2043, 1017, 1009, 2, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2044, 1017, 1009, 4, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (2047, 1020, 1008, 4, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3074, 2023, 1011, 2006, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3112, 2022, 1012, 2008, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3136, 2029, 2012, 2009, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3153, 2036, 2012, 2008, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3159, 2040, 2013, 2008, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3186, 2048, 2013, 2016, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3187, 2049, 2013, 2016, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3188, 2049, 2013, 2016, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3189, 2050, 2013, 2016, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3195, 2053, 2013, 2014, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3204, 2056, 2013, 2006, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3206, 2058, 2013, 2008, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3257, 2074, 2013, 1009, 1)
INSERT [dbo].[CartDetails] ([CartDetailId], [CartId], [UserId], [ProductId], [Quantity]) VALUES (3278, 2079, 2015, 1006, 1)
SET IDENTITY_INSERT [dbo].[CartDetails] OFF
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1, 1, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2, 2, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (7, 3, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (10, 3, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (11, 3, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1010, 1006, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1011, 1007, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1017, 1009, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1018, 1009, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1019, 1008, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1020, 1008, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1021, 1009, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1022, 1009, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1023, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1024, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1025, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1026, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1027, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1028, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1029, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1030, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1031, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1032, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (1033, 1011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2018, 2010, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2019, 2011, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2020, 222, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2021, 1012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2022, 1012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2023, 1011, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2024, 1012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2025, 1012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2026, 1012, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2027, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2028, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2029, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2030, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2031, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2032, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2033, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2034, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2035, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2036, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2037, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2038, 2012, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2039, 2012, 0)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2040, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2041, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2042, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2043, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2044, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2045, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2046, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2047, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2048, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2049, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2050, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2051, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2052, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2053, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2054, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2055, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2056, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2057, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2058, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2059, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2060, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2061, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2062, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2063, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2064, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2065, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2066, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2067, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2068, 2014, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2069, 2014, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2070, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2071, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2072, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2073, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2074, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2075, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2076, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2077, 2013, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2078, 2014, 1)
INSERT [dbo].[Carts] ([CartId], [UserId], [IsPaymentDone]) VALUES (2079, 2015, 0)
SET IDENTITY_INSERT [dbo].[Carts] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (1, N'India')
INSERT [dbo].[Countries] ([CountryId], [CountryName]) VALUES (2, N'America')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[DiscountDetails] ON 

INSERT [dbo].[DiscountDetails] ([DiscountId], [DiscountName], [DiscountRate], [Status]) VALUES (1003, N'Diwali Sales', 12, N'Active')
INSERT [dbo].[DiscountDetails] ([DiscountId], [DiscountName], [DiscountRate], [Status]) VALUES (1004, N'Holi Offer', 10, N'Deactive')
SET IDENTITY_INSERT [dbo].[DiscountDetails] OFF
SET IDENTITY_INSERT [dbo].[OrderHistory] ON 

INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (7, N'-ORD - 081', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (8, N'-ORD - 081', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (12, N'-ORD - 082', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (13, N'-ORD - 082', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (14, N'-ORD - 082', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (15, N'-ORD - 082', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (16, N'-ORD - 082', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (17, N'-ORD - 082', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (18, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (19, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (20, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (21, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (22, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (23, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (24, N'-ORD - 083', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (25, N'-ORD - 084', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (26, N'-ORD - 084', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (33, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (34, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (35, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (36, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (37, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (38, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (39, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (40, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (41, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (42, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (43, N'-ORD - 087', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (44, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (45, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (46, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (47, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (48, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (49, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (50, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (51, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (52, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (53, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (54, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (55, N'-ORD - 088', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (56, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (57, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (58, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (59, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (60, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (61, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (62, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (63, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (64, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (65, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (66, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (67, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (68, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (69, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (70, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (71, N'-ORD - 092', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (72, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (73, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (74, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (75, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (76, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (77, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (78, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (79, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (80, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (81, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (82, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (83, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (84, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (85, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (86, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (87, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (88, N'-ORD - 093', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (89, N'-ORD - 101', CAST(N'2022-11-10T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-20T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (98, N'-ORD - 162', CAST(N'2022-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 3, CAST(1000.00 AS Decimal(18, 2)), 1011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (99, N'-ORD - 162', CAST(N'2022-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 2, CAST(3100.00 AS Decimal(18, 2)), 1011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (100, N'-ORD - 165', CAST(N'2022-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 1011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (101, N'-ORD - 165', CAST(N'2022-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1098, N'-ORD - 173', CAST(N'2022-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2010)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1099, N'-ORD - 173', CAST(N'2022-11-11T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2010)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1100, N'-ORD - 174', CAST(N'2022-11-13T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-23T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1101, N'-ORD - 179', CAST(N'2022-11-14T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1102, N'-ORD - 179', CAST(N'2022-11-14T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1103, N'-ORD - 184', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1104, N'-ORD - 184', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1105, N'-ORD - 185', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1106, N'-ORD - 185', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1107, N'-ORD - 185', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1108, N'-ORD - 189', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1109, N'-ORD - 190', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1110, N'-ORD - 192', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2011)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1111, N'-ORD - 198', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1112, N'-ORD - 200', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1113, N'-ORD - 203', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1115, N'-ORD - 206', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1116, N'-ORD - 206', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1117, N'-ORD - 206', CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-25T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1118, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1119, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 1012)
GO
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1120, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\tv.jpg', N'TV', 1, CAST(13200.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1121, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1122, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1123, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1124, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1125, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\tv.jpg', N'TV', 1, CAST(13200.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1126, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1127, N'-ORD - 492', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1128, N'-ORD - 493', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1129, N'-ORD - 493', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1130, N'-ORD - 493', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\tv.jpg', N'TV', 1, CAST(13200.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1131, N'-ORD - 493', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1132, N'-ORD - 493', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1133, N'-ORD - 493', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1134, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1135, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1136, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\tv.jpg', N'TV', 1, CAST(13200.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1137, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1138, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1139, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1140, N'-ORD - 494', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1141, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1142, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1143, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\tv.jpg', N'TV', 1, CAST(13200.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1144, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1145, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1146, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1147, N'-ORD - 495', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 1012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1149, N'-ORD - 598', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1150, N'-ORD - 598', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1151, N'-ORD - 634', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\Fan.jpg', N'Fan', 1, CAST(880.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1152, N'-ORD - 634', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1153, N'-ORD - 634', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1154, N'-ORD - 634', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\Fan.jpg', N'Fan', 1, CAST(880.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1155, N'-ORD - 634', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1156, N'-ORD - 634', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1157, N'-ORD - 635', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\Fan.jpg', N'Fan', 1, CAST(880.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1158, N'-ORD - 635', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1159, N'-ORD - 635', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1160, N'-ORD - 635', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1161, N'-ORD - 636', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\Fan.jpg', N'Fan', 1, CAST(880.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1162, N'-ORD - 636', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1163, N'-ORD - 636', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1164, N'-ORD - 636', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1165, N'-ORD - 636', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1166, N'-ORD - 638', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\Fan.jpg', N'Fan', 1, CAST(880.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1167, N'-ORD - 638', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1168, N'-ORD - 638', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1169, N'-ORD - 638', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1170, N'-ORD - 638', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Shooping Chair', 1, CAST(3100.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1171, N'-ORD - 638', CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-26T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'SmartWatch', 1, CAST(999.00 AS Decimal(18, 2)), 2012)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1188, N'-ORD - 746', CAST(N'2022-11-18T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-28T00:00:00.0000000' AS DateTime2), N'C:\fakepath\tv.jpg', N'TV', 2, CAST(26400.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1189, N'-ORD - 770', CAST(N'2022-11-19T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-29T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1190, N'-ORD - 790', CAST(N'2022-11-19T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-29T00:00:00.0000000' AS DateTime2), N'C:\fakepath\fryPan.jpg', N'Cooking Pan', 1, CAST(1000.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1191, N'-ORD - 795', CAST(N'2022-11-19T00:00:00.0000000' AS DateTime2), CAST(N'2022-11-29T00:00:00.0000000' AS DateTime2), N'C:\fakepath\camera.jpg', N'Camera', 1, CAST(12000.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1196, N'-ORD - 829', CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1198, N'-ORD - 835', CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), N'C:\fakepath\keyboard.jpg', N'KeyBoard', 1, CAST(1200.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1200, N'-ORD - 843', CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), N'C:\fakepath\mobile.jpg', N'Mobile', 1, CAST(12000.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1209, N'-ORD - 042', CAST(N'2022-11-21T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-01T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2014)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1217, N'-ORD - 021', CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-02T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Watch', 1, CAST(2000.00 AS Decimal(18, 2)), 2013)
INSERT [dbo].[OrderHistory] ([OrderId], [InvoiceNumber], [InvoiceDate], [DeliveryDate], [ProductImage], [ProductName], [Qty], [Price], [UserId]) VALUES (1218, N'-ORD - 055', CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(N'2022-12-04T00:00:00.0000000' AS DateTime2), N'C:\fakepath\photography-product-download.jpg', N'Computer', 1, CAST(1000.00 AS Decimal(18, 2)), 2014)
SET IDENTITY_INSERT [dbo].[OrderHistory] OFF
SET IDENTITY_INSERT [dbo].[PaymentCards] ON 

INSERT [dbo].[PaymentCards] ([CardId], [CardNumber], [ExpiryDate], [CVV]) VALUES (2, N'1234123412351236', N'07/26', 123)
SET IDENTITY_INSERT [dbo].[PaymentCards] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (1006, N'Computer', N'bc12dd', N'C:\fakepath\photography-product-download.jpg', N'sound system', N'oppo', CAST(1000.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(N'2022-11-02T00:00:00.0000000' AS DateTime2), 10, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (1008, N'Watch', N'axbc33', N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Electronic', N'Realme', CAST(2000.00 AS Decimal(18, 2)), CAST(1800.00 AS Decimal(18, 2)), CAST(N'2022-11-01T00:00:00.0000000' AS DateTime2), 7, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (1009, N'Shooping Chair', N'bc12dd', N'C:\fakepath\pexels-suzy-hazelwood-2536965.jpg', N'Home Appliences', N'Tata Steel', CAST(3100.00 AS Decimal(18, 2)), CAST(3020.00 AS Decimal(18, 2)), CAST(N'2022-10-05T00:00:00.0000000' AS DateTime2), 3, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (1010, N'SmartWatch', N'11wtd4', N'C:\fakepath\photo-1523275335684-37898b6baf30.jpg', N'Electronics ', N'Boat', CAST(999.00 AS Decimal(18, 2)), CAST(899.00 AS Decimal(18, 2)), CAST(N'2022-11-03T00:00:00.0000000' AS DateTime2), 10, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (2006, N'KeyBoard', N'123abc', N'C:\fakepath\keyboard.jpg', N'PC Appliences', N'HP', CAST(1200.00 AS Decimal(18, 2)), CAST(1100.00 AS Decimal(18, 2)), CAST(N'2022-11-02T00:00:00.0000000' AS DateTime2), 4, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (2008, N'Mobile', N'6486rr', N'C:\fakepath\mobile.jpg', N'Electronics ', N'Realme', CAST(12000.00 AS Decimal(18, 2)), CAST(11000.00 AS Decimal(18, 2)), CAST(N'2022-11-14T00:00:00.0000000' AS DateTime2), 2, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (2010, N'TV', N'123fgt', N'C:\fakepath\tv.jpg', N'Telivision', N'LG', CAST(13200.00 AS Decimal(18, 2)), CAST(15000.00 AS Decimal(18, 2)), CAST(N'2022-11-15T00:00:00.0000000' AS DateTime2), 8, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (2014, N'Cooking Pan', N'rty789', N'C:\fakepath\fryPan.jpg', N'Cooking', N'Hitech', CAST(1000.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(N'2022-11-16T00:00:00.0000000' AS DateTime2), 9, 0)
INSERT [dbo].[Products] ([ProductId], [ProductName], [ProductCode], [ProductImage], [Category], [Brand], [SellingPrice], [PurchasePrice], [SellingDate], [Stock], [DiscountId]) VALUES (2016, N'Camera', N'wer456', N'C:\fakepath\camera.jpg', N'Electronics ', N'Nikon', CAST(12000.00 AS Decimal(18, 2)), CAST(11000.00 AS Decimal(18, 2)), CAST(N'2022-11-17T00:00:00.0000000' AS DateTime2), 7, 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[SalesDetails] ON 

INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1, N'-ORD - 068', 4, N'11wtd4', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (2, N'-ORD - 072', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1004, N'-ORD - 179', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1005, N'-ORD - 179', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1006, N'-ORD - 200', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1007, N'-ORD - 203', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1008, N'-ORD - 206', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1009, N'-ORD - 206', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1010, N'-ORD - 492', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1011, N'-ORD - 492', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1012, N'-ORD - 492', 2010, N'123fgt', 1, 9, CAST(13200.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1013, N'-ORD - 492', 2008, N'6486rr', 1, 4, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1014, N'-ORD - 492', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1015, N'-ORD - 492', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1016, N'-ORD - 492', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1017, N'-ORD - 492', 2010, N'123fgt', 1, 9, CAST(13200.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1018, N'-ORD - 492', 2008, N'6486rr', 1, 4, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1019, N'-ORD - 492', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1020, N'-ORD - 493', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1021, N'-ORD - 494', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1022, N'-ORD - 495', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1023, N'-ORD - 556', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1024, N'-ORD - 598', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1025, N'-ORD - 598', 1010, N'11wtd4', 1, 9, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1026, N'-ORD - 634', 2009, N'Fan123', 1, 4, CAST(880.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1027, N'-ORD - 634', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1028, N'-ORD - 634', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1029, N'-ORD - 634', 2009, N'Fan123', 1, 4, CAST(880.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1030, N'-ORD - 634', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1031, N'-ORD - 634', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1032, N'-ORD - 635', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1033, N'-ORD - 636', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1034, N'-ORD - 638', 1010, N'11wtd4', 1, 9, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1035, N'-ORD - 651', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1036, N'-ORD - 651', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1037, N'-ORD - 662', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1038, N'-ORD - 668', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1039, N'-ORD - 668', 1008, N'axbc33', 2, 8, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1040, N'-ORD - 678', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1041, N'-ORD - 680', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1042, N'-ORD - 682', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1043, N'-ORD - 682', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1044, N'-ORD - 702', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1045, N'-ORD - 706', 1009, N'bc12dd', 1, 4, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1046, N'-ORD - 709', 1006, N'bc12dd', 1, 1, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1047, N'-ORD - 711', 2016, N'wer456', 1, 9, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1048, N'-ORD - 716', 1008, N'axbc33', 2, 8, CAST(4000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1049, N'-ORD - 735', 1008, N'axbc33', 3, 7, CAST(6000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1050, N'-ORD - 746', 2010, N'123fgt', 2, 8, CAST(26400.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1051, N'-ORD - 770', 1008, N'axbc33', 1, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1052, N'-ORD - 790', 2014, N'rty789', 1, 9, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1053, N'-ORD - 795', 2016, N'wer456', 1, 7, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1054, N'-ORD - 798', 2016, N'wer456', 1, 6, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1055, N'-ORD - 801', 1008, N'axbc33', 1, 8, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1056, N'-ORD - 803', 1008, N'axbc33', 1, 7, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1057, N'-ORD - 811', 2014, N'rty789', 1, 8, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1058, N'-ORD - 829', 1006, N'bc12dd', 1, 11, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1059, N'-ORD - 832', 1008, N'axbc33', 1, 8, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1060, N'-ORD - 835', 2006, N'123abc', 1, 4, CAST(1200.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1061, N'-ORD - 839', 1008, N'axbc33', 1, 7, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1062, N'-ORD - 843', 2008, N'6486rr', 1, 2, CAST(12000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1063, N'-ORD - 847', 1008, N'axbc33', 1, 6, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1064, N'-ORD - 851', 1008, N'axbc33', 1, 5, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1065, N'-ORD - 875', 1008, N'axbc33', 1, 8, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1066, N'-ORD - 878', 1006, N'bc12dd', 2, 9, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1067, N'-ORD - 882', 1010, N'11wtd4', 1, 9, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1068, N'-ORD - 886', 1010, N'11wtd4', 1, 8, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1069, N'-ORD - 888', 1008, N'axbc33', 1, 7, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1070, N'-ORD - 901', 1008, N'axbc33', 1, 6, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1071, N'-ORD - 042', 1008, N'axbc33', 1, 6, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1072, N'-ORD - 0100', 1006, N'bc12dd', 1, 10, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1073, N'-ORD - 103', 1010, N'11wtd4', 1, 9, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1074, N'-ORD - 001', 1010, N'11wtd4', 1, 8, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1075, N'-ORD - 004', 1010, N'11wtd4', 1, 7, CAST(999.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1076, N'-ORD - 0010', 1008, N'axbc33', 1, 7, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1077, N'-ORD - 012', 1009, N'bc12dd', 1, 2, CAST(3100.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1078, N'-ORD - 014', 1006, N'bc12dd', 1, 10, CAST(1000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1079, N'-ORD - 021', 1008, N'axbc33', 1, 7, CAST(2000.00 AS Decimal(18, 2)))
INSERT [dbo].[SalesDetails] ([SaleDetailId], [InvoiceId], [ProductId], [ProductCode], [SalesQuantity], [NewStock], [SellingPrice]) VALUES (1080, N'-ORD - 055', 1006, N'bc12dd', 1, 10, CAST(1000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[SalesDetails] OFF
SET IDENTITY_INSERT [dbo].[SalesMasters] ON 

INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3917, N'-ORD - 001', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3918, N'-ORD - 001', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3919, N'-ORD - 003', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3920, N'-ORD - 004', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3921, N'-ORD - 004', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3922, N'-ORD - 006', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3923, N'-ORD - 007', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3924, N'-ORD - 007', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3925, N'-ORD - 009', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3926, N'-ORD - 0010', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3927, N'-ORD - 011', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3928, N'-ORD - 012', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(3100.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3929, N'-ORD - 013', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3930, N'-ORD - 014', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3931, N'-ORD - 015', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3932, N'-ORD - 016', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3933, N'-ORD - 017', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(4000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3934, N'-ORD - 018', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3935, N'-ORD - 019', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3936, N'-ORD - 020', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3937, N'-ORD - 021', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3938, N'-ORD - 022', 2013, CAST(N'2022-11-22T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Cincinati ohio', N'431721', N'2', N'California')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3939, N'-ORD - 023', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3940, N'-ORD - 024', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3941, N'-ORD - 025', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3942, N'-ORD - 026', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3943, N'-ORD - 027', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3944, N'-ORD - 028', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3945, N'-ORD - 029', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3946, N'-ORD - 030', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3947, N'-ORD - 031', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3948, N'-ORD - 032', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3949, N'-ORD - 033', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3950, N'-ORD - 034', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3951, N'-ORD - 035', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3952, N'-ORD - 036', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(999.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3953, N'-ORD - 037', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3954, N'-ORD - 038', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3955, N'-ORD - 039', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(3000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3956, N'-ORD - 040', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(4000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3957, N'-ORD - 041', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(3000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3958, N'-ORD - 042', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3959, N'-ORD - 043', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3960, N'-ORD - 044', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3961, N'-ORD - 045', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3962, N'-ORD - 046', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(3000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3963, N'-ORD - 047', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3964, N'-ORD - 048', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3965, N'-ORD - 049', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3966, N'-ORD - 050', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3967, N'-ORD - 051', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3968, N'-ORD - 052', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3969, N'-ORD - 053', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3970, N'-ORD - 054', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(3000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3971, N'-ORD - 055', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3972, N'-ORD - 056', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3973, N'-ORD - 057', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3974, N'-ORD - 058', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(4000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3975, N'-ORD - 059', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3976, N'-ORD - 060', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3977, N'-ORD - 061', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3978, N'-ORD - 062', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3979, N'-ORD - 063', 2014, CAST(N'2022-11-24T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)), N'Talegao', N'156416', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3980, N'-ORD - 064', 2015, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2), CAST(2000.00 AS Decimal(18, 2)), N'Mahur', N'432555', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3981, N'-ORD - 065', 2015, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2), CAST(3000.00 AS Decimal(18, 2)), N'Mahur', N'432555', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3982, N'-ORD - 066', 2015, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2), CAST(5000.00 AS Decimal(18, 2)), N'Mahur', N'432555', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3983, N'-ORD - 067', 2015, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2), CAST(3000.00 AS Decimal(18, 2)), N'Mahur', N'432555', N'1', N'Maharshtra')
INSERT [dbo].[SalesMasters] ([SaleMasterId], [InvoiceId], [UserId], [InvoiceDate], [Subtotal], [DeliveryAddress], [DeliveryZipcode], [DeliveryCountry], [DeliveryState]) VALUES (3984, N'-ORD - 068', 2015, CAST(N'2023-01-23T00:00:00.0000000' AS DateTime2), CAST(1000.00 AS Decimal(18, 2)), N'Mahur', N'432555', N'1', N'Maharshtra')
SET IDENTITY_INSERT [dbo].[SalesMasters] OFF
SET IDENTITY_INSERT [dbo].[States] ON 

INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (1, N'Goa', 1)
INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (2, N'Maharshtra', 1)
INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (3, N'Punjab', 1)
INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (4, N'Hariyana', 1)
INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (5, N'California', 2)
INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (6, N'Texas', 2)
INSERT [dbo].[States] ([StateId], [StateName], [CountryId]) VALUES (7, N'Hawaii', 2)
SET IDENTITY_INSERT [dbo].[States] OFF
SET IDENTITY_INSERT [dbo].[UserOtps] ON 

INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3052, N'005733', CAST(N'2022-11-18T11:05:22.0418399' AS DateTime2), CAST(N'2022-11-18T11:15:22.0418399' AS DateTime2), 2013)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3053, N'696822', CAST(N'2022-11-19T11:45:46.0083221' AS DateTime2), CAST(N'2022-11-19T11:55:46.0083221' AS DateTime2), 1010)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3054, N'862624', CAST(N'2022-11-19T11:50:04.4012389' AS DateTime2), CAST(N'2022-11-19T12:00:04.4012389' AS DateTime2), 2013)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3055, N'890261', CAST(N'2022-11-21T15:02:37.5542367' AS DateTime2), CAST(N'2022-11-21T15:12:37.5542367' AS DateTime2), 1010)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3056, N'159342', CAST(N'2022-11-21T15:08:45.3532804' AS DateTime2), CAST(N'2022-11-21T15:18:45.3532804' AS DateTime2), 1010)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3057, N'321471', CAST(N'2022-11-21T15:10:53.3401188' AS DateTime2), CAST(N'2022-11-21T15:20:53.3401188' AS DateTime2), 2013)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3058, N'917902', CAST(N'2022-11-21T15:19:20.9016127' AS DateTime2), CAST(N'2022-11-21T15:29:20.9016127' AS DateTime2), 1010)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3059, N'184900', CAST(N'2022-11-21T17:29:21.6468462' AS DateTime2), CAST(N'2022-11-21T17:39:21.6468462' AS DateTime2), 2013)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3060, N'936024', CAST(N'2022-11-21T17:31:39.6029418' AS DateTime2), CAST(N'2022-11-21T17:41:39.6029418' AS DateTime2), 2013)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3061, N'212047', CAST(N'2022-11-21T17:43:27.0578760' AS DateTime2), CAST(N'2022-11-21T17:53:27.0578760' AS DateTime2), 2014)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3062, N'592038', CAST(N'2022-11-21T17:56:00.9830408' AS DateTime2), CAST(N'2022-11-21T18:06:00.9830408' AS DateTime2), 2014)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3063, N'908445', CAST(N'2022-11-21T17:56:01.4569823' AS DateTime2), CAST(N'2022-11-21T18:06:01.4569823' AS DateTime2), 2014)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3064, N'114177', CAST(N'2022-11-22T10:50:57.8615068' AS DateTime2), CAST(N'2022-11-22T11:00:57.8615068' AS DateTime2), 2013)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3065, N'101998', CAST(N'2022-11-22T18:26:02.0198856' AS DateTime2), CAST(N'2022-11-22T18:36:02.0198856' AS DateTime2), 1010)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3066, N'162590', CAST(N'2022-11-24T10:09:38.5695922' AS DateTime2), CAST(N'2022-11-24T10:19:38.5695922' AS DateTime2), 2014)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3067, N'069001', CAST(N'2023-01-23T16:45:29.8295747' AS DateTime2), CAST(N'2023-01-23T16:55:29.8295747' AS DateTime2), 2015)
INSERT [dbo].[UserOtps] ([OtpId], [OtpName], [CreatedTimeOtp], [ExpireTimeOtp], [UserId]) VALUES (3068, N'973450', CAST(N'2023-01-23T16:45:31.0593303' AS DateTime2), CAST(N'2023-01-23T16:55:31.0593303' AS DateTime2), 2015)
SET IDENTITY_INSERT [dbo].[UserOtps] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1, N'Shubham', N'Chavan', N'shubhamchavan272000@gmail.com', N'Admin', CAST(N'1990-02-07T00:00:00.0000000' AS DateTime2), N'oNMguoKCQSMXSTrEAoTXODMliVl43Dh5ojhfl4jRZ94=', N'1234', N'7083908592', N'Mahur', 432555, N'C:\fakepath\Screenshot (11).png', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2, N'Mukul', N'Chavan', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2000-10-18T00:00:00.0000000' AS DateTime2), N'eOBZN+jSyQccAatv/izxIXqVfnOBsd6hZXi/X81VqZk=', N'OS0i9pNn+pN/8uP/nuAq6g==', N'7083908592', N'Mahur', 432555, N'C:\fakepath\Screenshot (11).png', N'1', N'Punjab')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (3, N'Yogesh', N'Ade', N'chavhanshubham16@gmail.com', N'Customer', CAST(N'2000-10-01T00:00:00.0000000' AS DateTime2), N'fDYK+Jq4nT/WfQ/DY4jBtw==', N'f60FDpw3oJLmhuGSS4xKEw==', N'7083908592', N'Mahur', 432555, N'C:\fakepath\Screenshot (6).png', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (4, N'Shivam', N'Chavan', N'shivam@gmail.com', N'Customer', CAST(N'2001-10-27T08:03:09.8480000' AS DateTime2), N'gUA9FSD/XYc6fcpkcaxS6w==', N'shivam123', N'1234567896', N'Nanded', 456789, N'C:\fakepath\Screenshot (11).png', N'India', N'Goa')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (5, N'Sai', N'Ade', N'shubhamchavan272000@gmail.com', N'Admin', CAST(N'2000-10-07T00:00:00.0000000' AS DateTime2), N'qhlLfRz/xKt3G40Guzyc7g==', N'Or76YZgJZN7JktFjPth9mw==', N'7083908592', N'Mahur', 123456, N'C:\fakepath\Screenshot (10).png', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (6, N'Hemsingh', N'Chavan', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2008-05-03T00:00:00.0000000' AS DateTime2), N'1qumWqK19jJJgoX6Q4qSFfSvoQ3Mna5Jqkfp/A9pXOc=', N'NoaudYHy/J9hcjPICdz3pA==', N'7083908592', N'Papalwadi', 431721, N'C:\fakepath\Screenshot (11).png', N'1', N'Punjab')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1006, N'Badal', N'Chavan', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2005-01-13T00:00:00.0000000' AS DateTime2), N'FFzqgY5BU8eSHpmKWXSo9u+0vFfHvHV4yjgFW+Dfk6o=', N'lKLgdlO3TYMMjiYstsSvgA==', N'7083908592', N'Papalwadi', 432555, N'C:\fakepath\Screenshot (11).png', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1007, N'Shree', N'Ram', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2011-06-23T00:00:00.0000000' AS DateTime2), N'BzkwjezcfMDEbH4CozNJow==', N'BBaAqynFhNuUq2H2WrTxUw==', N'7083908592', N'Mahur', 432555, N'C:\fakepath\Screenshot (11).png', N'1', N'Hariyana')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1008, N'Saurabh', N'Pande', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2000-02-03T00:00:00.0000000' AS DateTime2), N'VbJLPB3TuRIPbb9CI9VNpQ==', N'4J9VP1OIGFFjWsVdTVFf8Q==', N'7083908592', N'Nagpur', 431721, N'C:\fakepath\Screenshot (6).png', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1009, N'Krishna', N'Chavan', N'krishna123@gmail.com', N'Customer', CAST(N'2000-05-16T00:00:00.0000000' AS DateTime2), N'dOub1jqjLrVakZnfGdnQH+gFzfRW901p4Nni3nBG8tI=', N'bvTcwQmfU8CD80nGngboSw==', N'7083908592', N'Amravati', 431721, N'C:\fakepath\Screenshot (7).png', N'1', N'Punjab')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1010, N'Narayan', N'Rathod', N'narayan123@gmail.com', N'Admin', CAST(N'2015-06-03T00:00:00.0000000' AS DateTime2), N'H7Rs1579qmNYssv3vEtg8kfD2gRes+VVGFdEeP6EFUk=', N'5tVKnPpz7AtgbaweBEbSdg==', N'7083908592', N'Ashta', 432555, N'C:\fakepath\images.jpg', N'1', N'Punjab')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1011, N'Shailesh', N'Badre', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2000-08-27T00:00:00.0000000' AS DateTime2), N'VLcGI6ycEdirbkpbuffP5g==', N'zJw51FizjshIQy52X2z2Tw==', N'7083908592', N'Amravati', 402261, N'C:\fakepath\photography-product-download.jpg', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (1012, N'Rameshwar', N'Rathod', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2008-06-03T00:00:00.0000000' AS DateTime2), N'w//m/kl2FxY/qhqlBs/7OT49/vroQThyvKDzbmoUER0=', N'vu0MNBxZNf234gOFwqaOXA==', N'7083908592', N'Lakhmapur', 402261, N'C:\fakepath\photo-1608155686393-8fdd966d784d.jpg', N'2', N'California')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2010, N'Saurabh', N'Pathak', N'testdfiresponse@gmail.com', N'Customer', CAST(N'1999-02-11T00:00:00.0000000' AS DateTime2), N'54mbkPgOODAyr9LwIK3y4iqrvdG1xWHD3S2osFDUmGs=', N'OoOV+vqAGuuoAde52JvbWQ==', N'7083908592', N'Amravti', 444607, N'C:\fakepath\images.jpg', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2011, N'Gopal', N'Surose', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2000-09-01T00:00:00.0000000' AS DateTime2), N'gK33S4g0TTsBTICAKGGZBlx6FHSrT3wtV294qtC0xlY=', N'hLgkek6RFNUw1S2YQQjDDw==', N'7083908592', N'Latur', 431721, N'C:\fakepath\photo-1608155686393-8fdd966d784d.jpg', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2012, N'Rancho', N'Chachad', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2008-02-03T00:00:00.0000000' AS DateTime2), N'xKfZs2u8L2HQdiY2IJFJpkmkrMKKOjqO/z7MSVHL1cw=', N'B9YybgSZxzZswc2sK+x/3w==', N'7083908592', N'Mahur', 431721, N'C:\fakepath\photo-1608155686393-8fdd966d784d.jpg', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2013, N'Jon', N'Moxely', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'1999-01-11T00:00:00.0000000' AS DateTime2), N'dkdzz9mATNKMy7cy33XjnGUYYd4mUDrb2imXywOw4AE=', N'3Bz3LEwfAMIxYHEQidnOXw==', N'7083908592', N'Cincinati ohio', 431721, N'C:\fakepath\images.jpg', N'2', N'California')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2014, N'Akshay', N'Khandekar', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2000-11-03T00:00:00.0000000' AS DateTime2), N'g1/1rAyOmKR/EWQwCO6IIO9nXHJ3glIwFiRmbQq847M=', N'nb9YsITYQBUbScYTxTkmkw==', N'7083908592', N'Talegao', 156416, N'C:\fakepath\images.jpg', N'1', N'Maharshtra')
INSERT [dbo].[Users] ([UserId], [Firstname], [Lastname], [Email], [UserType], [DOB], [Username], [Password], [MobileNumber], [Address], [Zipcode], [ProfileImage], [Country], [State]) VALUES (2015, N'Mukul', N'Sharma', N'shubhamchavan272000@gmail.com', N'Customer', CAST(N'2022-11-17T00:00:00.0000000' AS DateTime2), N'h/Al00X8xrRfai41SlqP5WZXIQb0NoQuDSogvVv4eOk=', N'qzDidQICtzk3a4DF6lPvIg==', N'7083908592', N'Mahur', 432555, N'C:\fakepath\Screenshot (65).png', N'1', N'Maharshtra')
SET IDENTITY_INSERT [dbo].[Users] OFF
ALTER TABLE [dbo].[OrderHistory] ADD  DEFAULT ((0)) FOR [UserId]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [DiscountId]
GO
ALTER TABLE [dbo].[States]  WITH CHECK ADD  CONSTRAINT [FK_States_Countries_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countries] ([CountryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[States] CHECK CONSTRAINT [FK_States_Countries_CountryId]
GO
ALTER TABLE [dbo].[UserOtps]  WITH CHECK ADD  CONSTRAINT [FK_UserOtps_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserOtps] CHECK CONSTRAINT [FK_UserOtps_Users_UserId]
GO
