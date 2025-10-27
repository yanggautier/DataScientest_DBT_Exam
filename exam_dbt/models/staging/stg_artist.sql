{{ config(
    tags=['staging']
) }}

select
    $1::int as artist_id,
    $2::varchar as name,
    $3::int as birthyear,
    $4::varchar as country
from @s3_data/music/Artist.csv
(FILE_FORMAT => 'CLASSIC_CSV')