SELECT
    BATTLE,
    COUNT(*) AS "TOTAL SHIPS PER BATTLE",
    SUM (
        CASE COUNTRY
            WHEN 'USA' THEN 1
            ELSE 0
        END
    ) AS "TOTAL USA SHIPS",
    SUM (
        CASE RESULT
            WHEN 'sunk' THEN 1
            ELSE 0
        END
    ) AS "TOTAL SUNK"
FROM
    OUTCOMES O
INNER JOIN
    SHIPS S ON 
        S.NAME = O.SHIP
INNER JOIN
    CLASSES C ON
        C.CLASS = S.CLASS
GROUP BY
    BATTLE
