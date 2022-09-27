-- 1. Vòng lăp while được sử dụng để lặp nếu
-- muốn lặp đi lặp lại 1 đoạn mã .
-- Cú pháp:
    -- WHILE DK 
    --     BEGIN 
    --         // code gi thi code
    --     END
-- Tao 1 bien dem.
--  Nen dem <11 => in ra ahihihi + dem 
-- => In tu 0-10

DECLARE @bien INT = 0
WHILE @bien < 11
    BEGIN 
        PRINT @bien 
        SET @bien = @bien +1
        -- SET @bien +=1
    END

--  2. Break, Continue 
-- Break : Ngắt vòng lặp
-- Continue: Bỏ qua để đến với lần lặp tiếp theo 
-- 1. In ra số từ 0 -10 và khi gặp 5 thì dừng lại
-- 2. In ra các số từ 0-10 và khi gặp 5 thì bỏ qua
DECLARE @bien INT = 0
WHILE @bien < 11
    BEGIN 
        IF @bien = 5
            BEGIN 
                BREAK 
            END 
        PRINT @bien 
        SET @bien = @bien +1
        -- SET @bien +=1
    END

DECLARE @bien INT = 0
WHILE @bien < 11
    BEGIN 
        IF @bien = 5
            BEGIN 
                SET @bien = @bien +1
                CONTINUE 
            END 
        PRINT @bien 
        SET @bien = @bien +1
        -- SET @bien +=1
    END

-- 3. Try...catch 
-- SQL cung cấp cơ chế kiểm soát lỗi bằng try...catch
-- Hiện nay trong các ngôn ngữ như C#, java cũng dùng
-- try...catch để sử lý lỗi 
-- Try : Chứa những đoạn ccode nghi ngờ xảy ra lỗi 
-- Catch: Cách các bạn xử lý khi gặp lỗi  

-- Một số hàm hay dùng trong khi xử lý
-- ERROR_LINE():Trả ra số dòng bị lỗi
-- ERROR_NUMBER(): Trả ra mã số lỗi 
-- ERROR_MESSAGE(): Trả ra thông báo lỗi 
-- ERROR_SEVERITY():Trả ra mức độ nghiêm trọng của lỗi -int
-- ERROR_STATE(): Trả ra trạng thái của lỗi dưới dạng số
-- ERROR_PROCEDURE(): Trả ra tên thủ tục / trigger gây ra lỗi 

BEGIN TRY 
    SELECT 1+ 'Stringhihihihihi'
END TRY 
BEGIN CATCH 
    SELECT ERROR_MESSAGE()
END CATCH