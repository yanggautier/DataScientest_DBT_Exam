{{ config(
    tags=['staging']
) }}

select
    $1::int as playlist_id,
    $2::varchar as name
from @s3_data/music/Playlist.csv
(FILE_FORMAT => 'CLASSIC_CSV')