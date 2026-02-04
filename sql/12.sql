USE data;
GO
SELECT
  Plan_Type,
  AVG(Churn_Risk_Score) AS Avg_Churn_Risk
FROM productdata
GROUP BY Plan_Type;
