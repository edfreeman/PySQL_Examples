-- =============================================
-- Author:		Ed
-- Create date: 20/12/2017
-- Description:	Create a stored procedure that maps day numbers to days, automatically using the DaysOfWeek dataset.
-- =============================================
DROP PROCEDURE IF EXISTS MapDays;
GO

CREATE PROCEDURE [dbo].[MapDays]
AS
	EXEC sp_execute_external_script 
	@language = N'Python',
	@script = N'

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
	@input_data_1 = N'SELECT * FROM DaysOfWeek',
	@input_data_1_name = N'InputDataSet'
	WITH RESULT SETS (("DayOfWeek" nvarchar(10) null,"DayOfWeekNumber" int null))
