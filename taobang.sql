USE [QLWebNhac]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[maAlbum] [nvarchar](50) NOT NULL,
	[maCS] [nvarchar](50) NULL,
	[tenAlbum] [nvarchar](50) NULL,
	[moTa] [nvarchar](800) NULL,
	[ngayCapnhat] [date] NULL,
	[luotNghe] [int] NULL,
	[soLuongBH] [int] NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[maAlbum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiNhac]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiNhac](
	[maBaiHat] [nvarchar](50) NOT NULL,
	[tenBaiHat] [nvarchar](50) NULL,
	[hinhAnh] [nvarchar](50) NULL,
	[link] [nvarchar](50) NULL,
	[loaiNhac] [nvarchar](50) NULL,
	[tenCaSi] [nvarchar](50) NULL,
	[nguoiST] [nvarchar](50) NULL,
	[nguoiTB] [nvarchar](50) NULL,
	[namPH] [date] NULL,
	[maNV] [nvarchar](50) NULL,
	[moTa] [nvarchar](50) NULL,
	[loiBH] [nvarchar](50) NULL,
 CONSTRAINT [PK_BaiNhac] PRIMARY KEY CLUSTERED 
(
	[maBaiHat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BinhLuan]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinhLuan](
	[maBL] [nvarchar](50) NOT NULL,
	[loaiBL] [nvarchar](50) NOT NULL,
	[maBaiHat] [nvarchar](50) NULL,
	[maND] [nvarchar](50) NULL,
	[noiDung] [nvarchar](800) NULL,
 CONSTRAINT [PK_BinhLuan] PRIMARY KEY CLUSTERED 
(
	[maBL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CaSi]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaSi](
	[maCS] [nvarchar](50) NOT NULL,
	[ngaySinh] [date] NULL,
	[hoTenCS] [nvarchar](50) NULL,
	[gioiThieu] [nvarchar](50) NULL,
	[ngayDebut] [date] NULL,
	[gioiTinh] [bit] NULL,
	[maDSP] [nvarchar](50) NULL,
	[soLuongBH] [int] NULL,
 CONSTRAINT [PK_CaSi_1] PRIMARY KEY CLUSTERED 
(
	[maCS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSachPhat]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSachPhat](
	[maDSP] [nvarchar](50) NOT NULL,
	[tenDSP] [nvarchar](50) NULL,
	[moTa] [nvarchar](800) NULL,
	[ngaycapnhat] [date] NULL,
	[maCS] [nvarchar](50) NULL,
	[luotnghe] [int] NULL,
 CONSTRAINT [PK_DanhSachPhat] PRIMARY KEY CLUSTERED 
(
	[maDSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhacSi]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhacSi](
	[maNS] [nvarchar](50) NOT NULL,
	[hoTenNS] [nvarchar](800) NULL,
	[gioiThieu] [nvarchar](800) NULL,
	[ngaysinh] [date] NULL,
	[gioiTinh] [nvarchar](800) NULL,
	[soLuongBH] [int] NULL,
 CONSTRAINT [PK_NhacSi] PRIMARY KEY CLUSTERED 
(
	[maNS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[maNV] [nvarchar](50) NOT NULL,
	[tenNV] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [int] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[maNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[tenTaiKhoan] [nvarchar](50) NOT NULL,
	[matKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[tenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaMS] [nvarchar](50) NOT NULL,
	[userID] [nvarchar](50) NULL,
	[hinhThucThanhToan] [nchar](100) NULL,
	[thoiDiemThanhToan] [date] NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaMS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[loaiNhac] [nvarchar](50) NOT NULL,
	[tenTheLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[loaiNhac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMusic]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMusic](
	[userID] [nvarchar](50) NOT NULL,
	[accountID] [nvarchar](50) NULL,
	[HoTen] [nvarchar](50) NULL,
	[Diachi] [nchar](800) NULL,
	[Email] [nchar](100) NULL,
	[SDT] [int] NULL,
	[Ngaysinh] [date] NULL,
	[Gioitinh] [nvarchar](50) NULL,
	[Ngaydangky] [date] NULL,
 CONSTRAINT [PK_UserMusic] PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XepHang]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XepHang](
	[maBXH] [nvarchar](50) NOT NULL,
	[maBH] [nvarchar](50) NULL,
	[ngayXepHang] [date] NULL,
	[thuTu] [int] NULL,
 CONSTRAINT [PK_XepHang] PRIMARY KEY CLUSTERED 
(
	[maBXH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_CaSi] FOREIGN KEY([maCS])
REFERENCES [dbo].[CaSi] ([maCS])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_CaSi]
GO
ALTER TABLE [dbo].[BaiNhac]  WITH CHECK ADD  CONSTRAINT [FK_BaiNhac_NhanVien] FOREIGN KEY([maNV])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[BaiNhac] CHECK CONSTRAINT [FK_BaiNhac_NhanVien]
GO
ALTER TABLE [dbo].[BaiNhac]  WITH CHECK ADD  CONSTRAINT [FK_BaiNhac_TheLoai] FOREIGN KEY([loaiNhac])
REFERENCES [dbo].[TheLoai] ([loaiNhac])
GO
ALTER TABLE [dbo].[BaiNhac] CHECK CONSTRAINT [FK_BaiNhac_TheLoai]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_BaiNhac] FOREIGN KEY([maBaiHat])
REFERENCES [dbo].[BaiNhac] ([maBaiHat])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_BaiNhac]
GO
ALTER TABLE [dbo].[BinhLuan]  WITH CHECK ADD  CONSTRAINT [FK_BinhLuan_UserMusic] FOREIGN KEY([maND])
REFERENCES [dbo].[UserMusic] ([userID])
GO
ALTER TABLE [dbo].[BinhLuan] CHECK CONSTRAINT [FK_BinhLuan_UserMusic]
GO
ALTER TABLE [dbo].[CaSi]  WITH CHECK ADD  CONSTRAINT [FK_CaSi_BaiNhac] FOREIGN KEY([maCS])
REFERENCES [dbo].[BaiNhac] ([maBaiHat])
GO
ALTER TABLE [dbo].[CaSi] CHECK CONSTRAINT [FK_CaSi_BaiNhac]
GO
ALTER TABLE [dbo].[DanhSachPhat]  WITH CHECK ADD  CONSTRAINT [FK_DanhSachPhat_CaSi] FOREIGN KEY([maCS])
REFERENCES [dbo].[CaSi] ([maCS])
GO
ALTER TABLE [dbo].[DanhSachPhat] CHECK CONSTRAINT [FK_DanhSachPhat_CaSi]
GO
ALTER TABLE [dbo].[NhacSi]  WITH CHECK ADD  CONSTRAINT [FK_NhacSi_BaiNhac] FOREIGN KEY([maNS])
REFERENCES [dbo].[BaiNhac] ([maBaiHat])
GO
ALTER TABLE [dbo].[NhacSi] CHECK CONSTRAINT [FK_NhacSi_BaiNhac]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_NhanVien] FOREIGN KEY([tenTaiKhoan])
REFERENCES [dbo].[NhanVien] ([maNV])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_NhanVien]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_TaiKhoan] FOREIGN KEY([userID])
REFERENCES [dbo].[TaiKhoan] ([tenTaiKhoan])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_TaiKhoan]
GO
ALTER TABLE [dbo].[UserMusic]  WITH CHECK ADD  CONSTRAINT [FK_UserMusic_TaiKhoan] FOREIGN KEY([userID])
REFERENCES [dbo].[TaiKhoan] ([tenTaiKhoan])
GO
ALTER TABLE [dbo].[UserMusic] CHECK CONSTRAINT [FK_UserMusic_TaiKhoan]
GO
ALTER TABLE [dbo].[XepHang]  WITH CHECK ADD  CONSTRAINT [FK_XepHang_BaiNhac] FOREIGN KEY([maBH])
REFERENCES [dbo].[BaiNhac] ([maBaiHat])
GO
ALTER TABLE [dbo].[XepHang] CHECK CONSTRAINT [FK_XepHang_BaiNhac]
GO
/****** Object:  StoredProcedure [dbo].[get_baihat]    Script Date: 6/30/2021 11:52:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[get_baihat](@id nvarchar(50))
as begin
if(@id!=0)
select * from [dbo].[BaiNhac] where maBaiHat=@id
else select * from [dbo].[BaiNhac]
end
GO
