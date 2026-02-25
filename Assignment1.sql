use assignment;

#Create Products Table
CREATE TABLE Products (


 ProductID INT PRIMARY KEY,
 ProductName VARCHAR(50),
 Category VARCHAR(30),
 Price DECIMAL(10,2),
 Stock INT,
 Supplier VARCHAR(30) 
 
 
 );
 
 
 INSERT INTO Products (ProductID, ProductName, Category, Price, Stock, Supplier) VALUES
(201, 'Laptop', 'Electronics', 55000, 25, 'HP'),
(202, 'Smartphone', 'Electronics', 25000, 100, 'Samsung'),
(203, 'Tablet', 'Electronics', 30000, 50, 'Apple'),
(204, 'Headphones', 'Accessories', 2000, 200, 'Sony'),
(205, 'Keyboard', 'Accessories', 1500, 150, 'Logitech'),
(206, 'Refrigerator', 'Appliances', 40000, 30, 'LG'),
(207, 'Washing Machine', 'Appliances', 35000, 20, 'Whirlpool'),
(208, 'Microwave', 'Appliances', 12000, 40, 'IFB'),
(209, 'Chair', 'Furniture', 5000, 80, 'IKEA'),
(210, 'Sofa', 'Furniture', 25000, 10, 'Godrej'),
(211, 'Monitor', 'Electronics', 18000, 60, 'Dell'),
(212, 'Mouse', 'Accessories', 800, 300, 'Logitech'),
(213, 'Printer', 'Electronics', 15000, 35, 'Canon'),
(214, 'Air Conditioner', 'Appliances', 45000, 15, 'Voltas'),
(215, 'Water Purifier', 'Appliances', 12000, 25, 'Kent'),
(216, 'Dining Table', 'Furniture', 30000, 5, 'IKEA'),
(217, 'Bookshelf', 'Furniture', 12000, 12, 'Godrej'),
(218, 'Power Bank', 'Electronics', 2000, 180, 'Mi'),
(219, 'Camera', 'Electronics', 40000, 22, 'Nikon'),
(220, 'Smartwatch', 'Electronics', 12000, 90, 'Apple'),
(221, 'Blender', 'Appliances', 5000, 45, 'Philips'),
(222, 'Toaster', 'Appliances', 2500, 55, 'Bajaj'),
(223, 'Bed', 'Furniture', 45000, 8, 'Durian'),
(224, 'Wardrobe', 'Furniture', 60000, 6, 'Godrej'),
(225, 'Earbuds', 'Accessories', 3500, 250, 'Boat'),
(226, 'Speakers', 'Accessories', 7000, 120, 'JBL'),
(227, 'Router', 'Electronics', 4000, 140, 'TP-Link'),
(228, 'Vacuum Cleaner', 'Appliances', 15000, 28, 'Eureka'),
(229, 'Mixer Grinder', 'Appliances', 7000, 50, 'Prestige'),
(230, 'Study Table', 'Furniture', 15000, 18, 'IKEA');


select * from products;


# Part A – WHERE Clause (10 Questions)

#1. Display all products in the Electronics category

select * from products where Category ="Electronics";

#2. Find products whose price is greater than 30,000
select * from products where Price>30000;


#3. Show products whose stock is less than 50.
select * from products where stock<50;

#4. Display all products not in the Accessories category.
select * from products where category!="Accessories";

#5. Find products supplied by LG or Whirlpool.

select * from products where supplier in("LG", "Whirlpool");

#6. Show products whose price is between 10,000 and 40,000.
select * from products where price between  10000 and 40000;

#7. List products where stock is exactly 100.
select * from products where stock=100;

# remove null
select * from products where productid is null;
delete  from products where productid is null;

#8. Find all products except those in the Furniture category.
select * from products where category<>'Furniture';

#9. Display products with price less than 5,000.
select * from products where price<5000;


#10. Show all products supplied by Sony

select * from products where supplier='Sony';


#Part B – ORDER BY Clause (10 Questions)

#1. Display all products sorted by Price in ascending order.
select * from products 
order by price asc;


#2. Show all products sorted by Price in descending order.
select * from products 
order by price desc;

#3. Display all products sorted by Stock in ascending order.
select * from products order by stock asc;

#4. List all products sorted by Category alphabetically.
select * from products order by category asc;

#5. Display all products sorted by Supplier alphabetically.
select * from products order by supplier asc;

#6. Show products in the Appliances category sorted by Price (highest first).

select * from products where  category= 'Appliances'
order by price desc;


#7. Display all products sorted by Category and then by Price.
select * from products 
order by category asc,
price desc;


#8. List Electronics products sorted by Stock in descending order.
select * from products  where category= 'Electronics'
order by stock desc;


#9. Display products sorted by ProductName (A → Z).
select * from products 
order by ProductName asc;

#10. Show Furniture products sorted by Price (lowest first)
select * from products  where category= 'Furniture' 
order by price asc;

#Part C – Aggregate Functions (10 Questions)

#1. Find the total stock of all products.

select sum(stock) as total_stocks from products;

#2. Find the average price of all products.
select avg(price) as avg_price from products;

#3. Show the maximum price among all products.
select  max(price) from products;

#4. Show the minimum stock among all products.
select  min(stock) from products;

#5. Find the average price of Electronics products.

select  avg(price) from products where category= "Electronics";

#6. Count the number of products in the Furniture category.
select  count(*) from products where category= "Furniture";

#7. Show the highest-priced product in the Appliances category.
select  max(price) from products where category= "Appliances";

#8. Display the lowest price in Accessories category.
select  min(price) from products where category= "Accessories";

#9. Find the sum of stock for Electronics products.
select  sum(stock) from products where category= "Electronics";

#10. Count the number of products whose price is above 20,000.

select  count(*) from products where price>20000;


#Part D – LIKE Operator (10 Questions)
#1. Find products whose names start with ‘S’.

select * from products where productname like "s%";

#2. Find products whose names start with ‘M’.

select * from products where productname like "M%";

#3. Find products whose names end with ‘e’.
select * from products where productname like "%e";

#4. Find products whose names contain ‘phone’.
select * from products where productname like "%phone%";

#5. Show products where Supplier name starts with ‘L’.
select * from products where supplier like "L%";

#6. Show products where Supplier name ends with ‘a’.
select * from products where supplier like "%a";

#7. Display products where Category starts with ‘E’.
select * from products where category like "E%";

#8. Show products where Category ends with ‘s’.
select * from products where category like "%S";

#9. Show products where Category name has 10 characters (use _).
select * from products where category like "__________";

#10. Display products whose ProductName has exactly 6 letters.
select * from products where  ProductName like "______";

