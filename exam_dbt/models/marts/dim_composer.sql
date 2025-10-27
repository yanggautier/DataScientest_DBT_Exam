{{ config(
    tags=['mart']
) }}

select
    row_number() over (order by name) as composer_id,
    name
from (
    select distinct composer as name
    from {{ ref('stg_track') }}
    where composer is not null
)
