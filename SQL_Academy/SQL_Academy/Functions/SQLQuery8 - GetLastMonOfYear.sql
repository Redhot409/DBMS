USE PD_318_DML;
GO

ALTER FUNCTION GetLastMonOfYear
(
	@year AS INT
)
RETURNS DATE
AS
BEGIN
	
	DECLARE @date AS DATE =	DATEFROMPARTS(@year, 12, 31);
	RETURN DATEADD(DAY, DATEPART(WEEKDAY, @date)*(-1)+1, @date);
END