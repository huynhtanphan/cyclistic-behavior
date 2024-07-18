/* -- JOIN TABLES INTO SUMMARY TABLE */
-- Create summary table
CREATE TABLE IF NOT EXISTS all_trip (
	ride_id VARCHAR(255) PRIMARY KEY,
	rideable_type VARCHAR(255),
	day_of_week VARCHAR(255),
	started_at DATETIME,
	ended_at DATETIME,
	ride_length INT,
	start_station_name VARCHAR(255),
	start_station_id VARCHAR(255),
	end_station_name VARCHAR(255),
	end_station_id VARCHAR(255),
	start_lat DOUBLE,
	start_lng DOUBLE,
	end_lat DOUBLE,
	end_lng DOUBLE,
	member_casual VARCHAR(255)
);

-- Insert data
INSERT INTO all_trip (
    ride_id, rideable_type, day_of_week, started_at, ended_at, ride_length, 
    start_station_name, start_station_id, end_station_name, end_station_id, 
    start_lat, start_lng, end_lat, end_lng, member_casual
)
SELECT 
    ride_id,
    rideable_type,
    CASE
        WHEN DAYOFWEEK(started_at) = 1 THEN "Sunday"
        WHEN DAYOFWEEK(started_at) = 2 THEN "Monday"
        WHEN DAYOFWEEK(started_at) = 3 THEN "Tuesday"
        WHEN DAYOFWEEK(started_at) = 4 THEN "Wednesday"
        WHEN DAYOFWEEK(started_at) = 5 THEN "Thursday"
        WHEN DAYOFWEEK(started_at) = 6 THEN "Friday"
        WHEN DAYOFWEEK(started_at) = 7 THEN "Saturday"
        ELSE 'not a day of week'
    END as day_of_week,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) as ride_length,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM 202401_divvy_tripdata
UNION ALL
SELECT 
    ride_id,
    rideable_type,
    CASE
        WHEN DAYOFWEEK(started_at) = 1 THEN "Sunday"
        WHEN DAYOFWEEK(started_at) = 2 THEN "Monday"
        WHEN DAYOFWEEK(started_at) = 3 THEN "Tuesday"
        WHEN DAYOFWEEK(started_at) = 4 THEN "Wednesday"
        WHEN DAYOFWEEK(started_at) = 5 THEN "Thursday"
        WHEN DAYOFWEEK(started_at) = 6 THEN "Friday"
        WHEN DAYOFWEEK(started_at) = 7 THEN "Saturday"
        ELSE 'not a day of week'
    END as day_of_week,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) as ride_length,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM 202402_divvy_tripdata
UNION ALL
SELECT 
    ride_id,
    rideable_type,
    CASE
        WHEN DAYOFWEEK(started_at) = 1 THEN "Sunday"
        WHEN DAYOFWEEK(started_at) = 2 THEN "Monday"
        WHEN DAYOFWEEK(started_at) = 3 THEN "Tuesday"
        WHEN DAYOFWEEK(started_at) = 4 THEN "Wednesday"
        WHEN DAYOFWEEK(started_at) = 5 THEN "Thursday"
        WHEN DAYOFWEEK(started_at) = 6 THEN "Friday"
        WHEN DAYOFWEEK(started_at) = 7 THEN "Saturday"
        ELSE 'not a day of week'
    END as day_of_week,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) as ride_length,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM 202403_divvy_tripdata
UNION ALL
SELECT 
    ride_id,
    rideable_type,
    CASE
        WHEN DAYOFWEEK(started_at) = 1 THEN "Sunday"
        WHEN DAYOFWEEK(started_at) = 2 THEN "Monday"
        WHEN DAYOFWEEK(started_at) = 3 THEN "Tuesday"
        WHEN DAYOFWEEK(started_at) = 4 THEN "Wednesday"
        WHEN DAYOFWEEK(started_at) = 5 THEN "Thursday"
        WHEN DAYOFWEEK(started_at) = 6 THEN "Friday"
        WHEN DAYOFWEEK(started_at) = 7 THEN "Saturday"
        ELSE 'not a day of week'
    END as day_of_week,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) as ride_length,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM 202404_divvy_tripdata
UNION ALL
SELECT 
    ride_id,
    rideable_type,
    CASE
        WHEN DAYOFWEEK(started_at) = 1 THEN "Sunday"
        WHEN DAYOFWEEK(started_at) = 2 THEN "Monday"
        WHEN DAYOFWEEK(started_at) = 3 THEN "Tuesday"
        WHEN DAYOFWEEK(started_at) = 4 THEN "Wednesday"
        WHEN DAYOFWEEK(started_at) = 5 THEN "Thursday"
        WHEN DAYOFWEEK(started_at) = 6 THEN "Friday"
        WHEN DAYOFWEEK(started_at) = 7 THEN "Saturday"
        ELSE 'not a day of week'
    END as day_of_week,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) as ride_length,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM 202405_divvy_tripdata
