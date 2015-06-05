WITH S AS (  
SELECT 
	ProductId,
	SUM(Sales.SalesOrderDetail.OrderQty) as  Sold,
	YEAR(Sales.SalesOrderDetail.ModifiedDate) as DestYear,
	RANK() over (
		PARTITION BY YEAR(Sales.SalesOrderDetail.ModifiedDate) 
		ORDER BY SUM(SalesOrderDetail.OrderQty) desc) as "RANK"
FROM
	Sales.SalesOrderDetail
GROUP BY 
	YEAR(Sales.SalesOrderDetail.ModifiedDate),
	ProductID
)
SELECT 
	Production.Product.Name , 
	S.DestYear, 
	S.Sold
FROM S 
INNER JOIN Production.Product on (Product.ProductID = S.ProductID)
WHERE S.RANK = 1;
