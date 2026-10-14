   USE goit_rdb_hw_03;
   
-- task # 1
SELECT id,
       `date`,
       YEAR(`date`)  AS order_year,
       MONTH(`date`) AS order_month,
       DAY(`date`)   AS order_day
FROM orders;

-- task # 2
SELECT id,
       `date`,
       DATE_ADD(`date`, INTERVAL 1 DAY) AS date_plus_one_day
FROM orders;

-- task # 3
SELECT id,
       `date`,
       UNIX_TIMESTAMP(`date`) AS date_timestamp
FROM orders;

-- task # 4
SELECT COUNT(*) AS orders_count
FROM orders
WHERE `date` BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- task # 5
SELECT id,
       `date`,
       JSON_OBJECT('id', id, 'date', `date`) AS json_data
FROM orders;