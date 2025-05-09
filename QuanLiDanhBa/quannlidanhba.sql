CREATE DATABASE QUANLIDANHBA;
USE QUANLIDANHBA;
-- BẢNG NGƯỜI
CREATE TABLE NGUOI(
id_nguoi INT PRIMARY KEY AUTO_INCREMENT,
ten VARCHAR(255) NOT NULL
);
-- BẢNG EMAIL
CREATE TABLE EMAIL(
ten_email VARCHAR(255) NOT NULL,
id_nguoi INT,
FOREIGN KEY (id_nguoi) REFERENCES NGUOI(id_nguoi)
);
-- BẢNG SDT
CREATE TABLE SODIENTHOAI(
so_dien_thoai INT,
id_nguoi INT,
FOREIGN KEY (id_nguoi) REFERENCES NGUOI(id_nguoi)
);
-- NHẬP THÔNG TIN NGƯỜi
INSERT INTO NGUOI (id_nguoi,ten) VALUES (1,'TRẦN VĂN A');
INSERT INTO NGUOI (id_nguoi,ten) VALUES (2,'NGUYỄN VĂN B');
INSERT INTO NGUOI (id_nguoi,ten) VALUES (3,'LÊ VĂN C');

SELECT * FROM NGUOI;

-- NHẬP THÔNG TIN EMAIL
INSERT INTO EMAIL(ten_email,id_nguoi) VALUES ('trana@gamil.com',1);
INSERT INTO EMAIL(ten_email,id_nguoi) VALUES ('nguyana@gamil.com',2);
INSERT INTO EMAIL(ten_email,id_nguoi) VALUES ('lena@gamil.com',3);
SELECT * FROM EMAIL;
-- NHẬP THÔNG TIN SDT
INSERT INTO SODIENTHOAI(so_dien_thoai,id_nguoi) VALUES ('01234456',1);
INSERT INTO SODIENTHOAI(so_dien_thoai,id_nguoi) VALUES ('01234456',2);
INSERT INTO SODIENTHOAI(so_dien_thoai,id_nguoi) VALUES ('01234456',1);
SELECT * FROM SODIENTHOAI;




