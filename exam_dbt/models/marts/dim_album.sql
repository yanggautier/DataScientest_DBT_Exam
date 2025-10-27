{{ config(
    tags=['mart']
) }}


select
    a.album_id,
    a.title,
    a.prod_year,
    a.cd_year,
    ar.name as artist_name,
    ar.birthyear as artist_birthyear,
    ar.country as artist_country
from {{ ref('stg_album') }} a
join {{ ref('stg_artist') }} ar
on a.artist_id = ar.artist_id
