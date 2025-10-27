{{ config(
    tags=['mart']
) }}

select media_type_id, name
from {{ ref('stg_media_type') }}