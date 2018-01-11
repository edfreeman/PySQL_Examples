--==============================================
--Insert the trained model into the models table.
--==============================================

DECLARE @model VARBINARY(MAX);
EXEC TrainTipPredictionModelSciKitPy @model OUTPUT;
INSERT INTO nyc_taxi_models (name, model) VALUES('SciKit_model', @model);