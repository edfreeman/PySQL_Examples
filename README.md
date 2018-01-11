# PySQL_Examples
## Brief description
A number of examples of using the inline Python capability in SQL Server 2017.
## Less brief description
This repo contains multiple examples of SQL queries which invoke Python code using the 'sp_execute_external_script' system stored procedure, along with a folder that contains the packaged python files which needs to be placed inside a path that SQL can see to work properly.

There are 4 separate examples included, which are:
  - **DaysOfWeekExample** - Map the day number (1-7) to the day of the week (Mon-Sun) (based on the example found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/run-python-using-t-sql. Couldn't find any related specific licences, so the license agreement is in accordance with that of the Microsoft docs.)
  - **GenerateRandomNumbersExample** - Generate a list of random numbers (Created myself, please refer to license file)
  - **ListCalculationsExample** - Output the mean, min and max of a list (Created myself, please refer to license file)

More details are in the individual READMEs inside each folder.

## Useful links:

- sp_execute_external_script: https://docs.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-execute-external-script-transact-sql - stored proc docs
- Machine Learning Services with Python in SQL: https://docs.microsoft.com/en-us/sql/advanced-analytics/python/sql-server-python-services - Includes the information needed to get started with Python in SQL, including tutorials. If you are going through the Taxi Fare experiment, refer to the github repo for accurate versions of the code: https://github.com/Azure/Azure-MachineLearning-DataScience/tree/master/Misc/PythonSQL
- Advanced Analytics in SQL documentation as a pdf: https://docs.microsoft.com/en-us/sql/opbuildpdf/advanced-analytics/TOC.pdf?branch=live
- Video about Python in SQL from Microsoft: https://www.youtube.com/watch?v=FcoY795jTcc - Microsoft video going through the details of Python in SQL, its benefits and use cases. Also goes through the tutorial upon which the DaysOFWeekExample above is based. Helpful video.
- Non-Microsoft blog: https://www.sqlshack.com/how-to-use-python-in-sql-server-2017-to-obtain-advanced-data-analytics/. Helpful blog with some nice examples.
