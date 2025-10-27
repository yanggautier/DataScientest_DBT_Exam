{{
  config(
    tags = ['report', "avg_track_size_per_genre"]
    )
}}

-- 10. Donnez la moyenne des tailles des morceaux par genre musical.
SELECT g.name AS genre, ROUND(AVG(f.milliseconds) / 60000, 2) as avg_track_size_per_genre
FROM {{ ref('fact_track') }} f
RIGHT JOIN {{ ref('dim_genre') }} g ON g.genre_id = f.genre_id
GROUP BY g.name
ORDER BY avg_track_size_per_genre ASC