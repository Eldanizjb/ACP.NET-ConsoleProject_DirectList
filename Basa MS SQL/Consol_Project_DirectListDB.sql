USE [Consol_Project_DirectListDB]
GO
/****** Object:  Table [dbo].[AdministrationToRestaurant]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdministrationToRestaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantAdministrationId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_AdministrationToRestaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
	[MainImage] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Surname] [nvarchar](250) NULL,
	[CreateDate] [datetime2](7) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Review] [nvarchar](1000) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banner]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banner](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Home] [nvarchar](50) NULL,
	[Suptitle] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Page] [nvarchar](100) NULL,
	[Info] [nvarchar](250) NULL,
 CONSTRAINT [PK_Banner] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blog]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainImage] [nvarchar](250) NULL,
	[Title] [nvarchar](250) NULL,
	[Text] [ntext] NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[CustomUserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Blog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comenter]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comenter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainImage] [nvarchar](250) NULL,
	[Name] [nvarchar](250) NULL,
	[Surname] [nvarchar](250) NULL,
	[Fullname] [nvarchar](250) NULL,
	[Email] [nvarchar](250) NULL,
	[Content] [nvarchar](1000) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comenter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainImage] [nvarchar](250) NULL,
	[Name] [nvarchar](100) NULL,
	[Surname] [nvarchar](100) NULL,
	[Email] [nvarchar](250) NULL,
	[Subject] [nvarchar](500) NULL,
	[Content] [nvarchar](1000) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[CommentId] [int] NOT NULL,
	[ComenterId] [int] NOT NULL,
	[BlogId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactPhoneToRestaurant]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactPhoneToRestaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantContactPhoneId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_ContactPhoneToRestaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureToRestaurant]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureToRestaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantFeaturesId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_FeatureToRestaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuToRestaurant]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuToRestaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantMenuId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_MenuToRestaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[Text] [ntext] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[GuestCount] [tinyint] NOT NULL,
	[Surname] [nvarchar](30) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[IdentityCard] [nvarchar](20) NULL,
	[Phone] [nvarchar](30) NULL,
	[GuestId] [int] NULL,
	[RestaurantId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Image] [nvarchar](100) NULL,
	[SmallImage] [nvarchar](250) NULL,
	[Icon] [nvarchar](100) NULL,
	[Adresses] [nvarchar](250) NULL,
	[Order] [nvarchar](50) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[About] [ntext] NULL,
	[Capacity] [smallint] NOT NULL,
	[ClosingTime] [datetime2](7) NOT NULL,
	[Location] [nvarchar](500) NULL,
	[Locationlink] [nvarchar](2000) NULL,
	[OpeningTime] [datetime2](7) NOT NULL,
	[RestaurantCategoryId] [int] NULL,
	[Website] [nvarchar](250) NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantAdministration]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantAdministration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainImage] [nvarchar](250) NULL,
	[Fullname] [nvarchar](250) NULL,
	[Phone] [nvarchar](30) NULL,
	[Logins] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_RestaurantAdministration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantCategory]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_RestaurantCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantContactPhone]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantContactPhone](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_RestaurantContactPhone] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantFeatures]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantFeatures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_RestaurantFeatures] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantMenu]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantMenu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Detail] [nvarchar](500) NULL,
	[Price] [money] NOT NULL,
 CONSTRAINT [PK_RestaurantMenu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantTag]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RestaurantTag](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_RestaurantTag] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Setting]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Setting](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](100) NULL,
	[SiteInfo] [nvarchar](500) NULL,
	[Adresses] [nvarchar](500) NULL,
	[Phone] [nvarchar](30) NULL,
	[Email] [nvarchar](100) NULL,
	[Image] [nvarchar](250) NULL,
	[Qoal] [nvarchar](500) NULL,
	[ContactInfo] [nvarchar](500) NULL,
 CONSTRAINT [PK_Setting] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sosial]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sosial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[Color] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sosial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagToRestaurant]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagToRestaurant](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RestaurantTagId] [int] NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_TagToRestaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagToTeamSosial]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagToTeamSosial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TeamId] [int] NOT NULL,
	[TeamSosialId] [int] NOT NULL,
 CONSTRAINT [PK_TagToTeamSosial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Fullname] [nvarchar](100) NULL,
	[Position] [nvarchar](100) NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeamSosial]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeamSosial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
	[TeamId] [int] NULL,
 CONSTRAINT [PK_TeamSosial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacation]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vacation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](500) NULL,
 CONSTRAINT [PK_Vacation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Working]    Script Date: 1/5/2022 3:43:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Working](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Num] [nvarchar](15) NULL,
	[Icon] [nvarchar](100) NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](500) NULL,
	[Text] [ntext] NULL,
 CONSTRAINT [PK_Working] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AdministrationToRestaurant] ON 

INSERT [dbo].[AdministrationToRestaurant] ([Id], [RestaurantAdministrationId], [RestaurantId]) VALUES (3, 1, 4)
INSERT [dbo].[AdministrationToRestaurant] ([Id], [RestaurantAdministrationId], [RestaurantId]) VALUES (4, 2, 5)
INSERT [dbo].[AdministrationToRestaurant] ([Id], [RestaurantAdministrationId], [RestaurantId]) VALUES (5, 3, 1)
SET IDENTITY_INSERT [dbo].[AdministrationToRestaurant] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b4f29a52-63a2-407f-b6aa-d09ca2f06e57', N'Moderator', N'MODERATOR', N'9f288b02-4c3a-4d26-9bc3-8936fcf175eb')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'df9d0a04-4f2c-40a5-b958-3acf684ef78e', N'Customer', N'CUSTOMER', N'3e61204d-3d6b-4941-b7c3-2981fdb617de')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a2b1c89d-db45-4fd2-a06a-c19ec25b1b3b', N'b4f29a52-63a2-407f-b6aa-d09ca2f06e57')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [MainImage], [Name], [Surname], [CreateDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Review]) VALUES (N'a2b1c89d-db45-4fd2-a06a-c19ec25b1b3b', N'CustomUser', NULL, N'Eldaniz', N'Bashirov', CAST(N'2022-01-04T23:22:22.2141526' AS DateTime2), N'eldanizjb@code.edu.az', N'ELDANIZJB@CODE.EDU.AZ', N'eldanizjb@code.edu.az', N'ELDANIZJB@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEBglY70BpXtME7UJ4LDNhfIxvnw2g/9U37AeJZejhrscyTedRysgfg4NHRK/xF6wYA==', N'AH2Q3CEFQHW74DOYDHRI4FSKNRTQFHD3', N'b8f6a76f-4900-4e77-87fc-a5675b40d2c1', NULL, 0, 0, NULL, 1, 0, NULL)
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (1, NULL, N'Expolore top-rated attractions, activities and more', N'Find Nearby Attractions', N'Home', N'Find Nearby Attractions')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (2, N'Home', N'Explore New Places', N'List Full Width', N'Listings', N'List Full Width')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (3, N'Home', N'Explore New Places', N'Dingloy Place', N'Restaurant', N'Dingloy Place')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (4, N'Home', N'Explore your search places', N'Blog Listing', N'Blog', N'Blog Listing')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (5, N'Home', N'Explore your search places', N'Blog Detail', N'BlogDetails', N'Blog Detail')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (6, N'Home', N'Explore your search places', N'About Us', N'About Us', N'About Us')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (7, N'Home', N'Explore your search places', N'Contact Us', N'Contact Us', N'Contact Us')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Id], [MainImage], [Title], [Text], [CreateDate], [CustomUserId]) VALUES (4, N'dp-3.jpg', N'Take a Look at Hotels for All Budgets', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2021-10-12T00:00:00.0000000' AS DateTime2), N'a2b1c89d-db45-4fd2-a06a-c19ec25b1b3b')
INSERT [dbo].[Blog] ([Id], [MainImage], [Title], [Text], [CreateDate], [CustomUserId]) VALUES (5, N'dp-4.jpg', N'Take a Look at Hotels for All Budgets', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), N'a2b1c89d-db45-4fd2-a06a-c19ec25b1b3b')
INSERT [dbo].[Blog] ([Id], [MainImage], [Title], [Text], [CreateDate], [CustomUserId]) VALUES (7, N'dp-2.jpg', N'Take a Look at Hotels for All Budgets', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2018-08-22T00:00:00.0000000' AS DateTime2), N'a2b1c89d-db45-4fd2-a06a-c19ec25b1b3b')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactPhoneToRestaurant] ON 

INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (1, 1, 1)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (2, 1, 4)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (3, 1, 5)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (4, 2, 1)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (5, 2, 4)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (6, 2, 5)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (7, 3, 1)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (8, 3, 4)
INSERT [dbo].[ContactPhoneToRestaurant] ([Id], [RestaurantContactPhoneId], [RestaurantId]) VALUES (9, 3, 5)
SET IDENTITY_INSERT [dbo].[ContactPhoneToRestaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[FeatureToRestaurant] ON 

INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (1, 1, 1)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (3, 2, 1)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (4, 3, 1)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (5, 4, 1)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (6, 5, 1)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (7, 6, 1)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (8, 1, 4)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (9, 2, 4)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (10, 3, 4)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (11, 4, 4)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (12, 5, 4)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (13, 6, 4)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (14, 1, 5)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (15, 2, 5)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (16, 3, 5)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (17, 4, 5)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (18, 5, 5)
INSERT [dbo].[FeatureToRestaurant] ([Id], [RestaurantFeaturesId], [RestaurantId]) VALUES (19, 6, 5)
SET IDENTITY_INSERT [dbo].[FeatureToRestaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[MenuToRestaurant] ON 

INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (1, 1, 1)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (2, 2, 1)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (4, 3, 1)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (6, 5, 1)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (7, 1, 4)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (8, 2, 4)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (9, 3, 4)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (10, 5, 4)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (11, 1, 5)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (12, 2, 5)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (13, 3, 5)
INSERT [dbo].[MenuToRestaurant] ([Id], [RestaurantMenuId], [RestaurantId]) VALUES (14, 5, 5)
SET IDENTITY_INSERT [dbo].[MenuToRestaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurant] ON 

INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [About], [Capacity], [ClosingTime], [Location], [Locationlink], [OpeningTime], [RestaurantCategoryId], [Website]) VALUES (1, N'Cafe Bar', N'most-img-1.jpg', N'logo-1.png', N'fa fa-heart-o', N'Wall Street, New York', N'3', CAST(N'2021-12-15T00:00:00.0000000' AS DateTime2), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus!

Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', 25, CAST(N'2022-01-05T22:00:00.0000000' AS DateTime2), N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', N'40.38172320423549, 49.816452071231545', CAST(N'2022-01-05T08:00:00.0000000' AS DateTime2), 1, N'http://d-list.trendsetterthemes.org/index.html')
INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [About], [Capacity], [ClosingTime], [Location], [Locationlink], [OpeningTime], [RestaurantCategoryId], [Website]) VALUES (4, N'Milky Ducth', N'most-img-3.jpg', N'logo-2.png', N'fa fa-heart-o', N'MayLand Square, LA', N'2', CAST(N'2021-12-10T00:00:00.0000000' AS DateTime2), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus!

Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', 20, CAST(N'2022-01-05T22:00:00.0000000' AS DateTime2), N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', N'40.38319429956998, 49.814853485248804', CAST(N'2022-01-05T08:00:00.0000000' AS DateTime2), 2, N'http://d-list.trendsetterthemes.org/index.html')
INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [About], [Capacity], [ClosingTime], [Location], [Locationlink], [OpeningTime], [RestaurantCategoryId], [Website]) VALUES (5, N'Maledy Hotels', N'most-img-2.jpg', N'logo-3.png', N'fa fa-heart-o', N'Maledy Hotels', N'5', CAST(N'2021-10-15T00:00:00.0000000' AS DateTime2), N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus!

Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.', 22, CAST(N'2022-01-05T22:00:00.0000000' AS DateTime2), N'Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.', N'40.38191117493392, 49.81646280625423', CAST(N'2022-01-05T08:00:00.0000000' AS DateTime2), 3, N'http://d-list.trendsetterthemes.org/listings-detail-two.html')
SET IDENTITY_INSERT [dbo].[Restaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantAdministration] ON 

INSERT [dbo].[RestaurantAdministration] ([Id], [MainImage], [Fullname], [Phone], [Logins], [Email]) VALUES (1, N'thumb-1.jpg', N'Victoria Benson', N' (123) 123-456', N'victoria@victoria.com', N' http://example.com')
INSERT [dbo].[RestaurantAdministration] ([Id], [MainImage], [Fullname], [Phone], [Logins], [Email]) VALUES (2, N'thumb-2.jpg', N'Victoria Benson', N'(123) 123-459', N'http://example.com', N'victoria@victoria.com')
INSERT [dbo].[RestaurantAdministration] ([Id], [MainImage], [Fullname], [Phone], [Logins], [Email]) VALUES (3, N'thumb-3.jpg', N'Victoria Benson', N'(123) 123-456', N'http://example.com', N'victoria@victoria.com')
SET IDENTITY_INSERT [dbo].[RestaurantAdministration] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantCategory] ON 

INSERT [dbo].[RestaurantCategory] ([Id], [Name]) VALUES (1, N'Sea')
INSERT [dbo].[RestaurantCategory] ([Id], [Name]) VALUES (2, N'City')
INSERT [dbo].[RestaurantCategory] ([Id], [Name]) VALUES (3, N'Beach')
SET IDENTITY_INSERT [dbo].[RestaurantCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantContactPhone] ON 

INSERT [dbo].[RestaurantContactPhone] ([Id], [Name], [Phone]) VALUES (1, N'RECEPTION.', N'+123 123 456 45')
INSERT [dbo].[RestaurantContactPhone] ([Id], [Name], [Phone]) VALUES (2, N'FOR COMPLAINTS.', N'+123 123 456 45')
INSERT [dbo].[RestaurantContactPhone] ([Id], [Name], [Phone]) VALUES (3, N'SUPPORT.', N'+123 123 456 45')
SET IDENTITY_INSERT [dbo].[RestaurantContactPhone] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantFeatures] ON 

INSERT [dbo].[RestaurantFeatures] ([Id], [Name]) VALUES (1, N'SWIMMING POOL')
INSERT [dbo].[RestaurantFeatures] ([Id], [Name]) VALUES (2, N'FREE WIFI INTERNET ACCESS INCLUDED')
INSERT [dbo].[RestaurantFeatures] ([Id], [Name]) VALUES (3, N'FREE PARKING')
INSERT [dbo].[RestaurantFeatures] ([Id], [Name]) VALUES (4, N'SWIMMINGPOOL OUTDOOR')
INSERT [dbo].[RestaurantFeatures] ([Id], [Name]) VALUES (5, N'FAMILY ROOMS')
INSERT [dbo].[RestaurantFeatures] ([Id], [Name]) VALUES (6, N'NON SMOKING ROOMS')
SET IDENTITY_INSERT [dbo].[RestaurantFeatures] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantMenu] ON 

INSERT [dbo].[RestaurantMenu] ([Id], [Name], [Detail], [Price]) VALUES (1, N'Classic Burger', N'Beef, salad, mayonnaise, spicey relish, cheese', 12.0000)
INSERT [dbo].[RestaurantMenu] ([Id], [Name], [Detail], [Price]) VALUES (2, N'Cheddar Burger', N'Cheddar cheese, lettuce, tomato, onion, dill pickles', 15.0000)
INSERT [dbo].[RestaurantMenu] ([Id], [Name], [Detail], [Price]) VALUES (3, N'Veggie Burger', N'Panko crumbed and fried, grilled peppers and mushroom', 6.0000)
INSERT [dbo].[RestaurantMenu] ([Id], [Name], [Detail], [Price]) VALUES (5, N'Chicken Burger', N'Cheese, chicken fillet, avocado, bacon, tomatoes, basil', 25.0000)
SET IDENTITY_INSERT [dbo].[RestaurantMenu] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantTag] ON 

INSERT [dbo].[RestaurantTag] ([Id], [Name]) VALUES (1, N'About')
INSERT [dbo].[RestaurantTag] ([Id], [Name]) VALUES (2, N'Location')
INSERT [dbo].[RestaurantTag] ([Id], [Name]) VALUES (3, N'Pricing')
INSERT [dbo].[RestaurantTag] ([Id], [Name]) VALUES (4, N'Reviews')
SET IDENTITY_INSERT [dbo].[RestaurantTag] OFF
GO
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([Id], [Logo], [SiteInfo], [Adresses], [Phone], [Email], [Image], [Qoal], [ContactInfo]) VALUES (1, N'logo-white.png', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem sapiente, fugiat commodi reprehenderit expedita nam nemo  Molestiae labore inventore dolor voluptatem iste voluptatum sed iusto, pariatur doloremque quo nesciunt sit!  Molestiae labore inventore dolor voluptatem iste voluptatum sed iusto, pariatur doloremque quo nesciunt sit!', N'12345 Little Lonsdale St, Melbourne', N'(123) 123-456', N'office@example.com', N'73d7d0d8-e6c6-4354-8454-cd127e296a72-20220105000226-bw-2.jpg', N'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vel consectetur, ipsa autem vitae quos ea laborum expedita', N'Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper.')
SET IDENTITY_INSERT [dbo].[Setting] OFF
GO
SET IDENTITY_INSERT [dbo].[Sosial] ON 

INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link], [Color]) VALUES (1, N'fa fa-twitter', N'twitter', N'https://twitter.com/', N'btn-twitter')
INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link], [Color]) VALUES (2, N'fa fa-facebook-square', N'facebook', N'https://www.facebook.com/', N'btn-twitter')
INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link], [Color]) VALUES (3, N'fa fa-dribbble', N'dribbble', N'https://dribbble.com/', N'btn-dribbble')
INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link], [Color]) VALUES (4, N'fa fa-github', N'github', N'https://github.com/', N'btn-github')
SET IDENTITY_INSERT [dbo].[Sosial] OFF
GO
SET IDENTITY_INSERT [dbo].[Team] ON 

INSERT [dbo].[Team] ([Id], [Image], [Fullname], [Position]) VALUES (1, N'thumb-1.jpg', N'Ryan Tompson', N'Web Developer')
INSERT [dbo].[Team] ([Id], [Image], [Fullname], [Position]) VALUES (2, N'thumb-2.jpg', N'Romina Hadid', N'arketing Strategist')
INSERT [dbo].[Team] ([Id], [Image], [Fullname], [Position]) VALUES (3, N'thumb-3.jpg', N'Alexander Smit', N'UI/UX Designer')
INSERT [dbo].[Team] ([Id], [Image], [Fullname], [Position]) VALUES (4, N'thumb-4.jpg', N'Ethan Moore', N'Founder and CEO')
SET IDENTITY_INSERT [dbo].[Team] OFF
GO
SET IDENTITY_INSERT [dbo].[TeamSosial] ON 

INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (1, N'fa fa-twitter', N'twitter', N'https://twitter.com/', 1)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (2, N'fa fa-facebook-square', N'facebook', N'https://www.facebook.com/', 1)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (3, N'fa fa-dribbble', N'dribbble', N'https://dribbble.com/', 1)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (4, N'fa fa-github', N'github', N'https://github.com/', 1)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (5, N'fa fa-twitter', N'twitter', N'https://twitter.com/', 2)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (6, N'fa fa-facebook-square', N'facebook', N'https://www.facebook.com/', 2)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (7, N'fa fa-dribbble', N'dribbble', N'https://dribbble.com/', 2)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (8, N'fa fa-github', N'github', N'https://github.com/', 2)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (9, N'fa fa-twitter', N'twitter', N'https://twitter.com/', 3)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (10, N'fa fa-facebook-square', N'facebook', N'https://www.facebook.com/', 3)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (11, N'fa fa-dribbble', N'dribbble', N'https://dribbble.com/', 3)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (12, N'fa fa-github', N'github', N'https://github.com/', 3)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (13, N'fa fa-twitter', N'twitter', N'https://twitter.com/', 4)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (14, N'fa fa-facebook-square', N'facebook', N'https://www.facebook.com/', 4)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (15, N'fa fa-dribbble', N'dribbble', N'https://dribbble.com/', 4)
INSERT [dbo].[TeamSosial] ([Id], [Icon], [Name], [Link], [TeamId]) VALUES (16, N'fa fa-github', N'github', N'https://github.com/', 4)
SET IDENTITY_INSERT [dbo].[TeamSosial] OFF
GO
SET IDENTITY_INSERT [dbo].[Vacation] ON 

INSERT [dbo].[Vacation] ([Id], [Icon], [Title], [Content]) VALUES (1, N'fa fa-search', N'Find Interesting Place', N'Proin dapibus nisl ornare diam varius tempus. Aenean a quam luctus, finibus tellus ut, convallis eros sollicitudin turpis.')
INSERT [dbo].[Vacation] ([Id], [Icon], [Title], [Content]) VALUES (2, N'fa fa-phone-square', N'Contact a Few Owners', N'Maecenas pulvinar, risus in facilisis dignissim, quam nisi hendrerit nulla, id vestibulum metus nullam viverra porta purus.')
INSERT [dbo].[Vacation] ([Id], [Icon], [Title], [Content]) VALUES (3, N'fa fa-user-plus', N'Make a Reservation', N'Faucibus ante, in porttitor tellus blandit et. Phasellus tincidunt metus lectus sollicitudin feugiat pharetra consectetur.')
SET IDENTITY_INSERT [dbo].[Vacation] OFF
GO
SET IDENTITY_INSERT [dbo].[Working] ON 

INSERT [dbo].[Working] ([Id], [Num], [Icon], [Title], [Content], [Text]) VALUES (1, N'01', N'fa fa-bookmark', N'Plan', N'Nostrud exercitat ullamco lorem ipsum dolor sit amet, consece adipising elit, sed doeo eiusmod', NULL)
INSERT [dbo].[Working] ([Id], [Num], [Icon], [Title], [Content], [Text]) VALUES (2, N'02', N'fa fa-rocket', N'Code', N'Nostrud exercitat ullamco lorem ipsum dolor sit amet, consece adipising elit, sed doeo eiusmod', NULL)
INSERT [dbo].[Working] ([Id], [Num], [Icon], [Title], [Content], [Text]) VALUES (3, N'03', N'fa fa-check', N'Deliver', N'Nostrud exercitat ullamco lorem ipsum dolor sit amet, consece adipising elit, sed doeo eiusmod', NULL)
SET IDENTITY_INSERT [dbo].[Working] OFF
GO
ALTER TABLE [dbo].[Comment] ADD  DEFAULT ((0)) FOR [RestaurantId]
GO
ALTER TABLE [dbo].[Restaurant] ADD  DEFAULT (CONVERT([smallint],(0))) FOR [Capacity]
GO
ALTER TABLE [dbo].[Restaurant] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ClosingTime]
GO
ALTER TABLE [dbo].[Restaurant] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [OpeningTime]
GO
ALTER TABLE [dbo].[AdministrationToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_AdministrationToRestaurant_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdministrationToRestaurant] CHECK CONSTRAINT [FK_AdministrationToRestaurant_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[AdministrationToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_AdministrationToRestaurant_RestaurantAdministration_RestaurantAdministrationId] FOREIGN KEY([RestaurantAdministrationId])
REFERENCES [dbo].[RestaurantAdministration] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdministrationToRestaurant] CHECK CONSTRAINT [FK_AdministrationToRestaurant_RestaurantAdministration_RestaurantAdministrationId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Blog]  WITH CHECK ADD  CONSTRAINT [FK_Blog_AspNetUsers_CustomUserId] FOREIGN KEY([CustomUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Blog] CHECK CONSTRAINT [FK_Blog_AspNetUsers_CustomUserId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Blog_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blog] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Blog_BlogId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comenter_ComenterId] FOREIGN KEY([ComenterId])
REFERENCES [dbo].[Comenter] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comenter_ComenterId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Comment_CommentId] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comment] ([Id])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Comment_CommentId]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[ContactPhoneToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_ContactPhoneToRestaurant_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContactPhoneToRestaurant] CHECK CONSTRAINT [FK_ContactPhoneToRestaurant_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[ContactPhoneToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_ContactPhoneToRestaurant_RestaurantContactPhone_RestaurantContactPhoneId] FOREIGN KEY([RestaurantContactPhoneId])
REFERENCES [dbo].[RestaurantContactPhone] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContactPhoneToRestaurant] CHECK CONSTRAINT [FK_ContactPhoneToRestaurant_RestaurantContactPhone_RestaurantContactPhoneId]
GO
ALTER TABLE [dbo].[FeatureToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_FeatureToRestaurant_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureToRestaurant] CHECK CONSTRAINT [FK_FeatureToRestaurant_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[FeatureToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_FeatureToRestaurant_RestaurantFeatures_RestaurantFeaturesId] FOREIGN KEY([RestaurantFeaturesId])
REFERENCES [dbo].[RestaurantFeatures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FeatureToRestaurant] CHECK CONSTRAINT [FK_FeatureToRestaurant_RestaurantFeatures_RestaurantFeaturesId]
GO
ALTER TABLE [dbo].[MenuToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_MenuToRestaurant_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuToRestaurant] CHECK CONSTRAINT [FK_MenuToRestaurant_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[MenuToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_MenuToRestaurant_RestaurantMenu_RestaurantMenuId] FOREIGN KEY([RestaurantMenuId])
REFERENCES [dbo].[RestaurantMenu] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MenuToRestaurant] CHECK CONSTRAINT [FK_MenuToRestaurant_RestaurantMenu_RestaurantMenuId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Guest_GuestId] FOREIGN KEY([GuestId])
REFERENCES [dbo].[Guest] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Guest_GuestId]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_RestaurantCategory_RestaurantCategoryId] FOREIGN KEY([RestaurantCategoryId])
REFERENCES [dbo].[RestaurantCategory] ([Id])
GO
ALTER TABLE [dbo].[Restaurant] CHECK CONSTRAINT [FK_Restaurant_RestaurantCategory_RestaurantCategoryId]
GO
ALTER TABLE [dbo].[TagToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_TagToRestaurant_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagToRestaurant] CHECK CONSTRAINT [FK_TagToRestaurant_Restaurant_RestaurantId]
GO
ALTER TABLE [dbo].[TagToRestaurant]  WITH CHECK ADD  CONSTRAINT [FK_TagToRestaurant_RestaurantTag_RestaurantTagId] FOREIGN KEY([RestaurantTagId])
REFERENCES [dbo].[RestaurantTag] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagToRestaurant] CHECK CONSTRAINT [FK_TagToRestaurant_RestaurantTag_RestaurantTagId]
GO
ALTER TABLE [dbo].[TagToTeamSosial]  WITH CHECK ADD  CONSTRAINT [FK_TagToTeamSosial_Team_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagToTeamSosial] CHECK CONSTRAINT [FK_TagToTeamSosial_Team_TeamId]
GO
ALTER TABLE [dbo].[TagToTeamSosial]  WITH CHECK ADD  CONSTRAINT [FK_TagToTeamSosial_TeamSosial_TeamSosialId] FOREIGN KEY([TeamSosialId])
REFERENCES [dbo].[TeamSosial] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagToTeamSosial] CHECK CONSTRAINT [FK_TagToTeamSosial_TeamSosial_TeamSosialId]
GO
ALTER TABLE [dbo].[TeamSosial]  WITH CHECK ADD  CONSTRAINT [FK_TeamSosial_Team_TeamId] FOREIGN KEY([TeamId])
REFERENCES [dbo].[Team] ([Id])
GO
ALTER TABLE [dbo].[TeamSosial] CHECK CONSTRAINT [FK_TeamSosial_Team_TeamId]
GO
