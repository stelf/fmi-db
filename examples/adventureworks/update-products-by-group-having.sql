/* промяна на продуктите, които са в 
продуктова линия със средна цена над 150  */

UPDATE
	Production.Product
SET 
ListPrice = ListPrice * 1.2
WHERE
	ProductLine IN 
	(
		SELECT
			ProductLine
			FROM Production.Product
		group by ProductLine
		HAVING 	Avg(ListPrice) >  150 
	)

