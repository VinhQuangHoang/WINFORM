USE [QLSHOPQA]
GO
/****** Object:  Table [dbo].[tb_Loai]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_Loai](
	[MaHang] [nvarchar](50) NOT NULL,
	[Loai] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tb_Loai] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHang]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHang](
	[MaHang] [nvarchar](50) NOT NULL,
	[TenHang] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Loai] [nvarchar](10) NULL,
	[Gia] [float] NULL,
	[NhaCungCap] [nvarchar](50) NULL,
	[Hinh] [nvarchar](100) NULL,
	[TThai] [int] NULL,
 CONSTRAINT [PK_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoaDon]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[LoaiHang] [nchar](10) NULL,
	[TenHang] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Giam] [float] NULL,
	[Tong] [float] NULL,
	[TenNV] [nvarchar](50) NULL,
	[TThai] [int] NULL,
	[DaTru] [char](1) NULL,
	[Trung] [int] NULL,
	[NgayLap] [date] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhachHang]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[SoLanDaMua] [int] NULL,
	[SDT] [char](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhanVien]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[CMND] [int] NULL,
	[Dchi] [nvarchar](50) NULL,
	[SDT] [char](12) NULL,
	[TThai] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTKNV]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTKNV](
	[MaNV] [nvarchar](20) NOT NULL,
	[TK] [nvarchar](50) NULL,
	[MK] [nvarchar](50) NULL,
	[TThai] [int] NULL,
 CONSTRAINT [PK_tbTKNV] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tb_Loai] ([MaHang], [Loai]) VALUES (N'AK1', N'AK')
INSERT [dbo].[tb_Loai] ([MaHang], [Loai]) VALUES (N'AO1', N'AO')
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'AK1', N'Áo Khoác Nam', 9, N'AK', 550, N'GUCCI', N'D:\workspace\DOANPQSHOP\Img\image\Quanao_1.jpg', 0)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'AO1', N'Bộ Đồ Dũi Nam', 0, N'AO', 280, N'LoisVuiton', N'D:\workspace\DOANPQSHOP\Img\image\Quanao_4.jpg', 1)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'GA1', N'Nike Paranoi', 1, N'GA', 550, N'Nike', N'D:\workspace\DOANPQSHOP\Img\image\Giay_1.jpg', 1)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'GA2', N'Dép ', 9, N'GA', 250, N'GAa', N'D:\workspace\DOANPQSHOP\Img\image\3ee2175d7a6ab583ed4e6f89c3014355.jpg', 1)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'PK1', N'Ba Lô VL', 4, N'PK', 456, N'VL', N'D:\workspace\DOANPQSHOP\Img\image\Phukien_2.jpg', 1)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'PK2', N'Thắt Lưng Nam', 0, N'PK', 240, N'GUCCI', N'D:\workspace\DOANPQSHOP\Img\image\Phukien_0.jpg', 1)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'PK3', N'Đồng Hồ Luis Vuithon Purple Watch', 2, N'PK', 10000000, N'AKHA', N'D:\workspace\DOANPQSHOP\Img\image\Phukien_1.jpg', 1)
INSERT [dbo].[tbHang] ([MaHang], [TenHang], [SoLuong], [Loai], [Gia], [NhaCungCap], [Hinh], [TThai]) VALUES (N'QN1', N'Quần Đùi', 87, N'QN', 207, N'Lacoste', N'D:\workspace\DOANPQSHOP\Img\image\images (1).jpg', 1)
SET IDENTITY_INSERT [dbo].[tbHoaDon] ON 

INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (1, N'AO        ', N'Bộ Đồ Dũi Nam', 2, 0, 280, N'Hoàng Vinh Râu', 0, N'Y', 1, CAST(N'2020-06-27' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (2, N'GA        ', N'Nike Paranoi', 1, 137.5, 412.5, N'Buồi Cuốc Bẩu', 0, N'Y', 1, CAST(N'2020-06-27' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (3, N'BL        ', N'Ba Lô VL', 1, 0, 456, N'Hoàng Vinh Râu', 0, N'Y', 1, CAST(N'2020-06-27' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (4, N'GA        ', N'Nike Paranoi', 2, 77, 1023, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-06-27' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (5, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-06-27' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (7, N'AK        ', N'Áo Khoác Nam', 3, 0, 1650, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-06-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (8, N'GA        ', N'Nike Paranoi', 2, 0, 1100, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-06-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (9, N'PK        ', N'Ba Lô VL', 2, 0, 912, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-06-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (10, N'PK        ', N'Ba Lô VL', 1, 0, 456, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-06-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (11, N'QN        ', N'Quần Đùi', 5, 0, 1035, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (13, N'PK        ', N'Ba Lô VL', 1, 0, 456, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (14, N'AO        ', N'Bộ Đồ Dũi Nam', 2, 0, 560, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (15, N'QN        ', N'Quần Đùi', 1, 0, 207, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (19, N'AO        ', N'Bộ Đồ Dũi Nam', 2, 0, 280, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (25, N'AK        ', N'Áo Khoác Nam', 2, 0, 1100, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (26, N'GA        ', N'Nike Paranoi', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (27, N'AO        ', N'Bộ Đồ Dũi Nam', 1, 0, 280, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (28, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (29, N'AO        ', N'Bộ Đồ Dũi Nam', 1, 0, 280, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-27' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (60, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Buồi Cuốc Bẩu', 1, N'Y', 1, CAST(N'2020-07-28' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (61, N'GA        ', N'Nike Paranoi', 1, 0, 550, N'Buồi Cuốc Bẩu', 1, N'Y', 1, CAST(N'2020-07-28' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (62, N'PK        ', N'Thắt Lưng Nam', 2, 0, 480, N'Buồi Cuốc Bẩu', 1, N'Y', 1, CAST(N'2020-07-28' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (64, N'AO        ', N'Bộ Đồ Dũi Nam', 3, 0, 840, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (65, N'PK        ', N'Thắt Lưng Nam', 5, 0, 1200, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (71, N'PK        ', N'Ba Lô VL', 1, 0, 456, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (73, N'QN        ', N'Quần Đùi', 1, 0, 207, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (74, N'PK        ', N'Ba Lô VL', 1, 25.15, 456, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 2)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (91, N'AK        ', N'Áo Khoác Nam', 1, 22.0375, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (92, N'PK        ', N'Ba Lô VL', 1, 22.0375, 456, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (93, N'QN        ', N'Quần Đùi', 1, 22.0375, 207, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (94, N'GA        ', N'Nike Paranoi', 1, 22.0375, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (96, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (106, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (109, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (110, N'QN        ', N'Quần Đùi', 1, 0, 207, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-29' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (111, N'QN        ', N'Quần Đùi', 2, 0, 414, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), 15)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (112, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), 16)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (113, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), 17)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (116, N'AK        ', N'Áo Khoác Nam', 1, 27.5, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (117, N'GA        ', N'Nike Paranoi', 1, 27.5, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), 14)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (118, N'AK        ', N'Áo Khoác Nam', 1, 0, 550, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (119, N'GA        ', N'Dép ', 3, 0, 750, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (120, N'AK        ', N'Áo Khoác Nam', 3, 0, 1650, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), NULL)
INSERT [dbo].[tbHoaDon] ([MaHoaDon], [LoaiHang], [TenHang], [SoLuong], [Giam], [Tong], [TenNV], [TThai], [DaTru], [Trung], [NgayLap], [MaKH]) VALUES (121, N'AO        ', N'Bộ Đồ Dũi Nam', 2, 43.875, 560, N'Hoàng Vinh Râu', 1, N'Y', 1, CAST(N'2020-07-30' AS Date), 14)
SET IDENTITY_INSERT [dbo].[tbHoaDon] OFF
SET IDENTITY_INSERT [dbo].[tbKhachHang] ON 

INSERT [dbo].[tbKhachHang] ([MaKH], [SoLanDaMua], [SDT]) VALUES (2, 10, N'0933721811 ')
INSERT [dbo].[tbKhachHang] ([MaKH], [SoLanDaMua], [SDT]) VALUES (14, 3, N'0948535453 ')
INSERT [dbo].[tbKhachHang] ([MaKH], [SoLanDaMua], [SDT]) VALUES (15, 1, N'0907231374 ')
INSERT [dbo].[tbKhachHang] ([MaKH], [SoLanDaMua], [SDT]) VALUES (16, 1, N'0976795159 ')
INSERT [dbo].[tbKhachHang] ([MaKH], [SoLanDaMua], [SDT]) VALUES (17, 1, N'0615616669 ')
INSERT [dbo].[tbKhachHang] ([MaKH], [SoLanDaMua], [SDT]) VALUES (18, 0, N'0972661159 ')
SET IDENTITY_INSERT [dbo].[tbKhachHang] OFF
INSERT [dbo].[tbNhanVien] ([MaNV], [HoTen], [CMND], [Dchi], [SDT], [TThai]) VALUES (N'NV01', N'Hoàng Vinh Râu', 2711651, N'Lý Tự Trọng, Quận 1', N'0988221112  ', 1)
INSERT [dbo].[tbNhanVien] ([MaNV], [HoTen], [CMND], [Dchi], [SDT], [TThai]) VALUES (N'NV02', N'Buồi Cuốc Bẩu', 22881723, N'Bình Dương', N'090112983   ', 1)
INSERT [dbo].[tbNhanVien] ([MaNV], [HoTen], [CMND], [Dchi], [SDT], [TThai]) VALUES (N'NV03', N'Lê Thanh Tờ', 2132144, N'Long An', N'0933112312  ', 1)
INSERT [dbo].[tbNhanVien] ([MaNV], [HoTen], [CMND], [Dchi], [SDT], [TThai]) VALUES (N'NV04', N'Nguyen Van A', 123121241, N'Q1', N'0998788745  ', 1)
INSERT [dbo].[tbTKNV] ([MaNV], [TK], [MK], [TThai]) VALUES (N'NV01', N'Nv01', N'HqZfsXQ4mQ0BsuLTx80F+w==', 1)
INSERT [dbo].[tbTKNV] ([MaNV], [TK], [MK], [TThai]) VALUES (N'NV02', N'Nv02', N'anob4w/PSjTAOAhF9lyCbQ==', 1)
INSERT [dbo].[tbTKNV] ([MaNV], [TK], [MK], [TThai]) VALUES (N'NV03', N'Nv03', N'VBhyHKWWscaDbC7Z1jXYxA==', 1)
INSERT [dbo].[tbTKNV] ([MaNV], [TK], [MK], [TThai]) VALUES (N'NV04', N'NV04', N'a5QCKUkzzgKpHn8aEKw4gg==', 1)
ALTER TABLE [dbo].[tb_Loai]  WITH CHECK ADD  CONSTRAINT [fk_LoaiHang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[tbHang] ([MaHang])
GO
ALTER TABLE [dbo].[tb_Loai] CHECK CONSTRAINT [fk_LoaiHang]
GO
ALTER TABLE [dbo].[tbHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_MAKHHD] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tbKhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[tbHoaDon] CHECK CONSTRAINT [FK_MAKHHD]
GO
ALTER TABLE [dbo].[tbTKNV]  WITH CHECK ADD  CONSTRAINT [fk_MANV_TKNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tbNhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[tbTKNV] CHECK CONSTRAINT [fk_MANV_TKNV]
GO
/****** Object:  StoredProcedure [dbo].[InfoHD]    Script Date: 7/30/2020 3:17:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InfoHD]
as
begin
	select *
	from tbHoaDon
end
GO
