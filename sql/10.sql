USE data;
GO
SELECT
  Plan_Type,
  SUM(Revenue) AS Total_Revenue
FROM productdata
GROUP BY Plan_Type;
