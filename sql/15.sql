USE data;
GO
SELECT *
FROM
(
    SELECT Region, Plan_Type, Revenue
    FROM productdata
) AS SourceTable
PIVOT
(
    SUM(Revenue)
    FOR Plan_Type IN ([Free], [Pro], [Premium])
) AS PivotTable;
-- Is Free required in the list of plans?