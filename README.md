# Auto Sales Analysis Project

## Intro
This project comprehends a data analysis of auto store sales utilizing different tools like Python, Power BI and SQL. The goal of this project is to provide an analysis which could be useful for business decision taking. The data was manipulated in sql and visualized in a power bi dashboard. This data comprises the sales of an auto store, from 2018 to 2020, gathering information as customer´s, product´s and order´s. Regading ETL, the data was extracted from Kaggle and stored at SQL Server. 

## Data Source 
https://www.kaggle.com/datasets/ddosad/auto-sales-data

## Analysis

### Power Bi 

Data can be visualized in the pbi dashboard, where it is described in terms of distinct factors as customers, countries etc. Different graph types are presented, as pie and bar charts, sales trends etc. DAX calculated KPI indicators, as average and total sales, are positioned upperly. Near them, there is a filter where data can be segmented according to selected country and order date. Two main measures were considered for the analysis, sales and orders, distributed in two separate dashboard pages. The dataset consists of 3 correlated tables, which comprehends the orders, customers and products lists. 


Tables:
- Orders: Orders list
- Customers: Customers list
- Products: Products list

### Data Model

Is presented below a screenshot of the data model, after being loaded into Power BI and transformed in Power Query. The data shows that Orders is connected in a logical relationship to both Customers and Products. It contains both categorical and numeric data.


![data model](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/b77663d7-8069-4ace-a5ff-4f70a907f1c3)



### Visualization
 The first one display an analysis centered at sales metric while the second at orders. It is shown a discrimination of theses metrics according to different components Deal Size, Product Line etc, and several graphs and charts are presented. 

![print1](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/43726867-fe8f-4c4f-b488-090cfd5f9318)

 ![print2](https://github.com/CarlosLacerda1/Project-Auto-Sales-Analysis/assets/122105130/834d3fdc-5d02-49a3-a674-886a120f3b5a)

### SQL 

Using tsql language at SQL Server, an analysis was made through a number of written
queries. These queries are able to return selected data , join tables, create indexes, views and so on. Data can be filtered via a wide set of sql commands, as WHERE, HAVING, LIKE, CASE, IN and using subqueries. TSQL (Transact-SQL) the procedural language utilized in SQL Server, also possess a broad set of unique features, as local variables, procedural programming and so on.  
### Summary

(python?)

Observations are presented below:

In terms of sales:

- Top countries were USA, Spain and France 
- Top product lines were classic and vintage cars 
- Top dealsizes were medium and large
- Top months were October and November 
- Top days would be within the first week of month

(In this dashboard, we can see company has generated total revenue in 4 years ₹ 985M, total profit margin ₹24.7M, Profit margin% 2.5%, Sales Qty ₹2M. in 2020 company has generated total revenue of ₹ 142M by selling a total of 350K and earned a profit of ₹ 2.1M.
In 4 years Delhi NCR is our largest market in terms of revenue with ₹ 520M and total contribution of 52.8% with total revenue but if you look at the profit margin Delhi NCR is generating only 2.3% profit margin.
If we check the profit margin then here In 2020 Bhubaneshwar comes into the picture which is generating the highest profit margin of 10.48%. Similarly, if we can check the Profit Contribution % by Market then here Mumbai is the largest player with 23.89% of total contribution in total profit.)

(1️⃣ In February 2014, we noticed a drop in sales. A potential solution would be to run promotions or advertising campaigns from January onwards, to pitch sales and ensure a stronger February.

2️⃣ We discovered that customers tend to spend more on the 5th of the month. This suggests an opportunity to target our sales and marketing efforts on that specific day, leveraging customer purchasing behavior.

3️⃣ Flip-flop sales have historically been lower compared to other products. An effective strategy can be to create combo promotions, such as offering discounts when customers purchase shirts, our best-selling item. We might also consider rewarding customers who buy shirts with a voucher to save on future flip-flop purchases in-store.

4️⃣ The average price of flip-flops in our store is R$25.37. Taking into account that the average ticket for customers who only buy shirts is R$119.22, we can explore the opportunity to create specific combo promotions for this group of customers.)
Summary:

- Avg of sales is 256
- Avg of days since last order is  1.8 thousand
- Avg of items per order is 6.5
- Avg of price per item is 8.9 thousand 
- Percentages of canceled orders is 2%

In terms of orders: 

-
-
-
-
-

If we were to limit ourselves to USA, the results would be, by sales:

- Top cities are New York and San Rafael
- Top client is Mini Gifts Distributor by far
- Top product lines are classic, 36%, and vintage, 20%, cars, 56% in total
- Top deal sizes are Medium, 65%, and Small, 25%, 90% in total
- Average sales and price each are 255 and 9 thousand respectivally
- Top months are november and august

what to do next? in this way what we could do would be to see others, recommendations

## Conclusion

The analysis described could be useful for posterior business decision taking, as for developing potencial marketing campaigns. It can be observed that, (X observation). 


                                                                                                                   
