# PySQL_Examples
## Brief Description
A number of examples of using the inline Python capability in SQL Server 2017.
## Less brief description
This repo contains multiple examples of SQL queries which invoke Python code using the 'sp_execute_external_script' system stored procedure, along with a folder that contains the packaged python files which needs to be placed inside a path that SQL can see to work properly.

There are 4 separate examples included, which are:
  - **DaysOfWeekExample** - Map the day number (1-7) to the day of the week (Mon-Sun) (based on the example found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/run-python-using-t-sql)
  - **GenerateRandomNumbersExample** - Generate a list of random numbers
  - **ListCalculationsExample** - Output the mean, min and max of a list
  - **ShortenedTaxiFareWalkthrough** - Predict whether a tip is given at the end of a taxi journey (**Disclaimer:** This is not my work - it is a shortened version of the tutorial found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/sqldev-in-database-python-for-sql-developers)

More details are in the individual READMEs inside each folder.
