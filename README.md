# PySQL_Examples
## Brief Description
A number of examples of using the inline Python capability in SQL Server 2017.
## More detailed description
This repo contains multiple examples of SQL queries which invoke Python code using the 'sp_execute_external_script' system stored procedure, along with a folder that contains the packaged python files which needs to be placed inside a path that SQL can see to work properly.

There are 4 separate examples included, which are:
  - **DaysOfWeekExample** - Map the day number (1-7) to the day of the week (Mon-Sun) (based on the example found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/run-python-using-t-sql)
  - **GenerateRandomNumbersExample** - Generate a list of random numbers
  - **ListCalculationsExample** - Output the mean, min and max of a list
  - **ShortenedTaxiFareWalkthrough** - Predict whether a tip is given at the end of a taxi journey (shortened version of the tutorial found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/sqldev-in-database-python-for-sql-developers)
  
### DaysOfWeekExample

- Sample data is in the 'CreateTable' file
- Contains sub-folders which execute the same Python code in different ways - one where the Python script is embedded into the SP, the other where the Python file is called using the 'import' call
- The queries are labelled 'CreateSP' if they are creating a stored procedure, 'Execute' if they are executing the SP, otherwise they are just labelled 'Query'
- Inside the 'Embedded_Python_Script' folder there are two SPs. 'MapDays' uses the 'DaysOfWeek' dataset as default. 'MapDays2' is a SP through which you can pass any table of the right schema (i.e. a list of days of the week with the header 'DayOfWeek')
- Inside the 'Embedded_Python_File' folder are the queries for using the 'import' command to call the external Python file which has been packaged-up. To reiterate, this package needs to be in a folder in a path SQL can read. I got it working by heading to my SQL instance in Program Files and then creating a 'MyPackages' folder inside the 'PYTHON_SERVICES' folder, but it might be better to keep the folder somewhere in Documents and give SQL permissions to the folder

### GenerateRandomNumbersExample

- The CreateSP_GenerateRandomNumbers query creates a SP that passes 3 parameters to the sp_execute_external_script procedure
- The Query_GenerateRandomNumbers assigns constants to a couple of the params, and declares a variable for the other param. Good to see how the variables can be altered inside Python script

### ListCalculationsExample

- Does what it says on the tin

### ShortenedTaxiFareWalkthrough

- Only training a SciKit model in this version of the tutorial originally from the Microsoft docs
- I found that there were a few bugs in some of the code provided in the docs (which have been pointed out by others in the comments), so I got it working and have included it in this repo
- NEEDS COMPLETING

<hr>

Useful links:

sp_execute_external_script: https://docs.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-execute-external-script-transact-sql

Machine Learning Services with Python in SQL: https://docs.microsoft.com/en-us/sql/advanced-analytics/python/sql-server-python-services
(^^And all of its corresponding sublinks, including installation of Machine Learning Services and some tutorials)

Video about Python in SQL from Microsoft: https://www.youtube.com/watch?v=FcoY795jTcc

Non-Microsoft blog: https://www.sqlshack.com/how-to-use-python-in-sql-server-2017-to-obtain-advanced-data-analytics/

Docs as a pdf: https://docs.microsoft.com/en-us/sql/opbuildpdf/advanced-analytics/TOC.pdf?branch=live
