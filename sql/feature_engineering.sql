USE netflix_content_strategy;

CREATE TABLE netflix_catalog_features AS
SELECT
    *,
    YEAR(date_added) AS date_added_year,
    MONTH(date_added) AS date_added_month,
    CASE
        WHEN type = 'Movie' THEN CAST(REPLACE(duration, ' min', '') AS UNSIGNED)
        ELSE NULL
    END AS movie_minutes,
    CASE
        WHEN type = 'TV Show' AND duration LIKE '%Season%' 
        THEN CAST(REPLACE(REPLACE(duration, ' Seasons', ''), ' Season', '') AS UNSIGNED)
        ELSE NULL
    END AS number_of_seasons
FROM netflix_titles_clean;

CREATE TABLE netflix_title_performance AS
SELECT
    *,
    ROUND(imdb_score * LOG10(imdb_votes + 1), 2) AS weighted_performance_score
FROM netflix_imdb_clean;
