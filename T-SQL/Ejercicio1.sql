--Muestra todos los datos de la tabla Customers cuyo ID se ha 'ALFKI'
SELECT * FROM Customers c WHERE c.CustomerID = 'ALFKI';

--Se actualiza el precio del ProductoId= 1
UPDATE Products SET UnitPrice=19 WHERE ProductID= 1;

--Se añade el campo IsDelete a la Tabla Products
ALTER TABLE Products
	ADD IsDelete bit NULL;

--Se renombra el campo IsDelete
sp_rename 'Products.IsDelete', 'IsDeleted', 'COLUMN';

sp_help Customers;

--Se crea la tabla Users
CREATE TABLE Users (	
	UserId Uniqueidentifier NOT NULL,
	UserName NVarchar(20),
	UserLastName NVARCHAR(50)
);

--Muestra todos los campos de la tabla Users
SELECT * FROM Users;

--Hace una insercciíon de datos en la tabla Users 
INSERT INTO Users (UserId, UserName, UserLastName) VALUES (NEWID(), 'Pedro', 'Martínez');

--Elimina el registro cuyo UserId= E4A4D968-59DC-44F6-A657-8DD4791C5723
DELETE FROM Users Where UserId='E4A4D968-59DC-44F6-A657-8DD4791C5723';

--Elimina el campo UserLastName
ALTER TABLE Users
Drop COLUMN UserLastName; 

--Elimina la Tabla Users
DROP TABLE Users;