{{ config(
    tags=['staging']
) }}

select
    $1::int as genre_id,
    $2::varchar as name
from @s3_data/music/Genre.csv
(FILE_FORMAT => 'CLASSIC_CSV')