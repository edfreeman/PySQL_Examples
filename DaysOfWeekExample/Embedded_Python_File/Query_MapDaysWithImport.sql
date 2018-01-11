-- =============================================
-- Author:		Ed
-- Create date: 20/12/2017
-- Description:	A query importing the external python file, rather than typing out the whole python script. 
--				This query maps day numbers to days and automatically uses the DaysOfWeek dataset.
-- =============================================

EXEC sp_execute_external_script 
@language = N'Python',
@script = N'

from MyPackages.pysql_examples.day_mapper import map_days

OutputDataSet = map_days(InputDataSet)
', 
@input_data_1 = N'SELECT * FROM DaysOfWeek',
@input_data_1_name = N'InputDataSet'
WITH RESULT SETS (("DayOfWeek" nvarchar(10) null,"DayOfWeekNumber" int null))