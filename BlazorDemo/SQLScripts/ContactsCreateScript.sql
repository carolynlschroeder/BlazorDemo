USE [master]
GO
/****** Object:  Database [Contacts]    Script Date: 9/9/2019 9:04:10 AM ******/
CREATE DATABASE [Contacts]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Contacts', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Contacts.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Contacts_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Contacts_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Contacts] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Contacts].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Contacts] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Contacts] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Contacts] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Contacts] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Contacts] SET ARITHABORT OFF 
GO
ALTER DATABASE [Contacts] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Contacts] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Contacts] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Contacts] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Contacts] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Contacts] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Contacts] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Contacts] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Contacts] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Contacts] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Contacts] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Contacts] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Contacts] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Contacts] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Contacts] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Contacts] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Contacts] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Contacts] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Contacts] SET  MULTI_USER 
GO
ALTER DATABASE [Contacts] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Contacts] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Contacts] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Contacts] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Contacts] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Contacts] SET QUERY_STORE = OFF
GO
USE [Contacts]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 9/9/2019 9:04:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [uniqueidentifier] NOT NULL,
	[Name] [varchar](150) NOT NULL,
	[Address] [varchar](150) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[State] [char](2) NOT NULL,
	[Zip] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'1ca62d26-9a0a-4c05-aa89-0e936da6667a', N'Carol Mason', N'123 Test St', N'Overland Park', N'KS', N'66202')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'48f35979-7559-4e9b-b6e6-11edfbb5d505', N'Amy Montoni', N'234 MyStreet', N'Overland Park', N'KS', N'66207')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'3dfadcc9-4eb7-492b-ae1f-1f6c8be10845', N'Robert Morris', N'123 Way', N'Overland Park', N'KS', N'66207')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'73a327e9-f74c-4053-9f00-3db04bacbf39', N'Richard Thurmond', N'123 Example St', N'Overland Park', N'KS', N'66202')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'8541e375-8cfa-4f00-99f6-6dd431eb71fb', N'Val Fox', N'123 My Street', N'Overland Park', N'KS', N'66207')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'2a0799e6-c877-450c-b92d-75e8703197e1', N'Fred Smith', N'123 Third St', N'Overland Park', N'KS', N'66207')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'5746402c-83e9-4fd5-b680-90509db17d79', N'Michelle Williams', N'110 Example St', N'Overland Park', N'KS', N'66202')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'7e928082-2f11-4235-a65a-a1daee054fc6', N'Herbert White', N'123 Second', N'Overland Park', N'KS', N'66207')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'0c42dbb3-4342-4b94-9c18-d37599d9c4e4', N'Betty', N'1 Address', N'City', N'KS', N'66202')
INSERT [dbo].[Contact] ([ContactId], [Name], [Address], [City], [State], [Zip]) VALUES (N'0cadc16c-fbfa-46b3-a024-ee3ae34d2687', N'Rick Thames', N'234 First', N'Overland Park', N'KS', N'66202')
USE [master]
GO
ALTER DATABASE [Contacts] SET  READ_WRITE 
GO
