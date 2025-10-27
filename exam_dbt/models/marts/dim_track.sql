{{ config(
    tags=['mart']
) }}

select track_id, name
from {{ ref('stg_track') }}
