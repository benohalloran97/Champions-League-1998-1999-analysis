-- Concatonate the data to present it in a cleaner way --
SELECT hometeam || ' vs ' || awayteam AS "Teams", hscore || ' : ' || ascore AS "Score", winner AS "Result"
FROM "Results";

-- Was there a home team advantage? --
SELECT winner AS "Result", COUNT(*) winner
FROM "Results"
GROUP BY winner;

-- how many goals scored in the whole competition? --
SELECT SUM(hscore) + SUM(ascore) FROM "Results";

-- average goals per game, average home team score, average away team score --
SELECT AVG(hscore + ascore) AS "goals per game" FROM "Results";
SELECT AVG(hscore) AS "home goals per game" FROM "Results";
SELECT AVG(ascore) AS "away goals per game" FROM "Results";


-- how many teams in the competition and average goals per team --
SELECT DISTINCT hometeam FROM "Results";
SELECT (SELECT SUM(hscore) + SUM(ascore) FROM "Results")/ 25;


-- what was the highest scoring game, who were the teams and what was the score --
SELECT MAX(hscore + ascore) FROM "Results";

SELECT hometeam || ' vs ' || awayteam AS "teams", hscore || ' : ' || ascore AS "score", winner AS "Result" FROM "Results"
GROUP BY hometeam, awayteam,hscore, ascore, winner
HAVING SUM(hscore+ascore) = 8;


-- query to use to work out how many total goals a specific team has scored --

SELECT (SELECT SUM(hscore) FROM "Results" WHERE hometeam = 'Man United') +
(SELECT SUM(ascore) FROM "Results" WHERE awayteam = 'Man United');

SELECT (SELECT SUM(hscore) FROM "Results" WHERE hometeam = 'Bayern') +
(SELECT SUM(ascore) FROM "Results" WHERE awayteam = 'Bayern');


-- selecting the matches that did not finish in a draw, 
-- ordered by away team wins and limited to the first 5 results --

SELECT hometeam, awayteam, hscore, ascore, winner
FROM "Results"
WHERE winner <> 'D'
ORDER BY ascore DESC LIMIT 5;

