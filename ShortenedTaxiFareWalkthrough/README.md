## ShortenedTaxiFareWalkthrough: 

Predicts whether a tip is given at the end of a taxi journey (Disclaimer: This is not my work – it is a shortened version of the tutorial found at https://docs.microsoft.com/en-us/sql/advanced-analytics/tutorials/sqldev-in-database-python-for-sql-developers). 

- Shorter because it only uses one model (namely, the SciKit model) as opposed to two models used in the original tutorial. 
- There are (or were, at least) small mistakes in the code snippits in the tutorial which have been pointed out by others in the , which I have rectified here (I think)
- For more details on this experiment, its best to head to the tutorial at the link above. 

### Ingredients: 

- **nyctaxi_sample –** This is the same data used in the tutorial. Because the tutorial has you run a Powershell script to import all the datasets/stored procs before you start, which I've not done, I've kept the original csv file. This needs to be imported into SQL somehow. The easiest way (if you're using SSMS), I've found, is just importing a Flat File, by right clicking on the database and navigating to Tasks > Import Flat File. The csv file, however, doesn't have associated column data types by default, so one has to alter the data types in the dialogue box when importing the csv. It's either that, or alter them programmatically once inside SSMS. I have attached a query that does that, but it is quite clunky and takes a while to run (since the dataset is so large). There is almost definitely a better way to do it, but I wanted an easy fix. I'd still suggest altering the column types in the dialogue box. The column types as per the tutorial are: 

  - **medallion:** varchar(50) not null, 
  - **hack_license:** varchar(50)  not null, 
  - **vendor_id:** char(3), 
  - **rate_code:** char(3), 
  - **store_and_fwd_flag:** char(3), 
  - **pickup_datetime:** datetime  not null, 
  - **dropoff_datetime:** datetime,  
  - **passenger_count:** int, 
  - **trip_time_in_secs:** bigint, 
  - **trip_distance:** float, 
  - **pickup_longitude:** varchar(30), 
  - **pickup_latitude:** varchar(30), 
  - **dropoff_longitude:** varchar(30), 
  - **dropoff_latitude:** varchar(30), 
  - **payment_type:** char(3), 
  - **fare_amount:** float, 
  - **surcharge:** float, 
  - **mta_tax:** float, 
  - **tolls_amount:** float, 
  - **total_amount:** float, 
  - **tip_amount:** float, 
  - **tipped:** int, 
  - **tip_class:** int 

The name 'nyctaxi_sample' should be kept the same. If you call something else, then the table name needs to be altered in the TrainingTestingSplit query. 

- The rest of the folder contents are the equivalent queries to those in the tutorial, which I've numbered in the order that they should be executed. 
