-- E-Commerce Sales Analytics
-- SQL Analysis Project
-- Dataset: 1,500 E-Commerce Sales Records
-- Tool: MySQL
USE ecommerce_analysis;
SELECT COUNT(*) AS total_rows FROM project_1_ecommerce_sales_sql_import;
SELECT * FROM project_1_ecommerce_sales_sql_import LIMIT 10;
select sum(Sales) AS total_sales from project_1_ecommerce_sales_sql_import;
select sum(Cost) as total_cost from project_1_ecommerce_sales_sql_import;
select sum(Sales) - sum(Cost) as total_profit from project_1_ecommerce_sales_sql_import;
select sum(Quantity) as total_quantity, count(*) as total_orders from project_1_ecommerce_sales_sql_import;
select category, sum(sales) as total_sales from project_1_ecommerce_sales_sql_import group by category order by total_sales desc;
SELECT Region, SUM(Sales) AS total_sales FROM project_1_ecommerce_sales_sql_import GROUP BY Region ORDER BY total_sales DESC;
SELECT Product, SUM(Sales) AS total_sales FROM project_1_ecommerce_sales_sql_import GROUP BY Product ORDER BY total_sales DESC LIMIT 10;
SELECT Category, SUM(Sales) - SUM(Cost) AS total_profit FROM project_1_ecommerce_sales_sql_import GROUP BY Category ORDER BY total_profit DESC;
SELECT Region, SUM(Sales) - SUM(Cost) AS total_profit FROM project_1_ecommerce_sales_sql_import GROUP BY Region ORDER BY total_profit DESC;
SELECT Customer_ID, Customer_Name, SUM(Sales) AS total_sales FROM project_1_ecommerce_sales_sql_import GROUP BY Customer_ID, Customer_Name ORDER BY total_sales DESC LIMIT 10;
SELECT Customer_ID, Customer_Name, COUNT(*) AS total_orders FROM project_1_ecommerce_sales_sql_import GROUP BY Customer_ID, Customer_Name ORDER BY total_orders DESC LIMIT 10;
SELECT Customer_ID, Customer_Name, SUM(Sales) - SUM(Cost) AS total_profit FROM project_1_ecommerce_sales_sql_import GROUP BY Customer_ID, Customer_Name ORDER BY total_profit DESC LIMIT 10;
SELECT Region, COUNT(DISTINCT Customer_ID) AS unique_customers, SUM(Sales) AS total_sales FROM project_1_ecommerce_sales_sql_import GROUP BY Region ORDER BY total_sales DESC;
SELECT Region, SUM(Sales) / COUNT(*) AS average_order_value FROM project_1_ecommerce_sales_sql_import GROUP BY Region ORDER BY average_order_value DESC;
SELECT Category, SUM(Sales) / COUNT(*) AS average_order_value FROM project_1_ecommerce_sales_sql_import GROUP BY Category ORDER BY average_order_value DESC;
SELECT * FROM project_1_ecommerce_sales_sql_import WHERE Sales > 10000 ORDER BY Sales DESC LIMIT 10;
SELECT MONTH(Order_Date) AS order_month, SUM(Sales) AS total_sales FROM project_1_ecommerce_sales_sql_import GROUP BY MONTH(Order_Date) ORDER BY order_month;
SELECT MONTH(Order_Date) AS order_month, SUM(Sales) AS total_sales FROM project_1_ecommerce_sales_sql_import GROUP BY MONTH(Order_Date) ORDER BY total_sales DESC LIMIT 1;