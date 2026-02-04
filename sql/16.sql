USE data;
GO
/*
Complex queries can be encapsulated in views
In a real SQL scenario users would only have access to
views to read data, never the tables
To write data they again have no access to tables and uses
stored procedures. Both views and stored procedures protect the data
and abstract the user from the schema making it easier for devs too

To access the view
SELECT * FROM RevenueRegion
*/

CREATE VIEW RevenueRegion AS 
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

