{{
  config(
    tags = ['report', "rock_jazz_name_composer"]
    )
}}

-- 3. Donnez le nom et le compositeur des morceaux de Rock et de Jazz.
SELECT t.name, c.name as composer, g.name as genre
FROM {{ ref('fact_track') }} f
INNER JOIN {{ ref('dim_track') }} t ON f.track_id = t.track_id
INNER JOIN {{ ref('dim_composer') }} c  ON f.composer_id = c.composer_id
INNER JOIN {{ ref('dim_genre') }} g ON f.genre_id = g.genre_id
WHERE g.name = 'Rock' OR g.name = 'Jazz'