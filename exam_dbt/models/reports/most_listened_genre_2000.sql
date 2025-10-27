 {{ 
    config(
        tags=['report', 'most_listened_genre_2000']
    )
}}

-- 7. Donnez le genre de musique le plus écouté dans les années 2000.
SELECT g.name as genre,  COUNT(*) as playlist_count
FROM {{ ref('int_bridge_playlist') }} b
LEFT JOIN {{ ref('fact_track') }} f ON f.track_id = b.track_id
INNER JOIN {{ ref('dim_album') }} al ON f.album_id = al.album_id
LEFT JOIN {{ ref('dim_genre') }} g ON f.genre_id = g.genre_id
WHERE al.prod_year BETWEEN 2000 AND 2009
GROUP BY g.name
ORDER BY playlist_count DESC