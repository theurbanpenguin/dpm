USE data;
GO
SELECT
    Plan_Type,
    AVG(Session_Duration_Min) AS Avg_Session_Minutes
FROM productdata
GROUP BY Plan_Type;
