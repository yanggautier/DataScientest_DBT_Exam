{{
  config(
    tags = ['report', "playlist_has_4_minutes_track"]
    )
}}

-- 8. Donnez les noms de toutes les playlists où figurent des morceaux de plus de 4 minutes.
SELECT DISTINCT b.playlist_name,
FROM {{ ref('int_bridge_playlist')}} b
JOIN {{ ref('fact_track') }} f ON b.track_id = f.track_id
WHERE f.milliseconds > 24000