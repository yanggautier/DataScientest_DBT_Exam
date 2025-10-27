{{
  config(
    tags = ['report', "ten_longest_albums"]
    )
}}

-- 4. Donnez les 10 albums les plus longs.
SELECT al.album_id, al.title, SUM(f.milliseconds) as duration
FROM {{ ref('fact_track') }} f
INNER JOIN {{ ref('dim_album') }} al ON f.album_id = al.album_id
GROUP BY al.album_id,  al.title
ORDER BY duration DESC
LIMIT 10