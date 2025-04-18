CREATE DATABASE QUANLITAIKHOAN;
USE QUANLITAIKHOAN;
-- TẠO BẢNG KHÁCH HÀNG
CREATE TABLE KHACHHANG(
ID_KHACH_HANG INT PRIMARY KEY AUTO_INCREMENT,
TEN CHAR(255) NOT NULL
);
 -- TẠO BẢNG TÀI KHOẢN
CREATE TABLE TAIKHOAN(
ID_TAI_KHOAN INT PRIMARY KEY AUTO_INCREMENT,
KHACH_HANG_ID INT UNIQUE,
SO_DU DECIMAL(15,2) NOT NULL,
FOREIGN KEY(KHACH_HANG_ID) REFERENCES KHACHHANG(ID_KHACH_HANG)
);
-- NHẬP THÔNG TIN BẢNG KHACHHANG
INSERT INTO KHACHHANG(ID_KHACH_HANG,TEN) VALUES('001','TRẦN VĂN A');
INSERT INTO KHACHHANG(ID_KHACH_HANG,TEN) VALUES('002','VÕ VĂN B');
INSERT INTO KHACHHANG(ID_KHACH_HANG,TEN) VALUES('003','NGUYỄN VĂN C');
SELECT * FROM KHACHHANG;
-- NHẬP THÔNG TIN BẢNG TÀI KHOẢN 
INSERT INTO TAIKHOAN(ID_TAI_KHOAN,KHACH_HANG_ID,SO_DU) VALUES ('123','001','15000');
INSERT INTO TAIKHOAN(ID_TAI_KHOAN,KHACH_HANG_ID,SO_DU) VALUES ('456','002','20000');
INSERT INTO TAIKHOAN(ID_TAI_KHOAN,KHACH_HANG_ID,SO_DU) VALUES ('789','003','8000');
SELECT *FROM TAIKHOAN;