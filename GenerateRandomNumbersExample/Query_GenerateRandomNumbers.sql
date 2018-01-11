--=============================================
--This query generates a list of random numbers, defining 3 parameters. 2 of which passed in as constants, the third being declared as a variable.
--=============================================

DECLARE @Start_Value INT = 0

EXEC sp_execute_external_script
@language = N'Python',
@script = N'

import numpy as np
import pandas as pd

Start = 20											##Change the value to 20 from the initialized value of 0

random_array = np.array(np.random.randint(Start,End+1,Size))
pandas_dataframe = pd.DataFrame({"Random Numbers": random_array})
',
@output_data_1_name = N'pandas_dataframe',
@params = N'@Start INT, @End INT, @Size INT',
@Start = @Start_Value, @End = 100, @Size = 20		--Either constants or declared variables. Here @Start is a variable. Each parameter can be altered inside the python script. 
WITH RESULT SETS (("Random Numbers" INT not null))