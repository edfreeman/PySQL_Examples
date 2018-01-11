--==================================================================================================================================================
--Execute the model, passing in the testing data. Check 'Messages' pane for the AUC. (It's a rubbish AUC, but we didn't make this model so it's ok!)
--==================================================================================================================================================

DECLARE @query_string nvarchar(max) -- Specify input query
  SET @query_string='
  select tipped, fare_amount, passenger_count, trip_time_in_secs, trip_distance,
  dbo.fnCalculateDistance(pickup_latitude, pickup_longitude,  dropoff_latitude, dropoff_longitude) as direct_distance
  from nyctaxi_sample_testing'
EXEC [dbo].[PredictTipSciKitPy] 'SciKit_model', @query_string;