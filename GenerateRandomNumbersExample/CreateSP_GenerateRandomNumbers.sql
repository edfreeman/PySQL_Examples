-- =============================================
-- Author:		Ed
-- Create date: 20/12/2017
-- Description:	Create a stored procedure that generates random numbers by passing in 3 parameters.
-- =============================================
DROP PROCEDURE IF EXISTS GenerateRandomNumbers;
GO

CREATE PROCEDURE GenerateRandomNumbers (@Start_Value INT, @End_Value INT, @Size INT)
AS
	EXEC sp_execute_external_script
	@language = N'Python',
	@script = N'

import numpy as np
import pandas as pd

random_array = np.array(np.random.randint(Start,End+1,Size))
pandas_dataframe = pd.DataFrame({"Random Numbers": random_array})

	',
    @output_data_1_name = N'pandas_dataframe',
	@params = N'@Start INT, @End INT, @Size INT', --Params the Python script uses
	@Start = @Start_Value, --LHS must match up with params inside Python script
	@End = @End_Value,	   --RHS must match up with procedure params
	@Size = @Size
	WITH RESULT SETS (("Random Numbers" INT not null))