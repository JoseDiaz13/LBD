USE [master]
GO
/****** Object:  Database [LBD2]    Script Date: 16/02/2019 03:30:51 p. m. ******/
CREATE DATABASE [LBD2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LBD2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LBD2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\LBD2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LBD2] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LBD2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LBD2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LBD2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LBD2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LBD2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LBD2] SET ARITHABORT OFF 
GO
ALTER DATABASE [LBD2] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LBD2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LBD2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LBD2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LBD2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LBD2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LBD2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LBD2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LBD2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LBD2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LBD2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LBD2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LBD2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LBD2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LBD2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LBD2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LBD2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LBD2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LBD2] SET  MULTI_USER 
GO
ALTER DATABASE [LBD2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LBD2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LBD2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LBD2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LBD2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LBD2] SET QUERY_STORE = OFF
GO
ALTER DATABASE [LBD2] SET  READ_WRITE 
GO
