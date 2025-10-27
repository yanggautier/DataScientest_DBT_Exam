{{ config(
    tags=['staging']
) }}

select  
    $1::int as media_type_id,
    $2::varchar as name
from @s3_data/music/MediaType.csv
(FILE_FORMAT => 'CLASSIC_CSV')