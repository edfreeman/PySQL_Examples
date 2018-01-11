-- =============================================
-- Author:		Ed
-- Create date: 20/12/2017
-- Description:	Create a stored procedure that maps day numbers to days with input as an unspecified table. It has the ability to specify batch size,
--				using the @r_rowsPerRead parameter. So if your dataset is of size 10, and you specify @RowsPerRead as 5, the query will execute in 2
--				batches. The first 'print' command tries to show this when the SP is executed.
-- =============================================
DROP PROCEDURE IF EXISTS MapDays2;
GO

CREATE PROCEDURE [dbo].[MapDays2] (@DaysOfWeekTable nvarchar(max), @RowsPerRead INT)
AS
	EXEC sp_execute_external_script 
	@language = N'Python',
	@script = N'

print(" ******************************** \n This is one batch of the dataset. \n ********************************")

OutputDataSet = InputDataSet
global daysMap

daysMap = {
       "Monday" : 1,
       "Tuesday" : 2,
       "Wednesday" : 3,
       "Thursday" : 4,
       "Friday" : 5,
       "Saturday" : 6,
       "Sunday" : 7
       }

OutputDataSet["DayOfWeekNumber"] = pandas.Series([daysMap[i] for i in OutputDataSet["DayOfWeek"]], index = OutputDataSet.index, dtype = "int32")
	', 
	@input_data_1 = @DaysOfWeekTable,
	@input_data_1_name = N'InputDataSet',
	@params = N'@r_rowsPerRead INT',
	@r_rowsPerRead = @RowsPerRead
	WITH RESULT SETS (("DayOfWeek" nvarchar(10) null,"DayOfWeekNumber" int null))