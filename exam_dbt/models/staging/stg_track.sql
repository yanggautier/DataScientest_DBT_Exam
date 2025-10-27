{{ config(
    tags=['staging']
) }}

select
    TRY_CAST($1 AS INT) as track_id,
    $2::varchar as name,
    TRY_CAST($3 AS INT) as media_type_id,
    TRY_CAST($4 AS INT) as genre_id,
    TRY_CAST($5 AS INT) as album_id,
    $6::varchar as composer,
    TRY_CAST($7 AS INT) as milliseconds,
    TRY_CAST($8 AS INT) as bytes,
    TRY_CAST($9 AS DECIMAL) as unit_price

from @s3_data/music/Track.csv
(FILE_FORMAT => 'CLASSIC_CSV')