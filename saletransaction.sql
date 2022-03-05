# to know sales transaction in  the year 2020
SELECT  
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020;
    # to know total sales or revenue in 2020
    SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND market_code = 'mark001';
        # to know distinct product
        SELECT DISTINCT
    product_code
FROM
    sales.transactions
WHERE
    market_code = 'mark001';
    # to know transaction only from surat in year 2020
    SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND market_code = 'mark012'
        order by product_code;
        # to know which transaction that have usd currency
        SELECT 
    *
FROM
    sales.transactions
WHERE
    currency = 'USD';
#s0lution to instruction given by the manager
#show all customer record
SELECT 
    *
FROM
    sales.customers;
#show total number of customer
SELECT 
    COUNT(*)
FROM
    sales.customers;
#show the transactions from chennai market
SELECT 
    *
FROM
    sales.transactions
WHERE
    market_code = 'mark001';
#show distinct product code that were sold in chennai
SELECT DISTINCT
    product_code
FROM
    sales.transactions
WHERE
    market_code = 'mark001';
# select transactions where currency is US dollars
SELECT 
    *
FROM
    sales.transactions
WHERE
    currency = 'USD';
# show transaction in 2020 join by date table
SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020;
#show total revenue in year 2020
SELECT 
    SUM(sales.transactions.sales_amount) as revenue
FROM
    sales.transactions 
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020;
# show total revenue in the year 2020, january month
SELECT 
    SUM(sales.transactions.sales_amount) AS revenue
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'january'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD');
    
    

    
    
    
    
    

