USE data;
GO
/*
Using the NTILE function we can group chrun risk , in this case. 
NTILE(4) Is really a quartile where each quartile represents 25%
so the total rows. So 250 in each quartile
Quartile 1 will have the lowest risk and 4 the highest
*/
SELECT
  Plan_Type,
  Churn_Risk_Score,
  NTILE(4) OVER (PARTITION BY Plan_Type ORDER BY Churn_Risk_Score) AS Churn_Risk_Quartile
FROM productdata;

