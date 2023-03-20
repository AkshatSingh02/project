# show all transactions where quantity of sales is less than '100' along with product code '001'

select * from transactions where sales_qty<100 and product_code= "prod001";

# show all the market zone starting with c letter

SELECT * FROM sales.markets where zone like"c%";

#  show top 3 sales amount

SELECT sales_amount FROM transactions
order by sales_amount
desc limit 3;

# show top 3 sales amount with currency column

SELECT sales_amount,currency FROM transactions
order by sales_amount
desc limit 3;

# how many diffrent customer type in customer table?
 
select distinct(customer_type) from customers;

# how many numbers of record in coustomer table

select count(*) from customers;

# how many numbers of record in transactions table

select count(*) from transactions;

# show the transactions only for chennai

select*from transactions where market_code="mark001";

# how many transaction were performed in chennai

select count(*) from transactions where market_code="mark001";

#  show transaction in 2020 joined by date table

select * from transactions
inner join date on transactions.order_date=date.date
where date.year=2020;

# total sales in year 2020

select sum(sales_amount) as total_sales_2020 from transactions
inner join date on transactions.order_date=date.date
where date.year=2020;

# what is the maximum sale in delhincr?
 
select max(sales_amount) from transactions
where market_code="mark004";

# show list of different product sold by delhincr

select distinct(product_code) from transactions where market_code="mark004";
