CREATE DATABASE QuanLyCuaHangBanDienThoai
GO
USE QuanLyCuaHangBanDienThoai
GO

--------------------------------CREATE----------------------------------------
CREATE table NGUOISUDUNG
(
  TenDangNhap nvarchar(250) PRIMARY KEY NOT NULL,
  MatKhau nvarchar(250) NOT NULL,
  Email nvarchar(250),
  HoTen nvarchar(250),
  SDT nvarchar(50),
  DiaChi nvarchar(250)
)
GO

CREATE table NHASANXUAT
(
  IDNSX INT IDENTITY(0,1) PRIMARY KEY NOT NULL,
  TenNSX nvarchar(250) NOT NULL
)
GO

CREATE table LOAISANPHAM
(
  IDLoaiSP NVARCHAR(50) PRIMARY KEY NOT NULL,
  TenLoaiSP nvarchar(250) NOT NULL
)
GO

CREATE table NHOMSANPHAM
(
  IDNhomSP nvarchar(50) PRIMARY KEY NOT NULL,
  TenNhomSP nvarchar(250) NOT NULL
)
GO

CREATE table SANPHAM
(
  MaSP INT IDENTITY(0,1) PRIMARY KEY NOT NULL,	
  TenSP	nvarchar(250),	
  IDNhomSP	nvarchar(50),	
  IDLoaiSP	nvarchar(50),	
  GiaTien	float,	
  MauSac	nvarchar(250),	
  HinhAnh	nvarchar(MAX),	
  MoTa	nvarchar(MAX),	
  NgayDang	datetime	
)
GO

CREATE table DONDATHANG
(
	IDDonHang INT IDENTITY(0,1) PRIMARY KEY NOT NULL,
	TenDangNhap	nvarchar(250),
	NgayLap	datetime,
	DiaChiGiao nvarchar(250)
)
GO

CREATE table TINTUC
(
	MaTinTuc INT IDENTITY(0,1) PRIMARY KEY NOT NULL,
	TieuDe	nvarchar(250),	
	NoiDung	nvarchar(MAX),	
	NgayDangTin	datetime,	
	TacGia	nvarchar(250)	
)
GO

CREATE table LIENHE
(
	MaLienHe	nchar(10) PRIMARY KEY NOT NULL,	
	HoTen	nvarchar(250),	
	Email	nvarchar(250),	
	SDT	nvarchar(50)	
)
GO

CREATE TABLE GIOHANG
(
	TenDangNhap nvarchar(250),
	MaSP INT,
	SoLuong INT DEFAULT(1),
	PRIMARY KEY(TenDangNhap, MaSP),
	FOREIGN KEY(TenDangNhap) REFERENCES dbo.NGUOISUDUNG(TenDangNhap)
)
GO

CREATE table THONGKETRUYCAP
(
	TongSoTruyCap int
)
GO

----------------------------------------------INSERT INTO ----------------------------------

INSERT INTO LOAISANPHAM(IDLoaiSP,TenLoaiSP) 
VALUES (N'Loại 1', N'Điện thoại'),
       (N'Loại 2', N'Laptop'),
       (N'Loại 3', N'Tai nghe'),
       (N'Loại 4', N'Máy tính bảng'),
       (N'Loại 5', N'Ốp điện thoại')

INSERT INTO NHOMSANPHAM(IDNhomSP,TenNhomSP) 
VALUES (N'Nhóm 1', N'Sản phẩm khuyến mãi'),
       (N'Nhóm 2', N'Sản phẩm bán chạy'),
       (N'Nhóm 3', N'Sản phẩm ưu chuộng'),
       (N'Nhóm 4', N'Sản phẩm nổi bật'),
       (N'Nhóm 5', N'Sản phẩm hot')

