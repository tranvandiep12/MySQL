CREATE DATABASE QUANLISACH;
USE QUANLISACH;
-- Bảng tác giả
CREATE TABLE TACGIA (
id_tacGia INT PRIMARY KEY AUTO_INCREMENT,
tenTacGia VARCHAR(255) NOT NULL
);
-- Bảng sách
CREATE TABLE SACH (
id_sach INT PRIMARY KEY AUTO_INCREMENT,
tenSach VARCHAR(255) NOT NULL,
gia double,
id_tacGia INT ,
FOREIGN KEY(id_tacGia) REFERENCES TACGIA(id_tacGia)
);
-- Bảng nhân viên
CREATE TABLE NHANVIEN (
id_nhanVien INT PRIMARY KEY AUTO_INCREMENT,
tenNhanVien VARCHAR(255) NOT NULL,
diaChi VARCHAR(255) NOT NULL
);
-- Bảng quan hệ nhân viên và sách 
CREATE TABLE NHANVIEN_SACH (
id_nhanVien INT ,
id_sach INT,
PRIMARY KEY (id_nhanVien, id_sach),
FOREIGN KEY (id_nhanVien) REFERENCES NHANVIEN(id_nhanVien),
FOREIGN KEY (id_sach) REFERENCES SACH(id_sach)
);
-- Nhập dữ liệu tác giả
INSERT INTO TACGIA (tenTacGia) VALUES ('Nguyễn Nhật Ánh');
INSERT INTO TACGIA (tenTacGia) VALUES ('J.K. Rowling');
INSERT INTO TACGIA (tenTacGia) VALUES ('George Orwell');
-- Xem bảng tác giả
SELECT * FROM TACGIA;

INSERT INTO SACH (tenSach, gia, id_tacGia) VALUES ('Cho tôi xin một vé đi tuổi thơ', 50000, 1);
INSERT INTO SACH (tenSach, gia, id_tacGia) VALUES ('Harry Potter và Hòn đá Phù thủy', 120000, 2);
INSERT INTO SACH (tenSach, gia, id_tacGia) VALUES ('Harry Potter và Phòng chứa bí mật', 125000, 2);
-- Xem bảng sách
SELECT * FROM SACH;

INSERT INTO NHANVIEN (tenNhanVien, diaChi) VALUES ('Trần Văn A', 'Hà Nội');
INSERT INTO NHANVIEN (tenNhanVien, diaChi) VALUES ('Lê Thị B', 'Đà Nẵng');
INSERT INTO NHANVIEN (tenNhanVien, diaChi) VALUES ('Nguyễn Văn C', 'TP.HCM');

-- Xem bảng nhân viên
SELECT * FROM NHANVIEN;


