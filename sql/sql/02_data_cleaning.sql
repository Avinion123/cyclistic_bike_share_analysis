-- Creating a new clean table without information i dont really need for the analysis
CREATE OR REPLACE TABLE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips` AS
SELECT 
    rideable_type,
    started_at,
    ended_at,
    member_casual 
FROM `cyclistic-509711.cyclistic_analysis.combined_year_trips`;


-- Adding the trid_duration column 
ALTER TABLE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
ADD COLUMN trip_duration_minutes INT64;
UPDATE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
SET trip_duration_minutes = TIMESTAMP_DIFF(ended_at, started_at, MINUTE)
WHERE TRUE;


-- Adding trip_months column
ALTER TABLE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
ADD COLUMN trip_month STRING;
UPDATE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
SET 
    trip_month = LOWER(FORMAT_TIMESTAMP('%B', started_at))
WHERE TRUE;


-- Changed data type to make sure I can transfer it from second to minutes 
ALTER TABLE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
ALTER COLUMN trip_duration_minutes SET DATA TYPE FLOAT64;

UPDATE `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
SET trip_duration_minutes = ROUND(TIMESTAMP_DIFF(ended_at, started_at, SECOND) / 60.0, 2)
WHERE TRUE;
