{{ config(
    tags=['staging']
) }}

select
    $1::int as album_id,
    $2::varchar as title,
    $3::int as artist_id,
    $4::int as prod_year,
    $5::int as cd_year
from @s3_data/music/Album.csv
(FILE_FORMAT => 'CLASSIC_CSV')