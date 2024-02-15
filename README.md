# Auto Sales Analysis Project

## Intro
This project comprehends a data analysis of auto store sales utilizing different tools like Python, Power BI and SQL. The goal of this project is to provide an analysis which could be useful for business decision taking. The data was manipulated in sql and visualized in a power bi dashboard. This data comprises the sales of an auto store, from 2018 to 2020, gathering information as customer´s, product´s and order´s. Regading ETL, the data was extracted from Kaggle and stored at SQL Server. 

## Data Source 
https://www.kaggle.com/datasets/ddosad/auto-sales-data

## Analysis

### Power Bi 

Data can be visualized in the Power BI dashboard, where it is described in terms of distinct factors such as customers and countries. Different graph types are presented, such as pie and bar charts, as well as sales trends. DAX calculated KPI indicators, such as average and total sales, are positioned above. Next to them, there is a filter where data can be segmented according to selected country and order date. Two main measures were considered for the analysis: sales and orders, distributed across two dashboard pages. The dataset consists of three correlated tables, which encompass the orders, customers, and products lists. Each order contains a list of requests, with each request including a different single product demanded.


Tables:
- Orders: Orders list
- Customers: Customers list
- Products: Products list

### Data Model

Below is a screenshot of the data model after being loaded into Power BI and transformed in Power Query. The data indicates that Orders are connected in a logical relationship to both Customers and Products. It contains both categorical and numeric data.


![data model](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/b77663d7-8069-4ace-a5ff-4f70a907f1c3)



### Visualization
 The first one displays an analysis centered on the sales metric, while the second one also includes orders. It shows a breakdown of these metrics according to different components such as Deal Size, Product Line, etc., and presents several graphs and charts.

![p1p1](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/0843eaa4-e612-406d-add4-dba1f3cbb2d5)

![p2p2](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/aeedf796-889c-458a-9cd5-3a49c80ea7fc)


### SQL 

Using the T-SQL language in SQL Server, an analysis was conducted through a series of written queries. These queries are capable of returning selected data, joining tables, creating indexes, views, and so on. Data can be filtered using a wide range of SQL commands, such as WHERE, HAVING, LIKE, CASE, IN, and by employing subqueries. T-SQL (Transact-SQL), the procedural language utilized in SQL Server, also possesses a broad set of unique features, including local variables, procedural programming, and so on.  
### Summary

Observations are presented below:

- The total amount capitalized in sales was $691M over 2 years, with a total of 298 orders containing 2.7K requests. This corresponds to an average of 6.5 requests per order and $8.9K price per request.
- The average number of days since the last order is 1.8K.
- The percentage of cancelled orders is 2.1%.
- The largest market in terms of revenue was the USA, contributing $237M in sales and comprising 34% of the total share of sales. Its principal city in earnings is San Rafael, with $45M in revenue and a 19% share.
- The medium size was the most substantial deal size in terms of sales, totaling $432M in returns, comprising 62% of the selling share and accounting for 49% of total requests.
- The most requested product line was the classic model, representing $432M in sales, comprising 62% of the selling percentage, and accounting for 34% of all requests.
November is the top month of the year in terms of sales and requests, totaling $77M in revenue for the year 2018 and comprising 21% of the share for the year.
- The first week of the month is usually the one with the most vending, accounting for 30% of revenue.
- The top client is Euro Shopping Channel, with a total of $62M in gain from 259 requests.
- The leading product in sales has the code S18_3232, which is a classic model, generating $21M in income.


## Conclusion

The described analysis could be useful for subsequent business decision-making, such as developing potential marketing campaigns and strategies.


                                                                                                                   
