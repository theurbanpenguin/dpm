USE data;
GO
SELECT
  User_ID,
  SUM(Revenue) AS User_Revenue
FROM productdata
GROUP BY User_ID
HAVING SUM(Revenue) > 0
ORDER BY User_Revenue DESC;
