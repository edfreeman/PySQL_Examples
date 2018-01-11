def map_days_output_csv(InputDataSet):
    import pandas
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
    output_filepath = r"C:\Users\EdFreeman\Documents\SQL Server Management Studio\PySQL_Examples\DaysOfWeekExample\Outputs\DaysOfWeekNumbered.csv"
    OutputDataSet.to_csv(output_filepath)
    print("Output written to {}".format(output_filepath))
    return OutputDataSet