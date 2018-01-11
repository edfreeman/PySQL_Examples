## DaysOfWeekExample

Maps the day number (1-7) to the day of the week (Mon-Sun) (based on the example found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/run-python-using-t-sql).

### Ingredients:

- **CreateTable_DaysOfWeek –** Query that creates the table with sample data 

- **Embedded_Python_Script –** Folder where queries/stored procs are based on inline Python script (as opposed to importing pre-made Python packages) 
  - **Query_MapDays –** Simple query that maps the day numbers to days based on the DaysOfWeek table by default 
  - **CreateSP_MapDays –** Creates a stored proc which does the same as above once executed 
  - **Execute_MapDays –** Simple query that executes the above stored proc 
  - **CreateSP_MapDays2 –** Similar to CreateSP_MapDays but this time takes a table (of the right schema) in as a parameter as opposed to      being based on the dataset already created. Also, it highlights sp_execute_external_script's ability to specify batch size, using the @r_rowsPerRead parameter. So if your dataset is of size 10, and you specify @RowsPerRead as 5, the query will execute in 2 batches. Good for large datasets and limited compute resources. The first 'print' command tries to show this when the stored proc is executed. 
  - **ExecuteSP_MapDays2 –** Simple query that executes the above stored proc with some arbitrary parameters 
- **Embedded_Python_File –** Folder where queries/stored procs are based on importing a pre-made Python file stored as a package. This package needs to be in a folder in a path SQL can read. I got it working by heading to my SQL instance in Program Files and then creating a 'MyPackages' folder inside the 'PYTHON_SERVICES' folder. This is the only way I could get it to work. Ideally, the package would be saved elsewhere (outside the SQL install directory) so that any update/re-install wouldn't wipe any custom scripts. If anyone finds a way to do this and get it to work, please let me know! 
  - **Query_MapDaysWithImport –** Does the same as Query_MapDays, but imports the file instead of embedding the Python script 
  - **CreateSP_MapDaysWithImport –** Creates a stored proc which does the same as above once executed. Uses the DaysOfWeek dataset as default 
- **pysql_examples –** These are the python files that have been packaged up so they can be imported once placed somewhere that SQL can see. To create a Python package, one needs to have a '__init__.py' file in the folder (which is just a blank script with the name '__init__.py') and the modules need to include definitions that return dataframes. Probably easiest to just take a look to understand! 
