USE [Consol_Project_DirectListDB]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Banner]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Blog]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Book]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[RestaurantId] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comenter]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Comment]    Script Date: 12/27/2021 11:50:28 PM ******/
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
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactInfo]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactInfo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Phone] [nvarchar](50) NULL,
	[HelperId] [int] NOT NULL,
 CONSTRAINT [PK_ContactInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactPost]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
 CONSTRAINT [PK_ContactPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Icon] [nvarchar](100) NULL,
	[HelperId] [int] NOT NULL,
	[LocationsId] [int] NOT NULL,
	[CommentId] [int] NULL,
	[KeyPeopleId] [int] NULL,
 CONSTRAINT [PK_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[HelperId] [int] NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guest]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[BookId] [int] NOT NULL,
 CONSTRAINT [PK_Guest] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Helpers]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Helpers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [ntext] NULL,
 CONSTRAINT [PK_Helpers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KeyPeople]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyPeople](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainImage] [nvarchar](250) NULL,
	[Email] [nvarchar](50) NULL,
	[Fullname] [nvarchar](250) NULL,
	[Logins] [nvarchar](50) NULL,
	[Phone] [nvarchar](30) NULL,
 CONSTRAINT [PK_KeyPeople] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Locations]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Locations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Link] [nvarchar](500) NULL,
 CONSTRAINT [PK_Locations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](500) NULL,
	[Price] [money] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[DetailsId] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Position]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Fullname] [nvarchar](100) NULL,
	[Positions] [nvarchar](100) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restaurant]    Script Date: 12/27/2021 11:50:28 PM ******/
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
	[CategoryId] [int] NOT NULL,
	[DetailsId] [int] NOT NULL,
	[KeyPeopleId] [int] NOT NULL,
 CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RestaurantCategory]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Setting]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Sosial]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sosial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](100) NULL,
	[Name] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sosial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagToContactPost]    Script Date: 12/27/2021 11:50:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagToContactPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionId] [int] NOT NULL,
	[ContactPostId] [int] NOT NULL,
 CONSTRAINT [PK_TagToContactPost] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vacation]    Script Date: 12/27/2021 11:50:28 PM ******/
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
/****** Object:  Table [dbo].[Working]    Script Date: 12/27/2021 11:50:28 PM ******/
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
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'06d7e122-ad6a-499a-bf0e-31cdfee4f10b', N'Moderator', N'MODERATOR', N'd5d81560-9a67-4046-99f2-41c42a9dd9fd')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'cf5de76b-1100-43e2-917c-527d1e25edba', N'Customer', N'CUSTOMER', N'8b4ddd4b-8ec0-4550-98c5-ff8c44901de7')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0414cea7-d079-4655-ac94-a23d35b3b1fd', N'06d7e122-ad6a-499a-bf0e-31cdfee4f10b')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'874892f7-0384-446a-b9b6-cb1f89ac41cd', N'cf5de76b-1100-43e2-917c-527d1e25edba')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [MainImage], [Name], [Surname], [CreateDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Review]) VALUES (N'0414cea7-d079-4655-ac94-a23d35b3b1fd', N'CustomUser', N'thumb-4.jpg', N'Eldaniz', N'Bashirov', CAST(N'2021-12-27T22:04:33.7404735' AS DateTime2), N'eldanizjb@code.edu.az', N'ELDANIZJB@CODE.EDU.AZ', N'eldanizjb@code.edu.az', N'ELDANIZJB@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEOi4cX8f38hjqIej7VnKhSBTD5IwZ5I9K7pub/m/8o/rHJBrn+dYe0Rp/JomcO/NLQ==', N'5WFCZ57UTC6JVZDQAZ3TRBTWE5DIBPHQ', N'28253164-0950-4e2a-be06-7e226008f7a3', NULL, 0, 0, NULL, 1, 0, N'Nullam ultricies, velit ut varius molestie, ante metus condimentum nisi, dignissim facilisis turpis ex in libero. Sed porta ante tortor, a pulvinar mi facilisis nec. Proin finibus dolor ac convallis congue.')
INSERT [dbo].[AspNetUsers] ([Id], [Discriminator], [MainImage], [Name], [Surname], [CreateDate], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Review]) VALUES (N'874892f7-0384-446a-b9b6-cb1f89ac41cd', N'CustomUser', N'thumb-4.jpg', N'Samir', N'Abbasov', CAST(N'2021-12-27T22:00:33.4075180' AS DateTime2), N'samirjb@code.edu.az', N'SAMIRJB@CODE.EDU.AZ', N'samirjb@code.edu.az', N'SAMIRJB@CODE.EDU.AZ', 0, N'AQAAAAEAACcQAAAAEGN65+I6UHnGzxP+c97mOIWI049AU7hZsgjIunm569Hgm1ofD9FGdkj5bv6yZrH5Kg==', N'YSHY42PLM7KSJ7NTYGUA6BLNRJLWXZLN', N'037450c4-2ca1-4f97-b63c-e35cbf3ede6c', NULL, 0, 0, NULL, 1, 0, N'Nullam ultricies, velit ut varius molestie, ante metus condimentum nisi, dignissim facilisis turpis ex in libero. Sed porta ante tortor, a pulvinar mi facilisis nec. Proin finibus dolor ac convallis congue.')
GO
SET IDENTITY_INSERT [dbo].[Banner] ON 

INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (3, NULL, N'Expolore top-rated attractions, activities and more
', N'Find Nearby Attractions
', N'Home', NULL)
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (4, N'Home', N'Explore New Places', N'List Full Width', N'Listings', N'Listings')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (5, N'Home', N'Explore New Places', N'Dingloy Place', N'ListingsDetails', N'Listings')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (6, N'Home', N'Explore your search places', N'Blog Listing', N'Blog', N'Blog >List')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (7, N'Home', N'Explore your search places', N'Blog Detail', N'BlogDetails', N'Blog > Details')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (8, N'Home', N'Explore your search places', N'About Us', N'About', N'About Us')
INSERT [dbo].[Banner] ([Id], [Home], [Suptitle], [Title], [Page], [Info]) VALUES (9, N'Home', N'Explore your search places', N'Contact Us', N'Contact', N'Contact Us')
SET IDENTITY_INSERT [dbo].[Banner] OFF
GO
SET IDENTITY_INSERT [dbo].[Blog] ON 

INSERT [dbo].[Blog] ([Id], [MainImage], [Title], [Text], [CreateDate], [CustomUserId]) VALUES (1, N'dp-3.jpg', N'The 50 Greatest Street Arts In London', N'Nam nisl lacus, dignissim ac tristique ut, scelerisque eu massa. Vestibulum ligula nunc, rutrum in malesuada vitae, tempus sed augue. Curabitur quis lectus quis augue dapibus facilisis. Vivamus tincidunt orci est, in vehicula nisi eleifend ut. Vestibulum sagittis varius orci vitae.

Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum.
In ut odio libero, at vulputate urna. Nulla tristique mi a massa convallis cursus. Nulla eu mi magna. Etiam suscipit commodo gravida. Cras suscipit, quam vitae adipiscing faucibus, risus nibh laoreet odio, a porttitor metus eros ut enim. Morbi augue velit, tempus mattis dignissim nec, porta sed risus. Donec eget magna eu lorem tristique pellentesque eget eu dui. Fusce lacinia tempor malesuada. Ut lacus sapien, placerat a ornare nec, elementum sit amet felis. Maecenas pretium lorem hendrerit eros sagittis fermentum.

Phasellus enim magna, varius et commodo ut, ultricies vitae velit. Ut nulla tellus, eleifend euismod pellentesque vel, sagittis vel justo. In libero urna, venenatis sit amet ornare non, suscipit nec risus. Sed consequat justo non mauris pretium at tempor justo sodales. Quisque tincidunt laoreet malesuada. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer vitae ante enim. Fusce sed elit est. Suspendisse sit amet mauris in quam pretium faucibus et aliquam odio.', CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), N'874892f7-0384-446a-b9b6-cb1f89ac41cd')
INSERT [dbo].[Blog] ([Id], [MainImage], [Title], [Text], [CreateDate], [CustomUserId]) VALUES (3, N'dp-4.jpg', N'Take a Look at Hotels for All Budgets
', N'Sed sed tristique nibh iam porta volutpat finibus. Donec in aliquet urneget mattis lorem. Pellentesque pellentesque

', CAST(N'2021-05-05T00:00:00.0000000' AS DateTime2), N'874892f7-0384-446a-b9b6-cb1f89ac41cd')
INSERT [dbo].[Blog] ([Id], [MainImage], [Title], [Text], [CreateDate], [CustomUserId]) VALUES (4, N'dp-2.jpg', N'Take a Look at Hotels for All Budgets
', N'Sed sed tristique nibh iam porta volutpat finibus. Donec in aliquet urneget mattis lorem. Pellentesque pellentesque', CAST(N'2021-05-02T00:00:00.0000000' AS DateTime2), N'0414cea7-d079-4655-ac94-a23d35b3b1fd')
SET IDENTITY_INSERT [dbo].[Blog] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([Id], [CreateDate], [RestaurantId]) VALUES (2, CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 4)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactInfo] ON 

INSERT [dbo].[ContactInfo] ([Id], [Name], [Phone], [HelperId]) VALUES (2, N' RECEPTION.', N'+123 123 456 45', 1)
INSERT [dbo].[ContactInfo] ([Id], [Name], [Phone], [HelperId]) VALUES (3, N'FOR COMPLAINTS.', N'+123 123 456 45', 1)
INSERT [dbo].[ContactInfo] ([Id], [Name], [Phone], [HelperId]) VALUES (4, N'SUPPORT.', N'+123 123 456 45', 1)
SET IDENTITY_INSERT [dbo].[ContactInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactPost] ON 

INSERT [dbo].[ContactPost] ([Id], [Icon], [Name], [Link]) VALUES (1, N'fa fa-twitter text-white', N'Twitter', N'https://twitter.com/?lang=ru')
INSERT [dbo].[ContactPost] ([Id], [Icon], [Name], [Link]) VALUES (2, N'fa fa-facebook text-white', N'Facebook', N'https://www.facebook.com')
INSERT [dbo].[ContactPost] ([Id], [Icon], [Name], [Link]) VALUES (3, N'fa fa-dribbble text-white', N'Dribbble', N'https://dribbble.com/')
SET IDENTITY_INSERT [dbo].[ContactPost] OFF
GO
SET IDENTITY_INSERT [dbo].[Details] ON 

INSERT [dbo].[Details] ([Id], [Name], [Icon], [HelperId], [LocationsId], [CommentId], [KeyPeopleId]) VALUES (4, N'About', N'fa fa-info-circle', 1, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Features] ON 

INSERT [dbo].[Features] ([Id], [Name], [HelperId]) VALUES (1, N'SWIMMING POOL', 1)
INSERT [dbo].[Features] ([Id], [Name], [HelperId]) VALUES (2, N'FREE WIFI INTERNET ACCESS INCLUDED', 1)
INSERT [dbo].[Features] ([Id], [Name], [HelperId]) VALUES (3, N'FREE PARKING', 1)
INSERT [dbo].[Features] ([Id], [Name], [HelperId]) VALUES (4, N'SWIMMINGPOOL OUTDOOR', 1)
INSERT [dbo].[Features] ([Id], [Name], [HelperId]) VALUES (5, N'FAMILY ROOMS', 1)
INSERT [dbo].[Features] ([Id], [Name], [HelperId]) VALUES (6, N' NON SMOKING ROOMS', 1)
SET IDENTITY_INSERT [dbo].[Features] OFF
GO
SET IDENTITY_INSERT [dbo].[Guest] ON 

INSERT [dbo].[Guest] ([Id], [Name], [BookId]) VALUES (1, N'Guest', 2)
INSERT [dbo].[Guest] ([Id], [Name], [BookId]) VALUES (2, N'One', 2)
INSERT [dbo].[Guest] ([Id], [Name], [BookId]) VALUES (3, N'Two', 2)
INSERT [dbo].[Guest] ([Id], [Name], [BookId]) VALUES (4, N'Three', 2)
INSERT [dbo].[Guest] ([Id], [Name], [BookId]) VALUES (5, N'Four', 2)
SET IDENTITY_INSERT [dbo].[Guest] OFF
GO
SET IDENTITY_INSERT [dbo].[Helpers] ON 

INSERT [dbo].[Helpers] ([Id], [Content]) VALUES (1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Placeat rerum doloribus repudiandae nulla odit, omnis ex, a assumenda fugiat quasi neque necessitatibus fugit maiores quis. Quo dolor minus pariatur natus! Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis quis laudantium est pariatur, harum laboriosam odit delectus vitae minima dolorem ipsam repudiandae sunt non. Dolorem adipisci voluptates doloribus voluptatum nihil.')
SET IDENTITY_INSERT [dbo].[Helpers] OFF
GO
SET IDENTITY_INSERT [dbo].[KeyPeople] ON 

INSERT [dbo].[KeyPeople] ([Id], [MainImage], [Email], [Fullname], [Logins], [Phone]) VALUES (1, N'thumb-1.jpg', N'victoria@victoria.com', N'Victoria Benson', N'http://example.com', N' (123) 123-456')
SET IDENTITY_INSERT [dbo].[KeyPeople] OFF
GO
SET IDENTITY_INSERT [dbo].[Locations] ON 

INSERT [dbo].[Locations] ([Id], [Link]) VALUES (1, N'mmmmmmmm')
INSERT [dbo].[Locations] ([Id], [Link]) VALUES (2, N'ddddddddd')
SET IDENTITY_INSERT [dbo].[Locations] OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Id], [Detail], [Price], [Name], [DetailsId]) VALUES (2, N'Classic Burger', 6.0000, N'Beef, salad, mayonnaise, spicey relish, cheese', NULL)
INSERT [dbo].[Menu] ([Id], [Detail], [Price], [Name], [DetailsId]) VALUES (3, N'Classic Burger', 6.0000, N'Cheddar cheese, lettuce, tomato, onion, dill pickles', NULL)
INSERT [dbo].[Menu] ([Id], [Detail], [Price], [Name], [DetailsId]) VALUES (4, N'Classic Burger', 6.0000, N'Panko crumbed and fried, grilled peppers and mushroom', NULL)
INSERT [dbo].[Menu] ([Id], [Detail], [Price], [Name], [DetailsId]) VALUES (5, N'Classic Burger', 6.0000, N'Cheese, chicken fillet, avocado, bacon, tomatoes, basil', NULL)
SET IDENTITY_INSERT [dbo].[Menu] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [Image], [Fullname], [Positions]) VALUES (1, N'thumb-1.jpg', N'Ryan Tompson', N'Web Developer')
INSERT [dbo].[Position] ([Id], [Image], [Fullname], [Positions]) VALUES (2, N'thumb-1.jpg', N'Ryan Tompson', N'Web Developer')
INSERT [dbo].[Position] ([Id], [Image], [Fullname], [Positions]) VALUES (3, N'thumb-1.jpg', N'Ryan Tompson', N'Web Developer')
INSERT [dbo].[Position] ([Id], [Image], [Fullname], [Positions]) VALUES (4, N'thumb-1.jpg', N'Ryan Tompson', N'Web Developer')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Restaurant] ON 

INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [CategoryId], [DetailsId], [KeyPeopleId]) VALUES (4, N'Cafe Bar', N'most-img-4.jpg', N'logo-1.png', N'fa fa-heart-o', N'Remington, London, EC1V 8BP, United Kingdom', N'NOW OPEN
', CAST(N'2021-12-12T00:00:00.0000000' AS DateTime2), 1, 4, 1)
INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [CategoryId], [DetailsId], [KeyPeopleId]) VALUES (10, N'Milky Ducth', N'most-img-3.jpg', N'logo-2.png', N'fa fa-heart-o', N'MayLand Square, LA', N'NOW OPEN', CAST(N'2021-10-15T00:00:00.0000000' AS DateTime2), 1, 4, 1)
INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [CategoryId], [DetailsId], [KeyPeopleId]) VALUES (11, N'Maledy Hotels', N'most-img-2.jpg', N'logo-3.png', N'fa fa-heart-o', N'672, CreedWay, New York', N'NOW OPEN', CAST(N'2021-05-10T00:00:00.0000000' AS DateTime2), 1, 4, 1)
INSERT [dbo].[Restaurant] ([Id], [Name], [Image], [SmallImage], [Icon], [Adresses], [Order], [CreateDate], [CategoryId], [DetailsId], [KeyPeopleId]) VALUES (12, N'Donuts Hub', N'most-img-1.jpg', N'logo-4.png', N'fa fa-heart-o ', N'56,Hihu Pora, New Yorkk', N'NOW OPEN', CAST(N'2021-02-10T00:00:00.0000000' AS DateTime2), 1, 4, 1)
SET IDENTITY_INSERT [dbo].[Restaurant] OFF
GO
SET IDENTITY_INSERT [dbo].[RestaurantCategory] ON 