UNION ALL
SELECT 
    ride_id,
    rideable_type,
    CASE
        WHEN DAYOFWEEK(started_at) = 1 THEN "Sunday"
        WHEN DAYOFWEEK(started_at) = 2 THEN "Monday"
        WHEN DAYOFWEEK(started_at) = 3 THEN "Tuesday"
        WHEN DAYOFWEEK(started_at) = 4 THEN "Wednesday"
        WHEN DAYOFWEEK(started_at) = 5 THEN "Thursday"
        WHEN DAYOFWEEK(started_at) = 6 THEN "Friday"
        WHEN DAYOFWEEK(started_at) = 7 THEN "Saturday"
        ELSE 'not a day of week'
    END as day_of_week,
    started_at,
    ended_at,
    TIMESTAMPDIFF(SECOND, started_at, ended_at) as ride_length,
    start_station_name,
    start_station_id,
    end_station_name,
    end_station_id,
    start_lat,
    start_lng,
    end_lat,
    end_lng,
    member_casual
FROM 202406_divvy_tripdata
ON DUPLICATE KEY UPDATE
  	rideable_type = VALUES(rideable_type),
	day_of_week = VALUES(day_of_week),
	started_at = VALUES(started_at),
	ended_at = VALUES(ended_at),
	ride_length = VALUES(ride_length),
	start_station_name = VALUES(start_station_name),
	start_station_id = VALUES(start_station_id),
	end_station_name = VALUES(end_station_name),
	end_station_id = VALUES(end_station_id),
	start_lat = VALUES(start_lat),
	start_lng = VALUES(start_lng),
	end_lat = VALUES(end_lat),
	end_lng = VALUES(end_lng),
	member_casual = VALUES(member_casual)

/* CLEANING DATA */
DELETE FROM all_trip 
WHERE day_of_week = "not a day of week" OR ride_length < 1

/* CREATE SUMMARY STATISTICS */
-- Statistical Summary
-- 1
SELECT
	AVG(ride_length) as avg_ride_length,
	MAX(ride_length) as max_ride_length,
	MIN(ride_length) as min_ride_length
FROM 
	all_trip at2 

-- 2
SELECT 
	at2.member_casual,
	count(at2.ride_id) as count
FROM 
	all_trip at2
GROUP BY 1

-- 3
SELECT 
	at2.member_casual,
	AVG(at2.ride_length) as avg_ride_length 
FROM 
	all_trip at2 
GROUP BY 1

-- The mode of day_of_week
SELECT 
	day_of_week,
	count(ride_id)
FROM 	
	all_trip at2 
GROUP BY 1
ORDER BY 2 DESC 
LIMIT 1

-- The mode day of the week for each month [optional]
WITH monthly_data AS (
  SELECT
    EXTRACT(MONTH FROM dt.started_at) AS month,
    day_of_week,
    COUNT(*) AS count
  FROM all_trip AS dt
  GROUP BY 1, 2
)
SELECT 
	month,
	day_of_week
FROM(
	SELECT
	  *,
	  ROW_NUMBER () OVER(PARTITION BY month ORDER BY count DESC) AS row_rank
	FROM monthly_data
	ORDER BY month, row_rank ASC
	) AS all_data
WHERE 
	row_rank = 1

-- The number of bike riders and the average ride time for each day of the week
SELECT 
	day_of_week,
	COUNT(ride_id) as number_users,
	AVG(ride_length) as avg_ride_length  
FROM 	
	all_trip at2
GROUP BY 1
ORDER BY 1

-- The average ride length for each user type (member and casual) on each day of the week
SELECT 
	day_of_week,
	member_casual,
	AVG(ride_length) as avg_ride_length
FROM 
	all_trip at2 
GROUP BY 1,2
ORDER BY 1

-- The number of bike riders for each user type (member and casual) on each day of week
SELECT 
	day_of_week,
	member_casual,
	COUNT(ride_id) as number_users
FROM 
	all_trip at2 
GROUP BY 1,2
ORDER BY 1

-- The number of bike riders and the average ride time for each month [optional]
SELECT 
	EXTRACT(MONTH FROM started_at) as month,
	COUNT(ride_id) as number_users,
	AVG(ride_length) as avg_ride_length  
FROM 	
	all_trip at2
GROUP BY 1
ORDER BY 1
