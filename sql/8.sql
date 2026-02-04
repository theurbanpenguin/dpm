USE data;
GO
SELECT
    Plan_Type,
    COUNT(DISTINCT User_ID) AS Users
FROM productdata
GROUP BY Plan_Type;
