-- Creation of one master table 
CREATE OR REPLACE TABLE `cyclistic-509711.cyclistic_analysis.combined_year_trips` AS
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_01`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_02`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_03`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_04`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_05`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trip_data_06`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_07`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_08`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_09`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_10`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_11`
UNION ALL
SELECT * FROM `cyclistic-509711.cyclistic_analysis.trid_data_12`;
