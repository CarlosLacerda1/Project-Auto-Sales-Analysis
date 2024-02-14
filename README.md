# Auto Sales Analysis Project

## Intro
This project comprehends a data analysis of auto store sales utilizing different tools like Python, Power BI and SQL. The goal of this project is to provide an analysis which could be useful for business decision taking. The data was manipulated in sql and visualized in a power bi dashboard. This data comprises the sales of an auto store, from 2018 to 2020, gathering information as customer´s, product´s and order´s. Regading ETL, the data was extracted from Kaggle and stored at SQL Server. 

## Data Source 
https://www.kaggle.com/datasets/ddosad/auto-sales-data

## Analysis

### Power Bi 

Data can be visualized in the pbi dashboard, where it is described in terms of distinct factors as customers, countries etc. Different graph types are presented, as pie and bar charts, sales trends etc. DAX calculated KPI indicators, as average and total sales, are positioned upperly. Near them, there is a filter where data can be segmented according to selected country and order date. Two main measures were considered for the analysis, sales and orders, distributed in two dashboard pages. The dataset consists of 3 correlated tables, which comprehends the orders, customers and products lists. Each order contains a list of requests, each request including a single different product demanded. 


Tables:
- Orders: Orders list
- Customers: Customers list
- Products: Products list

### Data Model

Is presented below a screenshot of the data model, after being loaded into Power BI and transformed in Power Query. The data shows that Orders is connected in a logical relationship to both Customers and Products. It contains both categorical and numeric data.


![data model](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/b77663d7-8069-4ace-a5ff-4f70a907f1c3)



### Visualization
 The first one display an analysis centered at sales metric while the second includes also orders. It is shown a discrimination of theses metrics according to different components Deal Size, Product Line etc, and several graphs and charts are presented. 

![print1](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/43726867-fe8f-4c4f-b488-090cfd5f9318)

 ![print2](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/834d3fdc-5d02-49a3-a674-886a120f3b5a)

### SQL 

Using tsql language at SQL Server, an analysis was made through a number of written
queries. These queries are able to return selected data , join tables, create indexes, views and so on. Data can be filtered via a wide set of sql commands, as WHERE, HAVING, LIKE, CASE, IN and using subqueries. TSQL (Transact-SQL) the procedural language utilized in SQL Server, also possess a broad set of unique features, as local variables, procedural programming and so on.  
### Summary

Observations are presented below:

- The total amount capitalized in sales was $691M in 2 years, with a total of 298 orders containing 2.7K requests. This corresponds to an average of 6.5 requests per order and $8.9K price per request.
- The average of days since last order is 1.8K .
- The percentage of cancelled orders is 2.1%.
- The largest market in terms of revenue was the USA, contributing with $237M in sales and 34% in the share of total selling, where it´s principal city in earnings is San Rafael, with $45M in revenue and 19% in share.
- The medium size was the most substancial dealsize in terms of sales, totaling $432M in returns, 62% in selling share and 49% of total requests.
- The most requested product line was the classic model, representing $432M in sales, 62% in selling percentage and 34% of all requests.
- November is the top month of the year in terms of sales and requests, totailing $77M in takings in the year of 2018 and 21% in share of the year. 
- The first week of the month is usually the one with most vending, counting 30% in revenue.
- The top client is Euro Shopping Channel, summing $62M in terms of gain, summing 259 requests.
- The leading product in selling has the code S18_3232, which is a classic model, generating $21M in income.
  


## Conclusion

The analysis described could be useful for posterior business decision taking, as for developing potencial marketing campaigns. 


                                                                                                                   
