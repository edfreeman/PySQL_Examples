def map_days(InputDataSet):
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
    return OutputDataSet