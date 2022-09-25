-- if else 
-- if exists(cau select)
-- Toán tử 3 ngôi : IIF
-- case ... end <=> switch case 
-- 1 Hàm ép kiểu
-- 1.1: CAST : ÉP KIỂU DỮ LIỆU 
-- Hàm Cast trong SQL là hàm chuyển đổi 
-- 1 kiểu dữ liệu này qua kiểu dữ liệu 
-- khác 
-- Nếu chuyển thành công => CAST sẽ trả
-- ra giá trị chuyển đổi tương ứng.
-- Nếu không thành công => CAST sẽ báo lỗi 
-- Cú pháp : 
--   CAST(biểu thức AS kiểu dữ liệu[do_dai])
-- Ví dụ:
SELECT CAST(1.2 AS INT)
SELECT CAST(4.9 AS nvarchar(50)) 
SELECT CAST('2022-09-25' AS DATETIME)

-- 1.2: Convert 
-- Hàm convert trong SQL cho phép có thể 
-- chuyển đổi từ kiểu dữ liệu này sang
-- kiểu dữ liệu khác
-- Hàm convert khi thành công 
-- => Trả ra KQ mong muốn
-- Nếu không thành công => Báo lỗi
-- Cú pháp: 
-- CONVERT(kieuDuLieu[do_dai],bieuThuc,dinhDang)
-- Định dạng(không bắt buộc): là 1 con số
-- chỉ định việc định dnagj cho việc chuyển đổi 
-- từ kiểu dữ liệu ngày sang kiểu chuỗi
-- https://quantrimang.com/hoc/ham-convert-trong-sql-server-161965
SELECT CONVERT(INT,25.9)
SELECT CONVERT (DATE,'2022.09.25',105)
-- 2. Các hàm toán học 
-- 2.1:ABS:Hàm dùng để lấy giá trị tuyệt đối của 1 biểu thức
SELECT ABS(-3)
-- 2.2: CEILING: Hàm dùng để lấy giá trị cận trên
--  Tức là lấy giá trị của số nguyên nhỏ nhất 
--  nhưng lớn hơn số hoặc biểu thức tương đương
SELECT CEILING(5.2)
-- 2.3: FLOOR: Hàm làm tròn xuống
SELECT FLOOR(5.2)
-- 2.4: POWER(): Tính luỹ thường
SELECT POWER(2,2) 
-- POWER(giá trị, số mũ)
SELECT POWER(3,9)
-- 2.5: ROUND : Hàm làm tròn 
-- 2.6: SIGN, SQRT,LOG....
-- 3: Các hàm xử lý chuỗi 
-- 3.1: LEN(String): Lấy độ dài chuỗi
-- (tính cả các ký tự là khoảng trắng)
-- 3.2: TRIM(String): Xoá khoảng trắng 2 đầu 
-- Chỉ có thể sử dụng từ SQL 2017 trở lên
-- 3.3: LTRIM : Xoá khoảng trắng bên trái
-- 3.4: RTRIM: Xoá khoảng trắng bên phải
-- 3.5: CHARINDEX : Trả về vị trí của chuỗi tìm thấy
-- 3.6: SUBSTRING, REPLACE, LOWER, UPPER....

-- 4.Các hàm liên quan tới ngày tháng
-- 4.1: GETDATE 
SELECT GETDATE()
-- 4.2: YEAR 
SELECT YEAR(GETDATE())
-- 4.3: MONTH 
SELECT MONTH(GETDATE())
-- 4.4: DAY 
SELECT DAY(GETDATE())
-- 4.5: DATENAME: Truy cập tới các 
-- thành phần liên quan tới ngày tháng
SELECT DATENAME(YEAR,GETDATE())