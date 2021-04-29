SELECT 
    *
FROM atbats INNER JOIN pitches
    ON atbats."gamePk" = pitches."gamePk"
WHERE atbats."batterID" = 514888
LIMIT 5;

CREATE TABLE temp1 AS
SELECT DISTINCT
    major.players.*
FROM major.players INNER JOIN major.atbats
    ON major.players.id = major.atbats."batterID";

CREATE TABLE temp2 AS
SELECT DISTINCT
    major.players.*
FROM major.players INNER JOIN major.atbats
    ON major.players.id = major.atbats."pitcherID";

SELECT * FROM temp1 OUTER JOIN temp2;

SELECT * FROM major.games AS g
    INNER JOIN 
        major.atbats AS ab ON ab."gamePk" = g."gamePk"
    INNER JOIN
        major.pitches AS p ON p."gamePk" = g."gamePk" AND p."atBatIndex" = ab."atBatIndex";