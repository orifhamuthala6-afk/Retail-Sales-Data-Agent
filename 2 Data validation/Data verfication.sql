-- Databricks notebook source
SELECT *
FROM emp.dataagent.`1781801371417_retail_sales_dataset_1`;

-- Verifying the total revenue
SELECT SUM(`Total Amount`) AS total_revenue
FROM emp.dataagent.`1781801371417_retail_sales_dataset_1`;

-- Verifying the total revenue for each product category
SELECT
`Product Category`,
SUM(`Total Amount`) AS total_revenue
FROM emp.dataagent.`1781801371417_retail_sales_dataset_1`
GROUP BY `Product Category`
ORDER BY total_revenue DESC;

-- How many customers do we have
SELECT COUNT(DISTINCT `Customer ID`) AS total_customers
FROM emp.dataagent.`1781801371417_retail_sales_dataset_1`;

