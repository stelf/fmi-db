SELECT e.FirstName,
       count(InvoiceId),
       max(InvoiceDate),
       min(InvoiceDate)
  FROM employees e
       JOIN
       customers c ON (e.EmployeeId = c.SupportRepId) 
       JOIN
       invoices i ON i.customerid = c.customerid
 WHERE InvoiceDate > '2009-01-01' and InvoiceDate < '2010-01-01'
 GROUP BY e.FirstName;
