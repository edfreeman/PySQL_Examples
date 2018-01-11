--=========================================================
--Create the table in which to keep the pickle-ized models.
--=========================================================

DROP TABLE IF EXISTS nyc_taxi_models

CREATE TABLE nyc_taxi_models
(
  name varchar(250), 
  model varbinary(max) not null
)