{{
  config(
    tags = ['report', "more_than_1_cd"]
    )
}}

-- 1. Donnez les titres des albums qui ont plus de 1 CD.
SELECT DISTINCT 
    REGEXP_REPLACE(
        REGEXP_REPLACE(title, '\\s*[\\[\\(]?(Disc|CD)\\s*\\d+[\\]\\)]?\\s*$', ''), 
        '\\s+$', 
        ''
    ) AS album_title
FROM {{ ref('dim_album') }}
GROUP BY REGEXP_REPLACE(
            REGEXP_REPLACE(title, '\\s*[\\[\\(]?(Disc|CD)\\s*\\d+[\\]\\)]?\\s*$', ''), 
            '\\s+$', 
            ''
         )
HAVING COUNT(album_title) > 1
ORDER BY album_title