INSERT INTO SANPHAM(TenSP, IDNhomSP,IDLoaiSP,GiaTien,MauSac,HinhAnh,MoTa,NgayDang) 
VALUES (N'Iphone 6S Plus',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone6sPlus32GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 11 Pro Max',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone11ProMax64GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 6S Plus',N'Nhóm 2',N'Loại 1',1200000,N'Đen',N'Images/iPhone6sPlus32GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 11 Pro Max',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone11ProMax64GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 6S Plus',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone6sPlus32GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 11 Pro Max',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone11ProMax64GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 6S Plus',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone6sPlus32GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Iphone 11 Pro Max',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/iPhone11ProMax64GB.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Oppo A92',N'Nhóm 1',N'Loại 1',1200000,N'Đen',N'Images/OppoA92.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ipad Pro 129',N'Nhóm 2',N'Loại 3',1200000,N'Đen',N'Images/Ipad-pro-129-wf-4g.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ipad Huawei',N'Nhóm 1',N'Loại 3',1200000,N'Đen',N'Images/Ipad-huawei-matepad-t-1.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ipad Mini 5',N'Nhóm 1',N'Loại 3',1200000,N'Đen',N'Images/Ipad-mini5-4g-grey-1.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ipad Pro 11',N'Nhóm 3',N'Loại 2',1200000,N'Đỏ',N'Images/Ipad-pro-11-wf-xam-1.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Laptop Asus 12S',N'Nhóm 3',N'Loại 2',1200000,N'Đen',N'Images/Laptop-asus-tuf-fx505dd.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Laptop Asus M02',N'Nhóm 3',N'Loại 2',1200000,N'Đen',N'Images/Laptop-asus-vivobook-d409.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Laptop Asus M03',N'Nhóm 3',N'Loại 2',1200000,N'Xanh',N'Images/Laptop-asus-vivobook-m413.png',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Tai nghe ES 20TY',N'Nhóm 4',N'Loại 4',1200000,N'Đen',N'Images/Tai-nghe-iValue-ES-20TY.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Tai nghe ES 20SY',N'Nhóm 4',N'Loại 4',1200000,N'Đen',N'Images/Tai-nghe-iValue-ES-20TY-Black.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Tai nghe ES 20LY',N'Nhóm 4',N'Loại 4',1200000,N'Đen',N'Images/Tai-nghe-iValue-ES-104i-Grey.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ốp lưng SamSung JS Plus',N'Nhóm 5',N'Loại 5',1200000,N'Đen',N'Images/Op-lung-SamSung-JS-Plus.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ốp lưng SamSung A20',N'Nhóm 5',N'Loại 5',1200000,N'Đen',N'Images/Op-lung-SamSung-A20.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ốp lưng Iphone ProMax',N'Nhóm 5',N'Loại 5',1200000,N'Đen',N'Images/Op-lung-Iphone-SXMax.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09'),
		(N'Ốp lưng Iphone 7',N'Nhóm 5',N'Loại 5',1200000,N'Xanh',N'Images/Op-lung-Iphone-7.jpg',N'Màn hình	6.5", Super Retina XDR, Super AMOLED, 1242 x 2688 Pixel
		Camera sau	12.0 MP + 12.0 MP + 12.0 MP
		Camera Selfie	12.0 MP
		RAM 	4 GB
		Bộ nhớ trong	64 GB
		CPU	A13 Bionic
		GPU	Apple GPU 4 nhân','2020-09-09')



---------------------------------------------------PROC-----------------------------------
GO
CREATE PROC NEW_SANPHAM
@MaSP int
AS
BEGIN
  SELECT * FROM SANPHAM WHERE MaSP = @MaSP
END
GO

CREATE PROC NEW_SANPHAM_BYNHOM
@IDNhomSP nvarchar(50)
AS
BEGIN
  SELECT * FROM SANPHAM WHERE IDNhomSP = @IDNhomSP
END

GO
CREATE PROC NEW_SANPHAM_BYLOAI
@IDLoaiSP nvarchar(50)
AS
BEGIN
  SELECT * FROM SANPHAM WHERE IDLoaiSP = @IDLoaiSP
END
GO
GO
CREATE PROC NEW_NHOMSANPHAM
@IDNhomSP nvarchar(50)
AS
BEGIN
  SELECT * FROM NHOMSANPHAM WHERE IDNhomSP = @IDNhomSP
END
GO

CREATE PROC NEW_LOAISANPHAM
@IDLoaiSP nvarchar(50)
AS
BEGIN
  SELECT * FROM LOAISANPHAM WHERE IDLoaiSP = @IDLoaiSP
END
GO

CREATE PROC spGetIdSanPham

@MaSP nchar(10)
AS
BEGIN
  SELECT * FROM SANPHAM WHERE MaSP = @MaSP
END
GO

CREATE PROC spGetGioHang
@TenDangNhap NVARCHAR(250)
AS
	SELECT GIOHANG.MaSP, tenSP, HinhAnh, GiaTien, SoLuong, GiaTien*SoLuong AS [ThanhTien] FROM dbo.GIOHANG, dbo.SANPHAM
	WHERE TenDangNhap = @TenDangNhap AND dbo.GIOHANG.MaSP = dbo.SANPHAM.MaSP
GO

CREATE PROC spInsertGioHang
@TenDangNhap NVARCHAR(250),
@MaSP INT
AS
BEGIN
	DECLARE @count INT
	SELECT @count = COUNT(MaSP) FROM dbo.GIOHANG WHERE dbo.GIOHANG.TenDangNhap = @TenDangNhap AND MaSP=@MaSP
	IF(@count=0)
		BEGIN
			INSERT INTO dbo.GIOHANG
			        ( TenDangNhap, MaSP, SoLuong )
			VALUES  ( @TenDangNhap, -- TenDangNhap - nvarchar(250)
			          @MaSP, -- MaSP - int
			          1
			          )
		END
	ELSE
		BEGIN
			UPDATE dbo.GIOHANG
			SET SoLuong = SoLuong +1
			WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
		END
END
GO

EXEC dbo.spInsertGioHang @TenDangNhap = "admin", -- int
    @MaSP = 11 -- int


CREATE PROC spDeleteGioHang
@TenDangNhap NVARCHAR(250),
@MaSP INT
AS
BEGIN
	UPDATE dbo.GIOHANG
	SET SoLuong = SoLuong - 1
	WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
	DECLARE @count INT
	SELECT @count = SoLuong FROM dbo.GIOHANG WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
	IF(@count<1)
		BEGIN
			DELETE dbo.GIOHANG
			WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
		END
END
GO

CREATE PROC spUpdateSoLuong
@TenDangNhap NVARCHAR(250),
@MaSP INT,
@SoLuong INT
AS
BEGIN
	UPDATE dbo.GIOHANG
	SET SoLuong = @SoLuong
	WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
	DECLARE @count INT
	SELECT @count = SoLuong FROM dbo.GIOHANG WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
	IF(@count<1)
		BEGIN
			DELETE dbo.GIOHANG
			WHERE TenDangNhap = @TenDangNhap AND MaSP = @MaSP
		END
END

SELECT * FROM SANPHAM WHERE IDNhomSP = N'Nhóm 2'