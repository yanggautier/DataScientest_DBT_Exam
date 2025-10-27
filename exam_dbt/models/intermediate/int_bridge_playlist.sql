{{
    config(
        materialized='table',
        schema='star',
        tags=['int']
    )
}}

SELECT 
    pt.track_id,
    pt.playlist_id,
    p.name as playlist_name
FROM {{ ref('stg_playlist_track') }} pt 
INNER JOIN {{ ref('stg_playlist') }} p ON pt.playlist_id = p.playlist_id
