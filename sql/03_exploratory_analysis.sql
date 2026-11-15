-- Creating overall information about both subscription types
SELECT 
    member_casual,
    COUNT(*) AS total_trips,
    ROUND(AVG(trip_duration_minutes), 2) AS avg_duration_minutes
FROM `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
GROUP BY member_casual;


-- To measure seasonal total trips and avg trip duration 
SELECT 
    trip_month,
    member_casual,
    COUNT(*) AS total_trips,
    ROUND(AVG(trip_duration_minutes), 2) AS avg_duration_minutes
FROM `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
GROUP BY trip_month, member_casual
ORDER BY total_trips DESC;


-- Extract hour of the day to analyze commute vs leisure patterns
SELECT 
    member_casual,
    EXTRACT(HOUR FROM started_at) AS hour_of_day,
    COUNT(*) AS total_trips
FROM `cyclistic-509711.cyclistic_analysis.cleaned_year_trips`
WHERE trip_duration_minutes >= 1 AND trip_duration_minutes < 1440
GROUP BY member_casual, hour_of_day
ORDER BY hour_of_day ASC;
