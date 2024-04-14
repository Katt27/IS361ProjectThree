-- Creates the population table and imports data from a CSV file
CREATE TABLE population (
    country VARCHAR(255),
    year INT,
    population BIGINT
);

-- Example for MySQL, adjust path as needed
LOAD DATA LOCAL INFILE '/path/to/your/population.csv'
INTO TABLE population
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
