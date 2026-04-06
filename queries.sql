{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- Total Sales\
SELECT SUM(Sales) AS total_sales FROM orders;\
\
-- Sales by Region\
SELECT Region, SUM(Sales) AS revenue\
FROM orders\
GROUP BY Region\
ORDER BY revenue DESC;\
\
-- Top 10 Customers\
SELECT Customer_Name, SUM(Sales) AS total\
FROM orders\
GROUP BY Customer_Name\
ORDER BY total DESC\
LIMIT 10;\
\
-- Monthly Sales Trend\
SELECT DATE_TRUNC('month', Order_Date) AS month, SUM(Sales)\
FROM orders\
GROUP BY month\
ORDER BY month;}