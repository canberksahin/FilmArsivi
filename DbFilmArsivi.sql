USE [master]
GO
/****** Object:  Database [FilmArsivim]    Script Date: 31.03.2020 18:14:35 ******/
CREATE DATABASE [FilmArsivim]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FilmArsivim', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FilmArsivim.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FilmArsivim_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\FilmArsivim_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [FilmArsivim] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FilmArsivim].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FilmArsivim] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FilmArsivim] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FilmArsivim] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FilmArsivim] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FilmArsivim] SET ARITHABORT OFF 
GO
ALTER DATABASE [FilmArsivim] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FilmArsivim] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FilmArsivim] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FilmArsivim] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FilmArsivim] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FilmArsivim] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FilmArsivim] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FilmArsivim] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FilmArsivim] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FilmArsivim] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FilmArsivim] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FilmArsivim] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FilmArsivim] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FilmArsivim] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FilmArsivim] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FilmArsivim] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FilmArsivim] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FilmArsivim] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [FilmArsivim] SET  MULTI_USER 
GO
ALTER DATABASE [FilmArsivim] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FilmArsivim] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FilmArsivim] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FilmArsivim] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [FilmArsivim] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [FilmArsivim] SET QUERY_STORE = OFF
GO
USE [FilmArsivim]
GO
/****** Object:  Table [dbo].[TBLFILMLER]    Script Date: 31.03.2020 18:14:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBLFILMLER](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AD] [varchar](50) NULL,
	[KATEGORI] [varchar](50) NULL,
	[LINK] [varchar](50) NULL,
	[DURUM] [bit] NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [FilmArsivim] SET  READ_WRITE 
GO
