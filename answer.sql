-- Q1: What planets did Darth Vader visit in movie 2?
-- Write your answer for Q1 over here.
SELECT DISTINCT T.Planet_Name FROM TimeTable T
WHERE T.Character_Name = 'Darth Vader' AND T.Movie = 2;

-- Q2: Find all characters that never visited any rebels planets.
-- Write your answer for Q2 over here.
SELECT DISTINCT C.Name from Characters C
WHERE C.Name NOT IN (
    SELECT DISTINCT T.Character_Name FROM TimeTable T, Planets P
    WHERE T.Planet_Name = P.Name AND P.Affiliation = "rebels"
);

-- Q3: Who visited planets of his/her affiliation in movie 1?
-- Write your answer for Q3 over here.
SELECT DISTINCT T.Character_Name FROM TimeTable T
WHERE T.Movie = 1 AND T.Planet_Name IN (
    SELECT P.Name FROM Planets P
    WHERE EXISTS (
        SELECT * FROM Characters C
        WHERE T.Character_Name = C.Name AND C.Affiliation = P.Affiliation
    )
);

-- Q4: Which planet(s) has been visited by more than three different characters?
-- Write your answer for Q4 over here.
SELECT PCT.Planet_Name from (
    SELECT Planet_Name, COUNT(DISTINCT Character_Name) AS Character_Count
    FROM TimeTable
    GROUP By Planet_Name
) PCT
WHERE PCT.Character_Count > 3;

-- Q5: For each movie, which character(s) visited the highest number of planets?
-- Write your answer for Q5 over here.
SELECT PCT.Movie, PCT.Character_Name FROM (
    SELECT Movie, Character_Name, COUNT(Planet_Name) AS Planet_Count
    FROM TimeTable
    GROUP BY Movie, Character_Name
) PCT
INNER JOIN (
    SELECT Movie, MAX(Planet_Count) AS Max_Planet_Count FROM (
        SELECT Movie, Character_Name, COUNT(Planet_Name) AS Planet_Count
        FROM TimeTable
        GROUP BY Movie, Character_Name
    ) _
    GROUP BY Movie
) MPCT
ON PCT.Movie = MPCT.Movie AND PCT.Planet_Count = MPCT.Max_Planet_Count;