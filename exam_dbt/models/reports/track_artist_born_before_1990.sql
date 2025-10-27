{{
  config(
    tags = ['report', "track_artist_born_before_1990"]
    )
}}

-- 11. Donnez les playlist où figurent des morceaux d'artistes nés avant 1990.
SELECT DISTINCT b.playlist_name
FROM {{ ref('int_bridge_playlist') }} b
INNER JOIN {{ ref('fact_track') }} f ON b.track_id = f.track_id
INNER JOIN {{ ref('dim_album') }} al ON f.album_id = al.album_id
WHERE al.artist_birthyear > 1990
