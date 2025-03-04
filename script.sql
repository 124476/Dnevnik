USE [master]
GO
/****** Object:  Database [DnevnikDataBase]    Script Date: 24.07.2024 14:12:09 ******/
CREATE DATABASE [DnevnikDataBase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DnevnikDataBase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DnevnikDataBase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DnevnikDataBase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\DnevnikDataBase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [DnevnikDataBase] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DnevnikDataBase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DnevnikDataBase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET ARITHABORT OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DnevnikDataBase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DnevnikDataBase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DnevnikDataBase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DnevnikDataBase] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET RECOVERY FULL 
GO
ALTER DATABASE [DnevnikDataBase] SET  MULTI_USER 
GO
ALTER DATABASE [DnevnikDataBase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DnevnikDataBase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DnevnikDataBase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DnevnikDataBase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DnevnikDataBase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DnevnikDataBase] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'DnevnikDataBase', N'ON'
GO
ALTER DATABASE [DnevnikDataBase] SET QUERY_STORE = ON
GO
ALTER DATABASE [DnevnikDataBase] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [DnevnikDataBase]
GO
/****** Object:  Table [dbo].[ClassUsers]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_ClassUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ochenka]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ochenka](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1) NULL,
 CONSTRAINT [PK_Ochenka] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OchenkaAndUser]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OchenkaAndUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[OchenkaId] [int] NULL,
	[PredmetId] [int] NULL,
	[Date] [date] NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_OchenkaAndUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Predmet]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Predmet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Predmet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PredmetAndUser]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredmetAndUser](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PredmetId] [int] NOT NULL,
	[ClassId] [int] NULL,
 CONSTRAINT [PK_PredmetAndUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 24.07.2024 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](150) NULL,
	[Name] [nvarchar](150) NULL,
	[Otchestvo] [nvarchar](150) NULL,
	[Login] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[RoleId] [int] NULL,
	[ClassId] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ClassUsers] ON 

INSERT [dbo].[ClassUsers] ([Id], [Name]) VALUES (1, N'10A')
INSERT [dbo].[ClassUsers] ([Id], [Name]) VALUES (2, N'10B')
INSERT [dbo].[ClassUsers] ([Id], [Name]) VALUES (3, N'10M')
INSERT [dbo].[ClassUsers] ([Id], [Name]) VALUES (4, N'10E')
SET IDENTITY_INSERT [dbo].[ClassUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Ochenka] ON 

INSERT [dbo].[Ochenka] ([Id], [Name]) VALUES (1, N'5')
INSERT [dbo].[Ochenka] ([Id], [Name]) VALUES (2, N'4')
INSERT [dbo].[Ochenka] ([Id], [Name]) VALUES (3, N'3')
INSERT [dbo].[Ochenka] ([Id], [Name]) VALUES (4, N'2')
SET IDENTITY_INSERT [dbo].[Ochenka] OFF
GO
SET IDENTITY_INSERT [dbo].[OchenkaAndUser] ON 

INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (1, 1, 2, 1, CAST(N'2024-07-24' AS Date), N'Сочинение')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (3, 1, 1, 2, CAST(N'2024-07-24' AS Date), N'Контрольная 1')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (4, 1, 1, 2, CAST(N'2024-07-24' AS Date), N'Контрольная 2')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (5, 1, 1, 2, CAST(N'2024-07-24' AS Date), N'Контрольная 3')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (6, 1, 1, 2, CAST(N'2024-07-24' AS Date), N'Контрольная 4')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (7, 1, 1, 2, CAST(N'2024-07-24' AS Date), N'Самостоятельная 1')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (8, 1, 1, 4, CAST(N'2024-07-24' AS Date), N'Excel')
INSERT [dbo].[OchenkaAndUser] ([Id], [UserId], [OchenkaId], [PredmetId], [Date], [Name]) VALUES (9, 1, 1, 1, CAST(N'2024-07-24' AS Date), N'Тест')
SET IDENTITY_INSERT [dbo].[OchenkaAndUser] OFF
GO
SET IDENTITY_INSERT [dbo].[Predmet] ON 

INSERT [dbo].[Predmet] ([Id], [Name]) VALUES (1, N'Русския язык')
INSERT [dbo].[Predmet] ([Id], [Name]) VALUES (2, N'Математика')
INSERT [dbo].[Predmet] ([Id], [Name]) VALUES (3, N'Физика')
INSERT [dbo].[Predmet] ([Id], [Name]) VALUES (4, N'Информатика')
SET IDENTITY_INSERT [dbo].[Predmet] OFF
GO
SET IDENTITY_INSERT [dbo].[PredmetAndUser] ON 

INSERT [dbo].[PredmetAndUser] ([Id], [UserId], [PredmetId], [ClassId]) VALUES (1, 2, 1, 2)
INSERT [dbo].[PredmetAndUser] ([Id], [UserId], [PredmetId], [ClassId]) VALUES (2, 2, 2, 2)
INSERT [dbo].[PredmetAndUser] ([Id], [UserId], [PredmetId], [ClassId]) VALUES (3, 2, 3, 2)
INSERT [dbo].[PredmetAndUser] ([Id], [UserId], [PredmetId], [ClassId]) VALUES (4, 2, 4, 2)
INSERT [dbo].[PredmetAndUser] ([Id], [UserId], [PredmetId], [ClassId]) VALUES (5, 2, 3, 3)
SET IDENTITY_INSERT [dbo].[PredmetAndUser] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Student')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Teacher')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Surname], [Name], [Otchestvo], [Login], [Password], [RoleId], [ClassId]) VALUES (1, N'Крахмальников', N'Илья', N'Артемович', N'123', N'123', 1, 2)
INSERT [dbo].[User] ([Id], [Surname], [Name], [Otchestvo], [Login], [Password], [RoleId], [ClassId]) VALUES (2, NULL, NULL, NULL, N'321', N'321', 2, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[OchenkaAndUser]  WITH CHECK ADD  CONSTRAINT [FK_OchenkaAndUser_Ochenka] FOREIGN KEY([OchenkaId])
REFERENCES [dbo].[Ochenka] ([Id])
GO
ALTER TABLE [dbo].[OchenkaAndUser] CHECK CONSTRAINT [FK_OchenkaAndUser_Ochenka]
GO
ALTER TABLE [dbo].[OchenkaAndUser]  WITH CHECK ADD  CONSTRAINT [FK_OchenkaAndUser_Predmet] FOREIGN KEY([PredmetId])
REFERENCES [dbo].[Predmet] ([Id])
GO
ALTER TABLE [dbo].[OchenkaAndUser] CHECK CONSTRAINT [FK_OchenkaAndUser_Predmet]
GO
ALTER TABLE [dbo].[OchenkaAndUser]  WITH CHECK ADD  CONSTRAINT [FK_OchenkaAndUser_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[OchenkaAndUser] CHECK CONSTRAINT [FK_OchenkaAndUser_User]
GO
ALTER TABLE [dbo].[PredmetAndUser]  WITH CHECK ADD  CONSTRAINT [FK_PredmetAndUser_ClassUsers] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassUsers] ([Id])
GO
ALTER TABLE [dbo].[PredmetAndUser] CHECK CONSTRAINT [FK_PredmetAndUser_ClassUsers]
GO
ALTER TABLE [dbo].[PredmetAndUser]  WITH CHECK ADD  CONSTRAINT [FK_PredmetAndUser_Predmet] FOREIGN KEY([PredmetId])
REFERENCES [dbo].[Predmet] ([Id])
GO
ALTER TABLE [dbo].[PredmetAndUser] CHECK CONSTRAINT [FK_PredmetAndUser_Predmet]
GO
ALTER TABLE [dbo].[PredmetAndUser]  WITH CHECK ADD  CONSTRAINT [FK_PredmetAndUser_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[PredmetAndUser] CHECK CONSTRAINT [FK_PredmetAndUser_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_ClassUsers] FOREIGN KEY([ClassId])
REFERENCES [dbo].[ClassUsers] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_ClassUsers]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Role]
GO
USE [master]
GO
ALTER DATABASE [DnevnikDataBase] SET  READ_WRITE 
GO
