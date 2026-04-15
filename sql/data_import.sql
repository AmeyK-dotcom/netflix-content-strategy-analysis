CREATE DATABASE netflix_content_strategy;
USE netflix_content_strategy;

CREATE TABLE netflix_titles_raw (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title VARCHAR(255),
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added VARCHAR(100),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in TEXT,
    description TEXT
);

CREATE TABLE netflix_imdb_raw (
    `index` INT,
    id VARCHAR(50),
    title VARCHAR(255),
    type VARCHAR(20),
    description TEXT,
    release_year INT,
    age_certification VARCHAR(20),
    runtime INT,
    imdb_id VARCHAR(20),
    imdb_score DECIMAL(3,1),
    imdb_votes INT
);

CREATE TABLE series_data_raw (
    Poster_Link TEXT,
    Series_Title VARCHAR(255),
    Runtime_of_Series VARCHAR(100),
    Certificate VARCHAR(50),
    Runtime_of_Episodes VARCHAR(100),
    Genre TEXT,
    IMDB_Rating DECIMAL(3,1),
    Overview TEXT,
    Star1 VARCHAR(255),
    Star2 VARCHAR(255),
    Star3 VARCHAR(255),
    Star4 VARCHAR(255),
    No_of_Votes INT
);

CREATE TABLE peaky_blinders_episodes_raw (
    series_title VARCHAR(255),
    season INT,
    episode INT,
    rating DECIMAL(3,1)
);
