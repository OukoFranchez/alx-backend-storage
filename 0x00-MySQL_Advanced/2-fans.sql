/*
SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans

		Requirements:

		Import this table dump: metal_bands.sql.zip
		Column names must be: origin and nb_fans
		Your script can be executed on any database
*/
-- Create a temporary table to store the aggregated fan counts per country
CREATE TEMPORARY TABLE temp_fan_counts AS
SELECT origin, COUNT(*) AS nb_fans
FROM metal_bands
GROUP BY origin;

-- Rank the country origins based on the fan counts
SELECT origin, nb_fans
FROM temp_fan_counts
ORDER BY nb_fans DESC;