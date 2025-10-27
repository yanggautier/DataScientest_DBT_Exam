{{ config(
        tags=['mart']
)}}

select 
    t.track_id, 
    t.album_id, 
    t.genre_id, 
    t.media_type_id, 
    dc.composer_id, 
    t.milliseconds,
    t.bytes,
    t.unit_price
from {{ ref('stg_track') }} t 
inner join {{ ref('dim_composer') }} dc on t.composer = dc.name