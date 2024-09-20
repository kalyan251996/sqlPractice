select * from TableA;
select * from TableB;
select * from TableC;
SELECT value
FROM (
  SELECT  value, COUNT(*) as Count
  FROM (
    SELECT Value FROM TableA
    UNION ALL
    SELECT Value FROM TableB
    UNION ALL
    SELECT Value FROM TableC
  ) as Combined
  GROUP BY Value
)as Filtered
WHERE Count = 2;
