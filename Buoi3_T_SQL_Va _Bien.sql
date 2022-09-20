-- 1. Nhắc lại về kiểu dữ liệu: int, float, nvarchar, varchar,bit,date....
-- 2. Cách khai báo biến 
-- 1.1 Cách khai báo
-- DECLARE @var_name data_type 
-- VD:
DECLARE @year int 
-- Notes: 
-- 1. @var_name : tên của biến.Luôn luôn bắt đầu bằng @ 
-- 2. data_type: kiểu dữ liệu của biến 
-- 1.2: Gán giá trị cho biến
SET @year = 2022 
-- SQL gán trá trị cho biến thông qua từ khoá SET và toán tử = value 
-- 1.3: Truy xuất giá trị của biến bằng SELECT 
--  Cú pháp: SELECT + tên biến
SELECT @year
--  Bai 1: Tinh tong 3 so 
DECLARE @number_first int , @number_second int
--  Bai 2: Tinh dien tich , chu vi cua hinh chu nhat
-- Notes: Có 2 loại biến: Biến vô hướng , biến bảng 
-- 1.4: Lưu trữ cả 1 câu truy vấn vào 
DECLARE @soLuongTonLonNhat INT 
SET @soLuongTonLonNhat = (SELECT MAX(soLuongTon) FROM ChiTietSP)
-- SELECT @soLuongTonLonNhat
PRINT 'So luong max = '+ CONVERT(VARCHAR,@soLuongTonLonNhat)
-- 1.5: Biến bảng 
-- DECLARE @ten_bien TABLE(thuoc tinh kieu du liẹu)

DECLARE @TB_NhanVien TABLE(id int, maNV varchar(50),tenNV nvarchar(50))
-- INSERT INTO @TB_NhanVien
-- VALUES(1,'10','abc');

INSERT INTO @TB_NhanVien
SELECT id,ma,ten
FROM NhanVien 
WHERE ten like 'T%'
SELECT * FROM @TB_NhanVien

-- T-SQL: Ngôn ngữ truy vấn cho phép tạo CSDL, thao tac dữ liệu
-- Cú pháp:
-- BEGIN 
-- -- viết gì thì viết 
-- END 

--  Có 4 nhóm lệnh SQL :
-- 1. Nhóm truy vấn dữ liệu ( DQL): gồm các truy cấn select 
-- => Lấy ra thông tin nhưng không làm thay đổi dữ liệu của bảng 
-- 2. Nhóm dùng để định nghĩa dư liệu (DDl): Create, Drop, alter...
-- 3. Nhóm thao tác dữ liệu(DML): Gồm các lệnh: Insert, Up[date, Delete....
-- => Nhóm làm thay đổi dữ liệu của 1 hoặc nhiều bảng 
-- 4. Nhóm điền khiển dữ liệu( DCL): quản lý : Grant, Revoke...
-- 1.7: Begin và End 
-- T-SQL: tổ chức theo từng khối lệnh.
--  Bắt đầu là Begin và kết thúc là end
-- Một khối lệnh có thể lồng bên trong 1 khối lênhj khác
-- Viết câu T-SQL hiển thị ds nhân viên bắt đầu bằng chữ T 
BEGIN 
    SELECT * FROM NhanVien
    WHERE ten like 'T%'
END 