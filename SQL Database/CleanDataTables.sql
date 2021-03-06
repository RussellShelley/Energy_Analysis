-- JOIN MAIN AND PERSON TABLES
DROP TABLE IF EXISTS ml_input;

CREATE TABLE IF NOT EXISTS ml_input
AS SELECT * FROM tbl_person
FULL OUTER JOIN tbl_main USING (sampno);

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

SELECT * FROM ml_input;

	