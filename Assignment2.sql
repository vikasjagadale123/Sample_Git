use assignment ;

#Create Products Table

select * from products;

#Part A – GROUP BY Clause
#1 Display the total stock available for each category.

select Category, sum(Stock) from products group by Category;



#2 Find the average price of products for each category.
select Category, avg(price) from products group by Category;


#3 Show the maximum price of products in each supplier group.
select supplier, max(price) from products group by supplier;

#4 Display the minimum stock available from each supplier.
select supplier, min(stock) from products group by supplier;

#5 Count the number of products in each category.
select category, COUNT(productId) from products group by category;

#6 Show the sum of stock supplied by each supplier.
select supplier, sum(stock) from products group by supplier;


#7 Display the highest-priced product in each category.
select category, max(price) from products group by category;


#8 Find the average stock of products grouped by category.
select category, avg(stock) from products group by category;

#9 Count how many products are there for each supplier.
select supplier, count(productname) from products group by supplier;



#10 Show the total price (sum) of products for each category
select category, sum(price) from products group by category;



#Part B – HAVING Clause
select * from products;
#1 Display categories having more than 3 products.
	select category, count(*) as product_count from products 
    group by category
    having product_count>3;

#2 Show suppliers where the average product price is greater than 20,000.
# aggregate filtereed with having
select supplier ,avg(price) from products 
group by supplier
having avg(price)>20000; 

#3 Find categories whose total stock is more than 200.
select category ,sum(stock) from products 
group by category
having SUM(STOCK)>200; 

#4 Display suppliers supplying more than 2 products.

SELECT supplier ,count(*) from products 
group by supplier 
having count(*)>2;

#5 Show categories where the highest product price exceeds 40,000.
select category, max(price) from products 
group by category
having max(price)>40000;

#6 Find suppliers where the total stock is less than 100.
select supplier,sum(stock) from products
group by supplier
 having sum(stock)<100;
 
#7 Display categories having an average stock greater than 50.
select category,avg(stock) from products
group by category
having avg(stock )>50;

	
#8 Show suppliers who supply at least one product priced above 30,000.
select supplier ,count(*) from products
where price >30000
group by supplier
having count(*)>=1 ;

#9 Find categories where the total value (sum of price) exceeds 1,00,000.
select category ,sum(price) from products
group by category
having sum(price) >100000;

#10 Display suppliers where the number of products supplied is exactly 3.
select supplier ,count(*) from products 
group by supplier
having count(*)=3;