INSERT [dbo].[RestaurantCategory] ([Id], [Name]) VALUES (1, N'DINNER')
INSERT [dbo].[RestaurantCategory] ([Id], [Name]) VALUES (2, N'HOTEL')
INSERT [dbo].[RestaurantCategory] ([Id], [Name]) VALUES (3, N'SEA FOOD')
SET IDENTITY_INSERT [dbo].[RestaurantCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Setting] ON 

INSERT [dbo].[Setting] ([Id], [Logo], [SiteInfo], [Adresses], [Phone], [Email], [Image], [Qoal], [ContactInfo]) VALUES (1, N'logo-white.png', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Exercitationem sapiente, fugiat commodi reprehenderit expedita nam nemo

Molestiae labore inventore dolor voluptatem iste voluptatum sed iusto, pariatur doloremque quo nesciunt sit!

Molestiae labore inventore dolor voluptatem iste voluptatum sed iusto, pariatur doloremque quo nesciunt sit!', N'12345 Little Lonsdale St, Melbourne', N' (123) 123-456', N'office@example.com', N'about-image.jpg', N'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Vel consectetur, ipsa autem vitae quos ea laborum expedita', N'Morbi convallis bibendum urna ut viverra. Maecenas quis consequat libero, a feugiat eros. Nunc ut lacinia tortor morbi ultricies laoreet ullamcorper phasellus semper.')
SET IDENTITY_INSERT [dbo].[Setting] OFF
GO
SET IDENTITY_INSERT [dbo].[Sosial] ON 

INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link]) VALUES (1, N'fa fa-twitter', N'Twitter', N'https://twitter.com/?lang=ru')
INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link]) VALUES (2, N'fa fa-facebook-square', N'Facebook', N'https://www.facebook.com')
INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link]) VALUES (3, N'fa fa-dribbble', N'Dribbble', N'https://dribbble.com/')
INSERT [dbo].[Sosial] ([Id], [Icon], [Name], [Link]) VALUES (4, N'fa fa-github', N'GitHub', N'https://github.com/')
SET IDENTITY_INSERT [dbo].[Sosial] OFF
GO
SET IDENTITY_INSERT [dbo].[TagToContactPost] ON 

