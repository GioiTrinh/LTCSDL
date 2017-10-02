USE QLSinhVien
GO
IF OBJECT_ID('usp_TongChanMN','P') IS NOT NULL
DROP PROC usp_TongChanMN
GO

CREATE PROCEDURE usp_TongChanMN
	@m int,				/* So thu nhat*/
	@n int,				/*So thu hai */
	@TongChan int out	/*Ket qua */
AS	
	WHILE(@m < @n)
	BEGIN	
		IF(@m % 2 = 0) 
			BEGIN
				SET @TongChan = @TongChan + @m 
			END
		SET @m = @m + 1
	END 
GO
DECLARE  @m int = 0, @n int = 10, @TongChan int = 0 
EXEC usp_TongChanMN @m, @n,@TongChan out
PRINT 'Tong chan tu '+CAST(@m AS varchar)+' den '+CAST(@n AS varchar) +' la: '  +CAST(@TongChan AS varchar) 
--PRINT @TongChan