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


-- Add Data


-- Update Data

-- Delete Data