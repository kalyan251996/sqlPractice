
SELECT *
FROM (
  SELECT 
    (link unavailable), 
    T1.Value, 
    T2.Value AS Value2, 
    T3.Value AS Value3,
    CASE 
      WHEN T1.Value IS NOT NULL AND T2.Value IS NOT NULL AND T3.Value IS NULL THEN 1
      WHEN T1.Value IS NOT NULL AND T2.Value IS NULL AND T3.Value IS NOT NULL THEN 1
      WHEN T1.Value IS NULL AND T2.Value IS NOT NULL AND T3.Value IS NOT NULL THEN 1
      ELSE 0
    END AS MatchCount
  FROM TableA T1
  FULL OUTER JOIN TableB T2 ON (link unavailable) = (link unavailable)
  FULL OUTER JOIN TableC T3 ON (link unavailable) = (link unavailable)
) AS Subquery
WHERE MatchCount = 1;
