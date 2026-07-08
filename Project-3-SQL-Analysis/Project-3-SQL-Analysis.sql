create database DecodeLabs;
use decodelabs;
select * from decodelabs.decodelabsp3;
SELECT * FROM decodelabsp3
LIMIT 10;

SELECT ï»¿OrderID, Product, Quantity, TotalPrice
FROM decodelabsp3;

## Finding all shipped orders.
SELECT *
FROM decodelabsp3
WHERE OrderStatus = 'Shipped';

## Find all orders with a TotalPrice greater than 500.
SELECT *
FROM decodelabsp3
WHERE TotalPrice > 500;

## Find all Credit Card payments.
SELECT *
FROM decodelabsp3
WHERE PaymentMethod = 'Credit Card';

##Highest-priced orders first.
SELECT *
FROM decodelabsp3
ORDER BY TotalPrice DESC;

##Lowest-priced orders.
SELECT *
FROM decodelabsp3
ORDER BY TotalPrice ASC;

## Total number of orders.
SELECT COUNT(*) AS TotalOrders
FROM decodelabsp3;

## Number of unique customers.
SELECT COUNT(DISTINCT CustomerID) AS TotalCustomers
FROM decodelabsp3;

## Total revenue.
SELECT SUM(TotalPrice) AS TotalRevenue
FROM decodelabsp3;

##Total quantity sold.
SELECT SUM(Quantity) AS TotalQuantitySold
FROM decodelabsp3;

##Average order value.
SELECT AVG(TotalPrice) AS AverageOrderValue
FROM decodelabsp3;

##Total sales for each product.
SELECT Product,
       SUM(TotalPrice) AS TotalSales
FROM decodelabsp3
GROUP BY Product;

##Products with the highest sales.
SELECT Product,
       SUM(TotalPrice) AS TotalSales
FROM decodelabsp3
GROUP BY Product
ORDER BY TotalSales DESC;

##Revenue by payment method.
SELECT PaymentMethod,
       SUM(TotalPrice) AS Revenue
FROM decodelabsp3
GROUP BY PaymentMethod
ORDER BY Revenue DESC;
