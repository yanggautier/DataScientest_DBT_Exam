{{ config(
    tags=['mart']
) }}

select genre_id, name
from {{ ref('stg_genre') }}