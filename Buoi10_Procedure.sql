-- Store Procedure
-- - Là nơi lưu trữ tập hơn các câu lệnh
-- đi kèm trong CSDL và có thể tái
-- sử dụng khi cân 
-- Có 2 loại store procedure 
--  + System sorted procedure
--  + User stored procedure
-- Cú pháp:
-- CREATE PROCEDURE tenProcedure(thamSoTruyenVao) 
-- AS
-- BEGIN 
--     // logic code 
-- END 
-- CREATE PROC 
-- Khi procedure đã được tạo. Muốn sửa => ALTER 
-- Khi muốn chạy procedure đã tạo 
-- EXECUTE tenProcedure 
-- EXEC tenProcedure

-- Tạo procedure hiển thị tất cả nhân viên là nữ 
ALTER PROCEDURE danhSachNhanVien1(@GioiTinh NVARCHAR(20))
AS
BEGIN 
    SELECT * FROM NhanVien WHERE GioiTinh = @GioiTinh
END

EXECUTE danhSachNhanVien1 @GioiTinh = 'Nam'

-- Tạo 1 procedure hiển thị tất cả các chi tiết sản phẩm
-- có năm bảo hành = năm bảo hành truyền vào
--  và có số lượng tồn >= số lượng tồn truyền vào
CREATE PROC dsChiTietSanPham (@namBH int , @soLT int)
AS
BEGIN 
    SELECT * FROM ChiTietSP 
    WHERE NamBH = @namBH 
    AND SoLuongTon >= @soLT
END

EXEC dsChiTietSanPham @namBH = 2,@soLT = 10