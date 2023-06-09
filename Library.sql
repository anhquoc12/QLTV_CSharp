USE [Library]
GO
/****** Object:  Table [dbo].[ChiTietPhieuMuon]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPhieuMuon](
	[MaCTPM] [varchar](10) NOT NULL,
	[MaSach] [varchar](6) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[MaPM] [varchar](6) NOT NULL,
	[TienDatCoc] [money] NOT NULL,
 CONSTRAINT [PK_ChiTietPhieuMuon] PRIMARY KEY CLUSTERED 
(
	[MaCTPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocGia]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocGia](
	[MaDocGia] [varchar](6) NOT NULL,
	[TenDocGia] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[NgaySinh] [date] NOT NULL,
 CONSTRAINT [PK_DocGia] PRIMARY KEY CLUSTERED 
(
	[MaDocGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonTraSach]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonTraSach](
	[MaHD] [varchar](6) NOT NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[MaPM] [varchar](6) NOT NULL,
	[TienThanhToan] [money] NOT NULL,
 CONSTRAINT [PK_HoaDonTraSach] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](6) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuMuon]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuMuon](
	[MaPM] [varchar](6) NOT NULL,
	[NgayLapPhieu] [datetime] NOT NULL,
	[MaDocGia] [varchar](6) NOT NULL,
 CONSTRAINT [PK_PhieuMuon] PRIMARY KEY CLUSTERED 
(
	[MaPM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [varchar](6) NOT NULL,
	[TenSach] [nvarchar](max) NOT NULL,
	[TheLoai] [nvarchar](50) NOT NULL,
	[GiaNhap] [money] NOT NULL,
	[MaTacGia] [varchar](6) NOT NULL,
	[MaNCC] [varchar](6) NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TacGia]    Script Date: 4/14/2023 9:02:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TacGia](
	[MaTacGia] [varchar](6) NOT NULL,
	[TenTacGia] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TacGia] PRIMARY KEY CLUSTERED 
(
	[MaTacGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00001', N'SA0009', 2, N'PM0001', 430000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00002', N'SA0044', 1, N'PM0001', 280000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00003', N'SA0014', 2, N'PM0001', 913000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00004', N'SA0041', 4, N'PM0001', 383000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00005', N'SA0011', 5, N'PM0001', 300000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00006', N'SA0017', 3, N'PM0001', 125000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00007', N'SA0023', 3, N'PM0002', 683000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00008', N'SA0043', 5, N'PM0002', 450000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00009', N'SA0034', 1, N'PM0002', 369000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00010', N'SA0045', 1, N'PM0002', 300000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00011', N'SA0013', 1, N'PM0003', 180000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00012', N'SA0040', 2, N'PM0003', 910000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00013', N'SA0021', 3, N'PM0004', 554000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00014', N'SA0028', 3, N'PM0004', 340000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00015', N'SA0031', 3, N'PM0004', 294000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00016', N'SA0042', 5, N'PM0004', 424000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00017', N'SA0007', 4, N'PM0005', 775000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00018', N'SA0018', 2, N'PM0005', 911000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00019', N'SA0002', 5, N'PM0006', 866000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00020', N'SA0025', 1, N'PM0006', 484000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00021', N'SA0001', 4, N'PM0006', 802000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00022', N'SA0037', 2, N'PM0006', 790000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00023', N'SA0004', 4, N'PM0006', 524000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00024', N'SA0024', 2, N'PM0007', 106000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00025', N'SA0006', 4, N'PM0007', 128000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00026', N'SA0035', 2, N'PM0007', 727000.0000)
INSERT [dbo].[ChiTietPhieuMuon] ([MaCTPM], [MaSach], [SoLuong], [MaPM], [TienDatCoc]) VALUES (N'CTPM00027', N'SA0010', 2, N'PM0007', 137000.0000)
GO
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0001', N'Ken Sánchez', N'6975550142', CAST(N'2009-01-07' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0002', N'Terri Duffy', N'8195550175', CAST(N'2008-01-24' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0003', N'Roberto Tamburello', N'2125550187', CAST(N'2007-11-04' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0004', N'Rob Walters', N'6125550100', CAST(N'2007-11-28' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0005', N'Gail Erickson', N'8495550139', CAST(N'2007-12-30' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0006', N'Jossef Goldberg', N'1225550189', CAST(N'2013-12-16' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0007', N'Dylan Miller', N'1815550156', CAST(N'2009-02-01' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0008', N'Diane Margheim', N'8155550138', CAST(N'2008-12-22' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0009', N'Gigi Matthew', N'1855550186', CAST(N'2009-01-09' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0010', N'Michael Raheem', N'3305552568', CAST(N'2009-04-26' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0011', N'Ovidiu Cracium', N'7195550181', CAST(N'2010-11-28' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0012', N'Thierry D''Hers', N'1685550183', CAST(N'2007-12-04' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0013', N'Janice Galvin', N'4735550117', CAST(N'2010-12-16' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0014', N'Michael Sullivan', N'4655550156', CAST(N'2010-12-23' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0015', N'Sharon Salavaria', N'9705550138', CAST(N'2011-01-11' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0016', N'David Bradley', N'9135550172', CAST(N'2007-12-13' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0017', N'Kevin Brown', N'1505550189', CAST(N'2007-01-19' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0018', N'John Wood', N'4865550150', CAST(N'2011-01-31' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0019', N'Mary Dempsey', N'1245550114', CAST(N'2011-02-07' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0020', N'Wanida Benshoof', N'7085550141', CAST(N'2010-12-31' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0021', N'Terry Eminhizer', N'1385550118', CAST(N'2009-02-23' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0022', N'Sariya Harnpadoungsataya', N'3995550176', CAST(N'2008-12-05' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0023', N'Mary Gibson', N'5315550183', CAST(N'2009-01-05' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0024', N'Jill Williams', N'5105550121', CAST(N'2009-01-11' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0025', N'James Hamilton', N'8705550122', CAST(N'2009-01-27' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0026', N'Peter Krebs', N'9135550196', CAST(N'2008-11-24' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0027', N'Jo Brown', N'6325550129', CAST(N'2008-02-20' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0028', N'Guy Gilbert', N'3205550195', CAST(N'2006-06-23' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0029', N'Mark McArthur', N'4175550154', CAST(N'2009-01-16' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0030', N'Britta Simon', N'9555550169', CAST(N'2009-01-22' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0031', N'Margie Shoop', N'8185550128', CAST(N'2008-12-28' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0032', N'Rebecca Laszlo', N'3145550113', CAST(N'2008-12-22' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0033', N'Annik Stahl', N'4995550125', CAST(N'2008-12-10' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0034', N'Suchitra Mohan', N'7535550129', CAST(N'2009-02-09' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0035', N'Brandon Heidepriem', N'4295550137', CAST(N'2009-02-01' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0036', N'Jose Lugo', N'5875550115', CAST(N'2009-02-03' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0037', N'Chris Okelberry', N'3155550144', CAST(N'2009-02-28' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0038', N'Kim Abercrombie', N'2085550114', CAST(N'2010-01-09' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0039', N'Ed Dudenhoefer', N'9195550140', CAST(N'2010-01-29' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0040', N'JoLynn Dobney', N'9035550145', CAST(N'2007-12-19' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0041', N'Bryan Baker', N'7125550113', CAST(N'2009-01-14' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0042', N'James Kramer', N'1195550117', CAST(N'2008-12-20' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0043', N'Nancy Anderson', N'9705550118', CAST(N'2008-12-26' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0044', N'Simon Rapier', N'9635550134', CAST(N'2008-12-01' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0045', N'Thomas Michaels', N'2785550118', CAST(N'2009-02-19' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0046', N'Eugene Kogan', N'1735550179', CAST(N'2009-02-01' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0047', N'Andrew Hill', N'9085550159', CAST(N'2009-02-15' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0048', N'Ruth Ellerbrock', N'1455550130', CAST(N'2007-12-30' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0049', N'Barry Johnson', N'2065550180', CAST(N'2013-11-29' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0050', N'Sidney Higa', N'4245550189', CAST(N'2008-01-26' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0051', N'Jeffrey Ford', N'9845550185', CAST(N'2008-02-13' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0052', N'Doris Hartwig', N'3285550150', CAST(N'2014-01-31' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0053', N'Diane Glimp', N'2025550151', CAST(N'2008-03-21' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0054', N'Bonnie Kearney', N'2645550150', CAST(N'2009-12-25' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0055', N'Taylor Maxwell', N'5085550165', CAST(N'2013-12-31' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0056', N'Denise Smith', N'8695550119', CAST(N'2009-01-29' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0057', N'Frank Miller', N'1675550139', CAST(N'2009-02-16' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0058', N'Kendall Keil', N'1385550128', CAST(N'2008-11-28' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0059', N'Bob Hohman', N'6115550116', CAST(N'2008-12-17' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0060', N'Pete Male', N'7685550123', CAST(N'2009-01-04' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0061', N'Diane Tibbott', N'3615550180', CAST(N'2009-01-11' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0062', N'John Campbell', N'4355550113', CAST(N'2014-02-07' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0063', N'Maciej Dusza', N'2375550128', CAST(N'2010-01-22' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0064', N'Michael Zwilling', N'5825550148', CAST(N'2010-02-16' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0065', N'Randy Reeves', N'9615550122', CAST(N'2010-02-16' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0066', N'Karan Khanna', N'4475550186', CAST(N'2009-12-15' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0067', N'Jay Adams', N'4075550165', CAST(N'2009-02-26' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0068', N'Charles Fitzgerald', N'9315550118', CAST(N'2009-11-26' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0069', N'Steve Masters', N'7125550170', CAST(N'2009-02-08' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0070', N'David Ortiz', N'7125550119', CAST(N'2008-12-08' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0071', N'Michael Ray', N'1565550199', CAST(N'2009-02-08' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0072', N'Steven Selikoff', N'9255550114', CAST(N'2008-11-24' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0073', N'Carole Poland', N'6885550192', CAST(N'2008-12-12' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0074', N'Bjorn Rettig', N'1995550117', CAST(N'2008-12-31' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0075', N'Michiko Osada', N'9845550148', CAST(N'2009-01-19' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0076', N'Carol Philips', N'6095550153', CAST(N'2009-02-05' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0077', N'Merav Netz', N'2245550187', CAST(N'2009-02-24' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0078', N'Reuben D''sa', N'1915550112', CAST(N'2008-12-08' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0079', N'Eric Brown', N'6805550118', CAST(N'2010-01-17' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0080', N'Sandeep Kaliyath', N'1665550156', CAST(N'2010-01-10' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0081', N'Mihail Frintu', N'7335550128', CAST(N'2009-12-22' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0082', N'Jack Creasey', N'5215550113', CAST(N'2010-02-24' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0083', N'Patrick Cook', N'4255550117', CAST(N'2010-02-05' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0084', N'Frank Martinez', N'2035550196', CAST(N'2010-01-29' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0085', N'Brian Goldstein', N'7305550117', CAST(N'2009-12-04' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0086', N'Ryan Cornelsen', N'2085550114', CAST(N'2008-12-29' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0087', N'Cristian Petculescu', N'4345550133', CAST(N'2008-12-15' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0088', N'Betsy Stadick', N'4055550171', CAST(N'2009-12-11' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0089', N'Patrick Wedge', N'4135550124', CAST(N'2010-01-25' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0090', N'Danielle Tiedt', N'5005550172', CAST(N'2010-02-13' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0091', N'Kimberly Zimmerman', N'1235550167', CAST(N'2010-01-05' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0092', N'Tom Vande Velde', N'2955550161', CAST(N'2010-03-03' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0093', N'Kok-Ho Loh', N'9995550155', CAST(N'2008-12-20' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0094', N'Russell Hunter', N'7865550144', CAST(N'2008-12-05' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0095', N'Jim Scardelis', N'6795550113', CAST(N'2008-12-12' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0096', N'Elizabeth Keyser', N'3185550137', CAST(N'2009-02-23' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0097', N'Mandar Samant', N'1405550132', CAST(N'2009-02-03' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0098', N'Sameer Tejani', N'9905550172', CAST(N'2009-02-04' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0099', N'Nuan Yu', N'9135550184', CAST(N'2008-12-30' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0100', N'Ngô Hữu Thạch', N'0974263890', CAST(N'2002-02-05' AS Date))
GO
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0101', N'Nguyễn Anh Quốc', N'0858038081', CAST(N'2002-12-24' AS Date))
INSERT [dbo].[DocGia] ([MaDocGia], [TenDocGia], [SDT], [NgaySinh]) VALUES (N'DG0102', N'Nguyễn Hữu Nghĩa', N'0917357871', CAST(N'2004-10-11' AS Date))
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC001', N'Exotic Liquids', N'1715552222', N'CharlotteCooper@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC002', N'New Orleans Cajun Delights', N'1005554822', N'ShelleyBurke@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC003', N'Grandma Kelly''s Homestead', N'3135555735', N'ReginaMurphy@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC004', N'Tokyo Traders', N'0335555011', N'YoshiNagase@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC005', N'Cooperativa de Quesos ''Las Cabras''', N'985987654', N'AntoniodelValleSaavedra@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC006', N'Mayumi''s', N'064317877', N'MayumiOhno@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC007', N'Pavlova, Ltd.', N'034442343', N'IanDevling@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC008', N'Specialty Biscuits, Ltd.', N'1615554448', N'PeterWilson@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC009', N'PB Knäckebröd AB', N'0319876543', N'LarsPeterson@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC010', N'Refrescos Americanas LTDA', N'115554640', N'CarlosDiaz@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC011', N'Heli Süßwaren GmbH & Co. KG', N'0109984510', N'PetraWinkler@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC012', N'Plutzer Lebensmittelgroßmärkte AG', N'069992755', N'MartinBein@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC013', N'Nord-Ost-Fisch Handelsgesellschaft mbH', N'047218713', N'SvenPetersen@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC014', N'Formaggi Fortini s.r.l.', N'054460323', N'ElioRossi@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC015', N'Norske Meierier', N'02953010', N'BeateVileid@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC016', N'Bigfoot Breweries', N'5035559931', N'CherylSaylor@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC017', N'Svensk Sjöföda AB', N'081234567', N'MichaelBjörn@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC019', N'New England Seafood Cannery', N'6175553267', N'RobbMerchant@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC020', N'Leka Trading', N'5558787', N'ChandraLeka@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC021', N'Lyngbysild', N'43844108', N'NielsPetersen@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC022', N'Zaanse Snoepfabriek', N'123451212', N'DirkLuchte@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC023', N'Karkki Oy', N'95310956', N'AnneHeikkonen@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC024', N'G''day, Mate', N'025555914', N'WendyMackenzie@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC025', N'Ma Maison', N'5145559022', N'Jean-GuyLauzon@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC026', N'Pasta Buttini s.r.l.', N'0896547665', N'GiovanniGiudici@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [SDT], [Email]) VALUES (N'NCC029', N'Forêts d''érables', N'5145552955', N'ChantalGoulet@gmail.com')
GO
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0001', CAST(N'2022-03-18T00:00:00.000' AS DateTime), N'DG0007')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0002', CAST(N'2022-03-19T00:00:00.000' AS DateTime), N'DG0015')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0003', CAST(N'2022-03-20T00:00:00.000' AS DateTime), N'DG0078')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0004', CAST(N'2022-03-21T00:00:00.000' AS DateTime), N'DG0016')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0005', CAST(N'2022-03-22T00:00:00.000' AS DateTime), N'DG0002')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0006', CAST(N'2022-03-23T00:00:00.000' AS DateTime), N'DG0055')
INSERT [dbo].[PhieuMuon] ([MaPM], [NgayLapPhieu], [MaDocGia]) VALUES (N'PM0007', CAST(N'2022-03-24T00:00:00.000' AS DateTime), N'DG0056')
GO
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0001', N'Harry Potter và Hòn đá phù thủy', N'Tiểu thuyết', 802000.0000, N'TG0001', N'NCC004', 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0002', N'Harry Potter và Phòng chứa bí mật', N'Tiểu thuyết', 866000.0000, N'TG0001', N'NCC020', 3)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0003', N'Harry Potter và Hội Phượng Hoàng', N'Tiểu thuyết', 830000.0000, N'TG0001', N'NCC024', 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0004', N'Đắc nhân tâm', N'Kiến thức phổ thông', 524000.0000, N'TG0002', N'NCC017', 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0005', N'Mắt biếc', N'SA0005', 470000.0000, N'TG0003', N'NCC006', 20)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0006', N'Tiếng anh giao tiếp cho người mới bắt đầu', N'Kỹ năng mềm', 128000.0000, N'TG0004', N'NCC022', 11)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0007', N'Tôi tài giỏi, bạn cũng thế', N'Kiến thức phổ thông', 775000.0000, N'TG0005', N'NCC004', 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0008', N'Nhà Giả Kim', N'Tiểu thuyết', 148000.0000, N'TG0006', N'NCC013', 17)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0009', N'Nghệ thuật sống thọ', N'Kiến thức phổ thông', 430000.0000, N'TG0007', N'NCC016', 19)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0010', N'Bắt trẻ đồng xanh', N'Tiểu thuyết', 137000.0000, N'TG0003', N'NCC008', 19)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0011', N'Khi đàn ông yêu', N'Tiểu thuyết', 300000.0000, N'TG0008', N'NCC001', 3)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0012', N'Đi tìm lẽ sống', N'Kiến thức phổ thông', 167000.0000, N'TG0009', N'NCC007', 12)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0013', N'Think and Grow Rich', N'Kiến thức phổ thông', 180000.0000, N'TG0010', N'NCC024', 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0014', N'Người giàu nhất thành Babylon', N'Kiến thức phổ thông', 913000.0000, N'TG0011', N'NCC002', 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0015', N'Tiếng Anh cho người mới bắt đầu', N'Kỹ năng mềm', 890000.0000, N'TG0012', N'NCC019', 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0016', N'Giải mã giấc mơ', N'Kiến thức phổ thông', 978000.0000, N'TG0013', N'NCC019', 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0017', N'Tư duy tích cực', N'Kiến thức phổ thông', 125000.0000, N'TG0014', N'NCC020', 11)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0018', N'Hai số phận', N'Tiểu thuyết', 911000.0000, N'TG0003', N'NCC023', 3)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0019', N'Cách nghĩ để thành công', N'Kiến thức phổ thông', 175000.0000, N'TG0010', N'NCC006', 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0020', N'Làn sóng xanh', N'Tiểu thuyết', 993000.0000, N'TG0015', N'NCC026', 19)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0021', N'Nhà giả kim (bản tiếng Việt)', N'Tiểu thuyết', 554000.0000, N'TG0006', N'NCC010', 11)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0022', N'Trên đường băng', N'Tiểu thuyết', 255000.0000, N'TG0016', N'NCC015', 17)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0023', N'Phong cách sống Hygge: Bí mật hạnh phúc người Đan Mạch', N'Kiến thức phổ thông', 683000.0000, N'TG0017', N'NCC002', 3)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0024', N'Kiếm hiệp Kim Dung: Bộ tám truyện', N'Văn học nước ngoài', 106000.0000, N'TG0018', N'NCC011', 16)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0025', N'Chúa tể những chiếc nhẫn: Phần 1-3', N'Văn học nước ngoài', 484000.0000, N'TG0019', N'NCC023', 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0026', N'Lập trình với Python', N'Kỹ năng mềm', 192000.0000, N'TG0020', N'NCC005', 11)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0027', N'Bóng ma trong nhà hát', N'Văn học nước ngoài', 412000.0000, N'TG0021', N'NCC012', 9)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0028', N'Bí quyết giữ chồng', N'Kiến thức phổ thông', 340000.0000, N'TG0022', N'NCC014', 6)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0029', N'Phong cách lãnh đạo dành cho người phụ nữ', N'Kỹ năng mềm', 345000.0000, N'TG0023', N'NCC026', 12)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0030', N'Nhà Giả Kim (bản tiếng Anh)', N'Tiểu thuyết', 954000.0000, N'TG0006', N'NCC010', 8)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0031', N'Chuyện con mèo dạy hải âu bay', N'Tiểu thuyết', 294000.0000, N'TG0003', N'NCC012', 10)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0032', N'Bán đảo Peninsula: Nơi hoang sơ nhất Việt Nam', N'Sách du lịch', 504000.0000, N'TG0024', N'NCC025', 17)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0033', N'Cẩm nang nuôi dạy con từ 0-10 tuổi', N'Kiến thức phổ thông', 941000.0000, N'TG0025', N'NCC011', 4)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0034', N'Tôi là Bá Chủ Cuộc Đời', N'Kiến thức phổ thông', 369000.0000, N'TG0026', N'NCC019', 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0035', N'Tiếng Chim Hót Trong Bụi Mận Gai', N'Văn học nước ngoài', 727000.0000, N'TG0027', N'NCC026', 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0036', N'Tư duy tích cực', N'Kiến thức phổ thông', 984000.0000, N'TG0028', N'NCC008', 5)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0037', N'Nghìn Lẻ Một Đêm', N'Văn học nước ngoài', 790000.0000, N'TG0029', N'NCC008', 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0038', N'Tôi Tài Giỏi - Bạn Cũng Thế', N'Kiến thức phổ thông', 265000.0000, N'TG0005', N'NCC010', 13)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0039', N'Những Người Khốn Khổ', N'Văn học nước ngoài', 125000.0000, N'TG0030', N'NCC015', 1)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0040', N'Bàn tay nhỏ xíu', N'Văn học nước ngoài', 910000.0000, N'TG0031', N'NCC029', 2)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0041', N'Người Nhện: Người đàn ông đầu tiên (tập 1)', N'Truyện tranh', 383000.0000, N'TG0032', N'NCC029', 20)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0042', N'Tôi Tài Giỏi, Bạn Cũng Thế (Tập 2)', N'Kiến thức phổ thông', 424000.0000, N'TG0005', N'NCC021', 14)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0043', N'Mặt trời vẫn mọc', N'Văn học nước ngoài', 450000.0000, N'TG0033', N'NCC009', 14)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0044', N'Cho tôi một vé đi tuổi thơ', N'Tiểu thuyết', 280000.0000, N'TG0001', N'NCC001', 14)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0045', N'Mặt Trời Vẫn Mọc', N'Văn học nước Ngoài', 300000.0000, N'TG0033', N'NCC004', 15)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0046', N'Hai số phận (Test)', N'Tiểu thuyết', 900000.0000, N'TG0003', N'NCC023', 30)
INSERT [dbo].[Sach] ([MaSach], [TenSach], [TheLoai], [GiaNhap], [MaTacGia], [MaNCC], [SoLuong]) VALUES (N'SA0047', N'Harry Potter và Hòn đá phù thủy (Tái Bản)', N'Tiểu thuyết', 802000.0000, N'TG0001', N'NCC001', 16)
GO
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0001', N'J.K. Rowling', N'0203111254', N'Rowling@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0002', N'Dale Carnegie', N'0396948886', N'Carnegie@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0003', N'Nguyễn Nhật Ánh', N'0627068173', N'Anh@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0004', N'Phạm Văn Toàn', N'0832005747', N'Van@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0005', N'Adam Khoo', N'0173289648', N'Khoo@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0006', N'Paulo Coelho', N'0557936236', N'Coelho@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0007', N'Viktor E. Frankl', N'0305735283', N'Frankl@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0008', N'Nhật Linh', N'0365940500', N'Linh@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0009', N'Nguyễn Hiền Lê', N'0658126930', N'Le@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0010', N'Napoleon Hill', N'0241444825', N'Hill@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0011', N'George S. Clason', N'0797024630', N'Clason@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0012', N'Trần Văn Toàn', N'0184058714', N'Toàn@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0013', N'Sigmund Freud', N'0435792618', N'Freud@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0014', N'Phan Ðặng Nhật Nam', N'0978384508', N'Nam@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0015', N'Trần Nhật Phong', N'0614133027', N'Phong@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0016', N'Nguyễn Phan Quý Mai', N'0588251401', N'Mai@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0017', N'Meik Wiking', N'0119355489', N'Wiking@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0018', N'Kim Dung', N'0436505956', N'Dung@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0019', N'J.R.R. Tolkien', N'0315959792', N'Tolkien@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0020', N'Matt Rassett', N'0959792006', N'Rassett@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0021', N'Gaston Leroux', N'0823711420', N'Leroux@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0022', N'Michelle McKinney Hammond', N'0798341879', N'Hammond@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0023', N'Nancy D. OReilly', N'0793330266', N'OReilly@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0024', N'Phạm Trần', N'0367342199', N'Tran@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0025', N'Trần Thị Thu Thuỷ', N'0175675131', N'Thuy@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0026', N'Tony Robbins', N'0935259489', N'Robbins@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0027', N'Colleen McCullough', N'0397063805', N'McCullough@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0028', N'Norman Vincent Peale', N'0951280000', N'Peale@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0029', N'Tác giả không rõ', N'null', N'null')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0030', N'Victor Hugo', N'0302774033', N'Hugo@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0031', N'Wilhelm Grimm và Jacob Grimm', N'0768309881', N'Grimm@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0032', N'Stan Lee và Steve Ditko', N'0619191086', N'Ditko@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0033', N'Ernest Hemingway', N'0131941404', N'Hemingway@gmail.com')
INSERT [dbo].[TacGia] ([MaTacGia], [TenTacGia], [SDT], [Email]) VALUES (N'TG0034', N'Vũ Trọng Phụng', N'0813984342', N'phungvt@gmail.com')
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuMuon_PhieuMuon] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PhieuMuon] ([MaPM])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon] CHECK CONSTRAINT [FK_ChiTietPhieuMuon_PhieuMuon]
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietPhieuMuon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietPhieuMuon] CHECK CONSTRAINT [FK_ChiTietPhieuMuon_Sach]
GO
ALTER TABLE [dbo].[HoaDonTraSach]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonTraSach_PhieuMuon] FOREIGN KEY([MaPM])
REFERENCES [dbo].[PhieuMuon] ([MaPM])
GO
ALTER TABLE [dbo].[HoaDonTraSach] CHECK CONSTRAINT [FK_HoaDonTraSach_PhieuMuon]
GO
ALTER TABLE [dbo].[PhieuMuon]  WITH CHECK ADD  CONSTRAINT [FK_PhieuMuon_DocGia] FOREIGN KEY([MaDocGia])
REFERENCES [dbo].[DocGia] ([MaDocGia])
GO
ALTER TABLE [dbo].[PhieuMuon] CHECK CONSTRAINT [FK_PhieuMuon_DocGia]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_NhaCungCap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_NhaCungCap]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TacGia] FOREIGN KEY([MaTacGia])
REFERENCES [dbo].[TacGia] ([MaTacGia])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TacGia]
GO
