--================================================================================================================================================
--Quite clunky so takes a few minutes, but changes all the column types to what they should be. There's probably an easier/quicker way to do this.
--================================================================================================================================================

ALTER TABLE nyctaxi_sample
ALTER COLUMN medallion varchar(50) not null
ALTER TABLE nyctaxi_sample
ALTER COLUMN hack_license varchar(50)  not null
ALTER TABLE nyctaxi_sample
ALTER COLUMN vendor_id char(3)
ALTER TABLE nyctaxi_sample
ALTER COLUMN rate_code char(3)
ALTER TABLE nyctaxi_sample
ALTER COLUMN store_and_fwd_flag char(3)
ALTER TABLE nyctaxi_sample
ALTER COLUMN pickup_datetime datetime  not null
ALTER TABLE nyctaxi_sample
ALTER COLUMN dropoff_datetime datetime
ALTER TABLE nyctaxi_sample
ALTER COLUMN passenger_count int
ALTER TABLE nyctaxi_sample
ALTER COLUMN trip_time_in_secs bigint
ALTER TABLE nyctaxi_sample
ALTER COLUMN trip_distance float
ALTER TABLE nyctaxi_sample
ALTER COLUMN pickup_longitude varchar(30)
ALTER TABLE nyctaxi_sample
ALTER COLUMN pickup_latitude varchar(30)
ALTER TABLE nyctaxi_sample
ALTER COLUMN dropoff_longitude varchar(30)
ALTER TABLE nyctaxi_sample
ALTER COLUMN dropoff_latitude varchar(30)
ALTER TABLE nyctaxi_sample
ALTER COLUMN payment_type char(3)
ALTER TABLE nyctaxi_sample
ALTER COLUMN fare_amount float
ALTER TABLE nyctaxi_sample
ALTER COLUMN surcharge float
ALTER TABLE nyctaxi_sample
ALTER COLUMN mta_tax float
ALTER TABLE nyctaxi_sample
ALTER COLUMN tolls_amount float
ALTER TABLE nyctaxi_sample
ALTER COLUMN total_amount float
ALTER TABLE nyctaxi_sample
ALTER COLUMN tip_amount float
ALTER TABLE nyctaxi_sample
ALTER COLUMN tipped int
ALTER TABLE nyctaxi_sample
ALTER COLUMN tip_class int