-- Part 1 =======================

-- Drop DB if exists
DROP DATABASE IF EXISTS nba_db;


-- Create DB nba_db
CREATE DATABASE nba_db;

-- Connect to nba_db
\c nba_db;

-- Drop table if exists
DROP TABLE IF EXISTS players;

-- Create table here
CREATE TABLE players(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INTEGER NOT NULL,
    team VARCHAR(3) NOT NULL,
    games INTEGER NOT NULL,
    points INTEGER NOT NULL
)

-- Insert player here



-- Part 2 =======================
-- Uncomment COPY players statement and modify it with YOUR file path!


COPY players(name, age, team, games, points) FROM '/Users/mek305/documents/nba_sql/nba_season_2011-2012.csv' DELIMITER ',' CSV;


SELECT * FROM players WHERE team = 'NYK';

SELECT * FROM players WHERE team = 'IND' AND age < 26;


SELECT * FROM player ORDER BY points ASC LIMIT 30;


SELECT name, (points/games) FROM players ORDER BY points DESC LIMIT 20;


SELECT AVG(age) FROM players;

SELECT AVG(age) FROM players WHERE team ='OKC';

SELECT AVG(age) FROM players WHERE games > 40;
