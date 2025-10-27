{{
  config(
    tags = ['report', "track_by_artist"]
    )
}}

-- 6. Donnez le nombre de morceaux produits par chaque artiste.
SELECT  al.artist_name as "Artist", COUNT(*) as track_count
FROM {{ ref('fact_track') }} f
INNER JOIN {{ ref('dim_album') }} al ON f.album_id = al.album_id
GROUP BY al.artist_name
ORDER BY track_count DESC