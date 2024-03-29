USE [master]
GO
/****** Object:  Database [ShoesE]    Script Date: 5/1/2022 3:23:41 PM ******/
CREATE DATABASE [ShoesE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ShoesE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShoesE.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ShoesE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\ShoesE_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ShoesE] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ShoesE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ShoesE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ShoesE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ShoesE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ShoesE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ShoesE] SET ARITHABORT OFF 
GO
ALTER DATABASE [ShoesE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ShoesE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ShoesE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ShoesE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ShoesE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ShoesE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ShoesE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ShoesE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ShoesE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ShoesE] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ShoesE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ShoesE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ShoesE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ShoesE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ShoesE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ShoesE] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ShoesE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ShoesE] SET RECOVERY FULL 
GO
ALTER DATABASE [ShoesE] SET  MULTI_USER 
GO
ALTER DATABASE [ShoesE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ShoesE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ShoesE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ShoesE] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ShoesE] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ShoesE', N'ON'
GO
USE [ShoesE]
GO
/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 5/1/2022 3:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONTHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 5/1/2022 3:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 5/1/2022 3:23:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Khuyenmai] [int] NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [nvarchar](max) NULL,
	[AnhbiaCT] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[MaNCC] [int] NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (1, N'MLB Chunky Liner High San Francisco – Yellow', CAST(3800000 AS Decimal(18, 0)), NULL, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/mlb-chunky-liner-high-san-francisco-yellow-3asxcb12n-14orl-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/mlb-chunky-liner-high-san-francisco-yellow-3asxcb12n-14orl-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (2, N'New Balance 530 – Steel Grey', CAST(3500000 AS Decimal(18, 0)), 6, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/new-balance-530-steel-grey-mr530ka-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/new-balance-530-steel-grey-mr530ka-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (4, N'Nike Dunk Low Retro – White Black (TD/Toddler)', CAST(2500000 AS Decimal(18, 0)), NULL, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/nike-dunk-low-retro-white-black-td-toddler-cw1589-100-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/nike-dunk-low-retro-white-black-td-toddler-cw1589-100-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (5, N'Nike Dunk Low – Union Passport Pack Pistachio', CAST(12500000 AS Decimal(18, 0)), NULL, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/nike-dunk-low-union-passport-pack-pistachio-dj9649-401-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/nike-dunk-low-union-passport-pack-pistachio-dj9649-401-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (6, N'Nike Dunk Low – Halloween', CAST(4000000 AS Decimal(18, 0)), 5, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/nike-dunk-low-halloween-do3806-100-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/05/nike-dunk-low-halloween-do3806-100-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (7, N'Air Jordan 1 Low Elevated – University Blue', CAST(5500000 AS Decimal(18, 0)), 9, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/04/air-jordan-1-low-elevated-university-blue-dq3698-141-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/04/air-jordan-1-low-elevated-university-blue-dq3698-141-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (8, N'Nike Air Force 1 Low x Serena Williams – All White', CAST(4250000 AS Decimal(18, 0)), 6, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/04/nike-air-force-1-low-x-serena-williams-all-white-dm5036-100-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/04/nike-air-force-1-low-x-serena-williams-all-white-dm5036-100-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (9, N'Air Jordan 1 Low – Light Madder Root', CAST(5250000 AS Decimal(18, 0)), 7, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/01/air-jordan-1-low-light-madder-root-dc0774-800-1-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/01/air-jordan-1-low-light-madder-root-dc0774-800-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (10, N'Nike Air Force 1 Low – Flower Power', CAST(3850000 AS Decimal(18, 0)), 5, NULL, N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/04/nike-air-force-1-low-flower-power-dj6377-100-600x600.jpg', N'https://sneakerholicvietnam.vn/wp-content/uploads/2022/04/nike-air-force-1-low-flower-power-dj6377-100-1-600x600.jpg', CAST(N'2022-01-05 00:00:00.000' AS DateTime), NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SACH] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SACH]
GO
USE [master]
GO
ALTER DATABASE [ShoesE] SET  READ_WRITE 
GO
