--Obtiene el producto por el campo CustumerId
CREATE PROCEDURE sp_GetProductsByCustomerId
	@CustumerId NCHAR(10)
AS
BEGIN

SELECT c.CompanyName, c.Address, c.Phone, p.ProductName 
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN [Order Details] od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE c.CustomerID = @CustumerId;

END
GO