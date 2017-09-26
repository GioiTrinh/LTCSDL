
USE QLSinhVien
GO
IF OBJECT_ID(' ','P') IS NOT NULL
DROP PROC uspCau11
GO
CREATE PROC uspCau11
	@a float,
	@b float,
	@tong float OUT
AS
	SET @tong = @a + @b;
GO
DECLARE  @x float = 3.2,@y float = 2.3,@tong float = 0
EXEC uspCau11 @x, @y,@tong OUT
PRINT N'Ket qua: '+CAST(@x AS varchar)+ ' + '+ CAST(@y AS varchar) + ' = ' +CAST(@tong AS varchar)