INSERT [dbo].[TagToContactPost] ([Id], [PositionId], [ContactPostId]) VALUES (1, 1, 1)
INSERT [dbo].[TagToContactPost] ([Id], [PositionId], [ContactPostId]) VALUES (3, 2, 1)
INSERT [dbo].[TagToContactPost] ([Id], [PositionId], [ContactPostId]) VALUES (4, 3, 1)
INSERT [dbo].[TagToContactPost] ([Id], [PositionId], [ContactPostId]) VALUES (5, 4, 1)
SET IDENTITY_INSERT [dbo].[TagToContactPost] OFF
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
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Restaurant_RestaurantId] FOREIGN KEY([RestaurantId])
REFERENCES [dbo].[Restaurant] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Restaurant_RestaurantId]
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
ALTER TABLE [dbo].[ContactInfo]  WITH CHECK ADD  CONSTRAINT [FK_ContactInfo_Helpers_HelperId] FOREIGN KEY([HelperId])
REFERENCES [dbo].[Helpers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContactInfo] CHECK CONSTRAINT [FK_ContactInfo_Helpers_HelperId]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Comment_CommentId] FOREIGN KEY([CommentId])
REFERENCES [dbo].[Comment] ([Id])
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Comment_CommentId]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Helpers_HelperId] FOREIGN KEY([HelperId])
REFERENCES [dbo].[Helpers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Helpers_HelperId]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_KeyPeople_KeyPeopleId] FOREIGN KEY([KeyPeopleId])
REFERENCES [dbo].[KeyPeople] ([Id])
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_KeyPeople_KeyPeopleId]
GO
ALTER TABLE [dbo].[Details]  WITH CHECK ADD  CONSTRAINT [FK_Details_Locations_LocationsId] FOREIGN KEY([LocationsId])
REFERENCES [dbo].[Locations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Details] CHECK CONSTRAINT [FK_Details_Locations_LocationsId]
GO
ALTER TABLE [dbo].[Features]  WITH CHECK ADD  CONSTRAINT [FK_Features_Helpers_HelperId] FOREIGN KEY([HelperId])
REFERENCES [dbo].[Helpers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Features] CHECK CONSTRAINT [FK_Features_Helpers_HelperId]
GO
ALTER TABLE [dbo].[Guest]  WITH CHECK ADD  CONSTRAINT [FK_Guest_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Guest] CHECK CONSTRAINT [FK_Guest_Book_BookId]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FK_Menu_Details_DetailsId] FOREIGN KEY([DetailsId])
REFERENCES [dbo].[Details] ([Id])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FK_Menu_Details_DetailsId]
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_Details_DetailsId] FOREIGN KEY([DetailsId])
REFERENCES [dbo].[Details] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Restaurant] CHECK CONSTRAINT [FK_Restaurant_Details_DetailsId]
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_KeyPeople_KeyPeopleId] FOREIGN KEY([KeyPeopleId])
REFERENCES [dbo].[KeyPeople] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Restaurant] CHECK CONSTRAINT [FK_Restaurant_KeyPeople_KeyPeopleId]
GO
ALTER TABLE [dbo].[Restaurant]  WITH CHECK ADD  CONSTRAINT [FK_Restaurant_RestaurantCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[RestaurantCategory] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Restaurant] CHECK CONSTRAINT [FK_Restaurant_RestaurantCategory_CategoryId]
GO
ALTER TABLE [dbo].[TagToContactPost]  WITH CHECK ADD  CONSTRAINT [FK_TagToContactPost_ContactPost_ContactPostId] FOREIGN KEY([ContactPostId])
REFERENCES [dbo].[ContactPost] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagToContactPost] CHECK CONSTRAINT [FK_TagToContactPost_ContactPost_ContactPostId]
GO
ALTER TABLE [dbo].[TagToContactPost]  WITH CHECK ADD  CONSTRAINT [FK_TagToContactPost_Position_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TagToContactPost] CHECK CONSTRAINT [FK_TagToContactPost_Position_PositionId]
GO
