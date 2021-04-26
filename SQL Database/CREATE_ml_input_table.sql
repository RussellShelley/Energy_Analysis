-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS ml_input;
DROP TABLE IF EXISTS ml_temp;

CREATE TABLE ml_temp
AS SELECT * FROM tbl_person
FULL OUTER JOIN tbl_main USING (sampno);
ALTER TABLE tbl_vehicle
ADD COLUMN ev_flag INT;

UPDATE tbl_vehicle
SET ev_flag = 1
WHERE 
fuel_clean = 3 
OR fuel_clean = 5;

-- UPDATE tbl_vehicle
-- SET ev_flag = 0
-- WHERE fuel_clean ISNULL;

SELECT COUNT(*) FROM tbl_vehicle
GROUP BY ev_flag;

CREATE TABLE IF NOT EXISTS ml_input
AS SELECT 
	ml_temp.*,
	tbl_vehicle.ev_flag
FROM ml_temp
INNER JOIN tbl_vehicle USING (sampno);

DROP TABLE ml_temp;

-- REMOVE COLUMNS AND CLEAN DATATYPES
ALTER TABLE ml_input
DROP COLUMN perid,
DROP COLUMN perno,
DROP COLUMN relationship,
DROP COLUMN license,
DROP COLUMN vehno,
DROP COLUMN vehicle_string,
DROP COLUMN ethnicity,
DROP COLUMN race_1,
DROP COLUMN race_2,
DROP COLUMN race_3,
DROP COLUMN race_4,
DROP COLUMN race_5,
DROP COLUMN race_6,
DROP COLUMN race_7,
DROP COLUMN race_6_x,
DROP COLUMN source,
DROP COLUMN language;

-- ALTER TABLE ml_input
-- ALTER COLUMN drive_freq INT;
-- ALTER COLUMN job_type INT,
-- ALTER COLUMN work_mode INT,
-- ALTER COLUMN work_distance INT,
-- ALTER COLUMN work_days INT,
-- ALTER COLUMN school_mode INT,
-- ALTER COLUMN school_distance INT,
-- ALTER COLUMN hybrid_experience INT,
-- ALTER COLUMN past_hybrid INT,
-- ALTER COLUMN phev_experience INT,
-- ALTER COLUMN past_phev INT,
-- ALTER COLUMN bev_experience INT,
-- ALTER COLUMN past_bev INT,
-- ALTER COLUMN fcv_experience INT,
-- ALTER COLUMN past_fcv INT,
-- ALTER COLUMN charge_spots INT,
-- ALTER COLUMN charge_work INT,
-- ALTER COLUMN home_parking_1 INT,
-- ALTER COLUMN home_parking_2 INT,
-- ALTER COLUMN home_parking_3 INT,
-- ALTER COLUMN home_parking_4 INT,
-- ALTER COLUMN home_parking_5 INT,
-- ALTER COLUMN home_parking_6 INT,
-- ALTER COLUMN home_parking_7 INT,
-- ALTER COLUMN home_parking_8 INT,
-- ALTER COLUMN home_parking_9 INT,
-- ALTER COLUMN home_parking_8_x INT,
-- ALTER COLUMN home_electricity_access INT,
-- ALTER COLUMN hsa_distance_1_1_x INT,
-- ALTER COLUMN hsa_distance_1_2_x INT,
-- ALTER COLUMN future_purchase INT,
-- ALTER COLUMN next_purchase INT,
-- ALTER COLUMN purchase_timing INT,
-- ALTER COLUMN mode_freq_1 INT,
-- ALTER COLUMN mode_freq_2 INT,
-- ALTER COLUMN mode_freq_3 INT,
-- ALTER COLUMN mode_freq_4 INT,
-- ALTER COLUMN mode_freq_5 INT,
-- ALTER COLUMN mode_freq_6 INT,
-- ALTER COLUMN mode_freq_7 INT,
-- ALTER COLUMN mode_freq_8 INT,
-- ALTER COLUMN mode_freq_9 INT,
-- ALTER COLUMN mode_freq_10 INT,
-- ALTER COLUMN mode_freq_11 INT,
-- ALTER COLUMN mode_freq_12 INT,
-- ALTER COLUMN autonomous_rideshare INT,
-- ALTER COLUMN housing_1_8_x INT,
-- ALTER COLUMN solar_future INT;

SELECT * FROM ml_input;
