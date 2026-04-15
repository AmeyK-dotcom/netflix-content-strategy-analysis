USE netflix_content_strategy;

CREATE TABLE netflix_titles_clean AS
SELECT
    show_id,
    TRIM(type) AS type,
    TRIM(title) AS title,
    TRIM(country) AS country,
    CASE 
        WHEN date_added IS NOT NULL AND date_added != ''
        THEN STR_TO_DATE(TRIM(date_added), '%M %e, %Y')
        ELSE NULL
    END AS date_added,
    release_year,
    TRIM(rating) AS rating,
    TRIM(duration) AS duration,
    TRIM(listed_in) AS listed_in
FROM netflix_titles_raw;

CREATE TABLE netflix_imdb_clean AS
SELECT
    TRIM(title) AS title,
    UPPER(TRIM(type)) AS type,
    release_year,
    runtime,
    imdb_score,
    imdb_votes
FROM netflix_imdb_raw;

CREATE TABLE series_data_clean AS
SELECT
    TRIM(Series_Title) AS series_title,
    TRIM(Runtime_of_Series) AS runtime_of_series,
    TRIM(Genre) AS genre,
    IMDB_Rating AS imdb_rating,
    No_of_Votes AS no_of_votes
FROM series_data_raw;

CREATE TABLE peaky_blinders_episodes_clean AS
SELECT
    TRIM(series_title) AS series_title,
    season,
    episode,
    rating
FROM peaky_blinders_episodes_raw;
