{{
  config(
    tags = ['report', "album_number_by_artist"]
    )
}}

-- 5. Donnez le nombre d'albums produits pour chaque artiste.
SELECT  artist_name, COUNT(*) as album_count
FROM {{ ref('dim_album') }}
GROUP BY artist_name
ORDER BY album_count DESC