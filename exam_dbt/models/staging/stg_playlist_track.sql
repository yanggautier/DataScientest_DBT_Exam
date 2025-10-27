{{ config(
    tags=['staging']
) }}

select
    $1::int as playlist_id,
    $2::int as track_id
from @s3_data/music/PlaylistTrack.csv
(FILE_FORMAT => 'CLASSIC_CSV')