--1.query to retrieve data from Customers table whose ContactTitle is Sales Manager
select * from Customers WHERE ContactTitle='Sales Manager';

--2.query to retrieve data from Customers table whose ContactName starts with letter s
select * from Customers WHERE ContactName LIKE 's%';

--3.query to retrieve data from Customers table who lives in London, Paris, Madrid or San Francisco city.
select * from Customers 
WHERE City='London' or
City='Paris' or
City='Madrid' or
City='San Francisco';

--4.query to retrieve data from Customers table for all those customers who do not have Fax number
select * from Customers WHERE Fax IS null;

--5.query to retrieve data from Customers table arranged in alphabetical order based on ContactName
select * from Customers order by ContactName asc;

--6.query to retrieve data from Products table to find how much total UnitsInStock you have from each Supplier. 
----------------------------Group the SupplierID and calculate the sum of corresponding UnitsInStock for each supplier.
----------------Further filter the data to display records where SupplierID range between 10 to 30.
select sum(UnitsInStock) AS UNITSTOCK,SupplierID from  Products
where SupplierId between 10 and 30
group by SupplierID

--7.query to retrieve data from Products table to show only ProductID, ProductName, UnitPrice & UnitsInStock. Also show the TotalAmount by multiplying UnitPrice with UnitsInStock
SELECT ProductID, ProductName, UnitPrice, UnitsInStock,(UnitPrice*UnitsInStock) 
AS TotalAmount from Products;

--8.query to retrieve data from Products table where UnitsInStock is greater than or equals to 10 and less than equals to 100
select* from Products
where UnitsInStock>=10 and UnitsInStock<=100;

--9.query to retrieve data from Products table for all products with ProductID range between 10 to 20.
select* from Products
where ProductID BETWEEN 10 AND 20;

--10.query to retrieve data from Products table whose QuantityPerUnit is in bottles.
select* from Products
where QuantityPerUnit like '%bottles%'

