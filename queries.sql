-- Read Data
    SELECT CustomerName, City, Country 
    FROM Customers;

-- READ Data, all suppliers from the USA only (use ' ' and db can be configure to be Case sensitive)  
    SELECT Country, City, SupplierName 
    FROM Suppliers
    WHERE Country = 'USA';

-- READ data from customers in USA only
    SELECT *
    FROM Customers
    WHERE Country = 'USA';

--READ with OR operator and ORDER BY and DESC
    SELECT *
    FROM Customers
    WHERE Country = 'USA' or City = 'Paris'
    ORDER BY Country DESC;

--READ order by country ascending, then by city descending
    SELECT *
    FROM Customers
    WHERE Country = 'USA' or City = 'Paris'
    ORDER BY Country, City DESC;

--READ 5 MOst expensive products
    SELECT * FROM [Products]
    WHERE Price > 25
    order by price desc
    LIMIT 5; 
-- Add Data
    INSERT INTO [shippers] (ShipperName, Phone)
    VALUES('Lambda Shipping', '(555) 555-1234');

-- Update Data
--WRONG wAY
    UPDATE [Shippers]
    SET Phone = '(505) 555-1234'; --DANGER DANGER NO 'WHERE' CLAUSE, ALL RECORDS UPDATE IF YOU DON'T SPECIFY WITH WHERE!!!!!!!!

--UPDATE CORRECT
    --SELECT * FROM [Shippers]
    UPDATE Shippers SET Phone = '(555) 555-5555'
    WHERE ShipperID = 4;

-- Delete Data
    DELETE FROM Shippers
    WHERE ShipperID = 4;