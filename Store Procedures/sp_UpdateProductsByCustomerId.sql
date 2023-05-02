--Modifica los campos: CustumerId, CompanyName, Address, Phone
CREATE PROCEDURE sp_UpdateProductsByCustomerId
	@CustumerId NCHAR(10),
	@CompanyName NCHAR(80),
	@Address NVARCHAR(120),
	@Phone NCHAR(48)

AS
BEGIN

UPDATE Customers  
SET CompanyName=@CompanyName, Address=@Address, Phone = @Phone
WHERE CustomerID = @CustumerId;

END
GO


--Llamda del procedimiento
DECLARE @CustumerId NCHAR(10) = 'ALFKI';
DECLARE @CompanyName NCHAR(80) = 'Alfreds';
DECLARE @Address NVARCHAR(120) = 'Obere';
DECLARE @Phone  NCHAR(48) =  '060-0074321';
EXEC sp_UpdateProductsByCustomerId @CustumerId, @CompanyName, @Address, @Phone;