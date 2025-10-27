{{
  config(
    tags = ['report', "french_rock_artist"]
    )
}}

-- 9. Donnez les morceaux de Rock dont les artistes sont en France.
SELECT t.name AS track, al.artist_name, g.name AS genre
FROM {{ ref('fact_track') }} f
INNER JOIN {{ ref('dim_track') }} t ON f.track_id = t.track_id
INNER JOIN {{ ref('dim_genre') }} g ON f.genre_id = g.genre_id
INNER JOIN {{ ref('dim_album') }} al ON f.album_id = al.album_id
WHERE al.artist_country = 'France' AND g.name = 'Rock'