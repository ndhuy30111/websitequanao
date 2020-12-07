CREATE TABLE Chitietdonhang (IdChitietdonhang int(10) NOT NULL AUTO_INCREMENT, Soluong int(10) NOT NULL, Giatien bigint(20) NOT NULL, DonhangIdDonhang int(10) NOT NULL, SanphamIdSanpham int(10) NOT NULL, PRIMARY KEY (IdChitietdonhang));
CREATE TABLE Danhmuc (IdDanhmuc int(10) NOT NULL AUTO_INCREMENT, Tendanhmuc varchar(100) NOT NULL, url char(100), Thutu tinyint(3) NOT NULL, PRIMARY KEY (IdDanhmuc));
CREATE TABLE Danhmuc_Sanpham (DanhmucIdDanhmuc int(10) NOT NULL, SanphamIdSanpham int(10) NOT NULL, PRIMARY KEY (DanhmucIdDanhmuc, SanphamIdSanpham));
CREATE TABLE Donhang (IdDonhang int(10) NOT NULL AUTO_INCREMENT, Ngaytao datetime NOT NULL, Diachi varchar(100) NOT NULL, Sodienthoai char(11) NOT NULL, Trangthai tinyint(3) DEFAULT 0 NOT NULL, UserIdUser int(10) NOT NULL, PRIMARY KEY (IdDonhang));
CREATE TABLE Kho (Matonkho int(10) NOT NULL AUTO_INCREMENT, Namthangtonkho datetime NOT NULL, TonDauky int(10) NOT NULL, Soluongnhap int(10) NOT NULL, Soluongxuat int(10) NOT NULL, TonCuoiky int(10) NOT NULL, KichthuocIdKichthuoc int(10) NOT NULL, PRIMARY KEY (Matonkho));
CREATE TABLE Kichthuoc (IdKichthuoc int(10) NOT NULL AUTO_INCREMENT, Tenkichthuoc varchar(5) NOT NULL, Soluong int(10) NOT NULL, Trangthai tinyint(3), MausacIdMausac int(10) NOT NULL, PRIMARY KEY (IdKichthuoc));
CREATE TABLE Mausac (IdMausac int(10) NOT NULL AUTO_INCREMENT, macsac varchar(50) NOT NULL, trangthai tinyint(3) DEFAULT 0 NOT NULL, SanphamIdSanpham int(10) NOT NULL, PRIMARY KEY (IdMausac));
CREATE TABLE Phieugiaohang (idPhieugiaohang int(10) NOT NULL AUTO_INCREMENT, Ngaygiaohang datetime NOT NULL, DonhangIdDonhang int(10) NOT NULL, UserIdUser int(10) NOT NULL, PRIMARY KEY (idPhieugiaohang));
CREATE TABLE Sanpham (IdSanpham int(10) NOT NULL AUTO_INCREMENT, Tensanpham varchar(50) NOT NULL, Giatien bigint(20) NOT NULL, Giakhuyenmai bigint(20), Motangan int(10), Mota int(10), url int(10), trangthai tinyint(3) NOT NULL, PRIMARY KEY (IdSanpham));
CREATE TABLE `User` (IdUser int(10) NOT NULL AUTO_INCREMENT, Email varchar(120) NOT NULL, Sodienthoai char(11), ten int(11) NOT NULL, matkhau char(100) NOT NULL UNIQUE, diem int(11) DEFAULT 0 NOT NULL, quyen tinyint(3) DEFAULT 0 NOT NULL, diachi varchar(150), Status tinyint(3), CONSTRAINT Id PRIMARY KEY (IdUser));
ALTER TABLE Donhang ADD CONSTRAINT FKDonhang634999 FOREIGN KEY (UserIdUser) REFERENCES `User` (IdUser);
ALTER TABLE Chitietdonhang ADD CONSTRAINT FKChitietdon869961 FOREIGN KEY (DonhangIdDonhang) REFERENCES Donhang (IdDonhang);
ALTER TABLE Chitietdonhang ADD CONSTRAINT FKChitietdon238521 FOREIGN KEY (SanphamIdSanpham) REFERENCES Sanpham (IdSanpham);
ALTER TABLE Phieugiaohang ADD CONSTRAINT FKPhieugiaoh593406 FOREIGN KEY (DonhangIdDonhang) REFERENCES Donhang (IdDonhang);
ALTER TABLE Mausac ADD CONSTRAINT FKMausac982705 FOREIGN KEY (SanphamIdSanpham) REFERENCES Sanpham (IdSanpham);
ALTER TABLE Kichthuoc ADD CONSTRAINT FKKichthuoc840316 FOREIGN KEY (MausacIdMausac) REFERENCES Mausac (IdMausac);
ALTER TABLE Kho ADD CONSTRAINT FKKho980012 FOREIGN KEY (KichthuocIdKichthuoc) REFERENCES Kichthuoc (IdKichthuoc);
ALTER TABLE Danhmuc_Sanpham ADD CONSTRAINT FKDanhmuc_Sa29433 FOREIGN KEY (DanhmucIdDanhmuc) REFERENCES Danhmuc (IdDanhmuc);
ALTER TABLE Danhmuc_Sanpham ADD CONSTRAINT FKDanhmuc_Sa125038 FOREIGN KEY (SanphamIdSanpham) REFERENCES Sanpham (IdSanpham);
ALTER TABLE Phieugiaohang ADD CONSTRAINT FKPhieugiaoh617492 FOREIGN KEY (UserIdUser) REFERENCES `User` (IdUser);
