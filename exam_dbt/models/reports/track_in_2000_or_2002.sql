{{
  config(
    tags = ['report', "track_in_2000_or_2002"]
    )
}}

-- 2. Donnez les morceaux produits en 2000 ou en 2002.
SELECT name, prod_year
FROM {{ ref('fact_track') }}
JOIN {{ ref('dim_track') }} USING(track_id)
JOIN {{ ref('dim_album') }} USING(album_id)
WHERE prod_year = 2000 OR prod_year = 2002
