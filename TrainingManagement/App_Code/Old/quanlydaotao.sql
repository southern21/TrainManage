USE [quanlydaotao]
GO
/****** Object:  Table [dbo].[tblDangNhap]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblDangNhap](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [nvarchar](100) NOT NULL,
	[permisson] [nvarchar](100) NULL,
 CONSTRAINT [PK_taikhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblDiemHP]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiemHP](
	[idsv] [int] IDENTITY(1,1) NOT NULL,
	[idmon] [int] NOT NULL,
	[diemlan1] [float] NULL,
	[diemlan2] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHocKy]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHocKy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mahocky] [nchar](10) NOT NULL,
	[tenhocky] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblHocKy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLop]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[malop] [nchar](10) NOT NULL,
	[tenlop] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblLop] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMonHP]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHP](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idhk] [int] NOT NULL,
	[mamon] [nchar](10) NOT NULL,
	[tenmon] [nvarchar](100) NOT NULL,
	[sotinchi] [int] NOT NULL,
 CONSTRAINT [PK_tblMonHP] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idlop] [int] NOT NULL,
	[masv] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThongTinQT]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThongTinQT](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idtaikhoan] [int] NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[ngaysinh] [date] NULL,
	[gioitinh] [nvarchar](3) NULL,
	[diachi] [nvarchar](100) NULL,
	[khoa] [nvarchar](100) NULL,
	[chucvu] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblThongTin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThongTinSV]    Script Date: 6/4/2017 5:37:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThongTinSV](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idtaikhoan] [int] NOT NULL,
	[idsinhvien] [int] NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[ngaysinh] [date] NULL,
	[noisinh] [nvarchar](100) NULL,
	[gioitinh] [nvarchar](3) NULL,
	[khoa] [nvarchar](100) NULL,
	[nganhhoc] [nvarchar](100) NULL,
	[chuyennganh] [nvarchar](100) NULL,
	[khoahoc] [nvarchar](100) NULL,
 CONSTRAINT [PK_tblThongTinSV] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[tblDiemHP]  WITH CHECK ADD  CONSTRAINT [FK_tblDiemHP_tblMonHP] FOREIGN KEY([idmon])
REFERENCES [dbo].[tblMonHP] ([id])
GO
ALTER TABLE [dbo].[tblDiemHP] CHECK CONSTRAINT [FK_tblDiemHP_tblMonHP]
GO
ALTER TABLE [dbo].[tblDiemHP]  WITH CHECK ADD  CONSTRAINT [FK_tblDiemHP_tblSinhVien] FOREIGN KEY([idsv])
REFERENCES [dbo].[tblSinhVien] ([id])
GO
ALTER TABLE [dbo].[tblDiemHP] CHECK CONSTRAINT [FK_tblDiemHP_tblSinhVien]
GO
ALTER TABLE [dbo].[tblMonHP]  WITH CHECK ADD  CONSTRAINT [FK_tblMonHP_tblHocKy] FOREIGN KEY([idhk])
REFERENCES [dbo].[tblHocKy] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMonHP] CHECK CONSTRAINT [FK_tblMonHP_tblHocKy]
GO
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD  CONSTRAINT [FK_tblSinhVien_tblLop] FOREIGN KEY([idlop])
REFERENCES [dbo].[tblLop] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSinhVien] CHECK CONSTRAINT [FK_tblSinhVien_tblLop]
GO
ALTER TABLE [dbo].[tblThongTinQT]  WITH CHECK ADD  CONSTRAINT [FK_tblThongTinQT_tblDangNhap] FOREIGN KEY([idtaikhoan])
REFERENCES [dbo].[tblDangNhap] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblThongTinQT] CHECK CONSTRAINT [FK_tblThongTinQT_tblDangNhap]
GO
ALTER TABLE [dbo].[tblThongTinSV]  WITH CHECK ADD  CONSTRAINT [FK_tblThongTinSV_tblDangNhap] FOREIGN KEY([idtaikhoan])
REFERENCES [dbo].[tblDangNhap] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblThongTinSV] CHECK CONSTRAINT [FK_tblThongTinSV_tblDangNhap]
GO
ALTER TABLE [dbo].[tblThongTinSV]  WITH CHECK ADD  CONSTRAINT [FK_tblThongTinSV_tblSinhVien] FOREIGN KEY([idsinhvien])
REFERENCES [dbo].[tblSinhVien] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblThongTinSV] CHECK CONSTRAINT [FK_tblThongTinSV_tblSinhVien]
GO
