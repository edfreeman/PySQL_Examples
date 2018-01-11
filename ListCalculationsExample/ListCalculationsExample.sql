--=========================================================
-- This query performs some operations on a list and outputs a summary dataframe.
--=========================================================

EXEC sp_execute_external_script 
@language = N'Python',
@script = N'

mylist = [124, 9238, 23, 1244, 2, 98, 13, 103, 774, 845]

list_mean = sum(mylist) / float(len(mylist))
list_min = min(mylist)
list_max = max(mylist)

print(" The mean value is: {0} \n The minimum value is: {1} \n The maximum value is: {2}".format(list_mean,list_min,list_max))

OutputDataSet = pandas.DataFrame({"Mean": [list_mean], "Min": [list_min], "Max": [list_max]}, columns = ["Mean","Min","Max"])

'
WITH RESULT SETS (("Mean" float not null, "Min" float not null, "Max" float not null))
/*^^Without this statement, the dataframe columns wouldn't have names.*/