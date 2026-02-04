USE data;
GO
SELECT
    Region,
    Plan_Type,
    COUNT(*) AS Sessions
FROM productdata
GROUP BY Region, Plan_Type
ORDER BY Region;
