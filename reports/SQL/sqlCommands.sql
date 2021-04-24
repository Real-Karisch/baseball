SELECT 
    *
FROM atbats INNER JOIN pitches
    ON atbats."gamePk" = pitches."gamePk"
WHERE atbats."batterID" = 514888
LIMIT 5;