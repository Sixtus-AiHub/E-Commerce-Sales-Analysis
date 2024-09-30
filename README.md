# E-Commerce Sales Analysis

## Table of Content
- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [Tools Used](#tools-used)
- [Data Cleaning with Excel](#data-cleaning-with-excel)
- [SQL Query Analysis](#sql-query-analysis)
- [Powerbi Visualization](#powerbi-visualization)
- [Results and Findings](#results-and-findings)
- [Recommendations](#recommendations)
  
### Project Overview
This data analysis project aims to provide insights into the sales performance of an e-commerce whole sale superstore over the past years, specifically focused on order transactions, customer segmentation & category, sales, and shipping data. The dataset provides a rich source of information to analyse various aspects of business performance, including sales trends, profitability, customer and country behaviour, and operational efficiency. By analysing various aspects of the sales data, we seek to identify trends, make data-driven recommendations, and gain a deeper understanding of the superstore performance

### Data Sources
Sales Data: The primary dataset used for this analysis is the “superstore.csv” file from Kaggle

### Tools Used
- Excel: Data cleaning and preparation
   - [Download here](https://microsoft.com)
- SQL: Querying and answering analytical questions
- Power BI: Creating interactive visualizations for insights.

### Data Cleaning with Excel
In the initial data preparation phase, we performed the following task:
1. Data loading and inspection.
2. Handling missing values.
3. Data Cleaning and formatting

### SQL Query Analysis
EDA involved exploring the sales data to answer key questions, such as;

- **Question**: Which Category made the Total Product Sales?
- **SQL Query**:
  ```sql
  SELECT Category, SUM(Sales) as Total_Sales
  FROM ProjectD
  GROUP BY Category;
  
- **Question**: What are the Top selling Products by Quantity?
- **SQL Query**:
  ```sql
  SELECT Product_Name, SUM(Quantity) AS Total_Quantity, SUM(Sales) AS Total_Sales
  FROM ProjectD
  GROUP BY Product_Name
  ORDER BY Total_Quantity DESC;
  
- **Question**: Who are the best performing Segment by Product Category?
- **SQL Query**:
  ```sql
  SELECT Segment, Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
  FROM ProjectD
  GROUP BY Segment, Category
  ORDER BY Total_Sales DESC, Total_Profit DESC;

- **Question**:Which Sub-Category made the Total Sales?
- **SQL Query**:
  ```sql
  SELECT Sub_Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
  FROM ProjectD
  GROUP BY Sub_Category
  ORDER BY Total_Sales DESC, Total_Profit DESC;

- **Question**:Which Category made the Total Sales across Regions?
- **SQL Query**:
  ```sql
  SELECT Country, Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
  FROM ProjectD
  GROUP BY Country, Category
  ORDER BY Total_Sales DESC, Total_Profit DESC;

- **Question**:What is the total shipping cost for each shipping mode?
- **SQL Query**:
  ```sql
  SELECT Ship_Mode, SUM(Shipping_Cost) AS Total_Shipping_Cost
  FROM ProjectD
  GROUP BY Ship_Mode
  ORDER BY Total_Shipping_Cost DESC;

- **Question**:Which Market Region Made the total Sales?
- **SQL Query**:
  ```sql
  SELECT Market, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
  FROM ProjectD
  GROUP BY Market
  ORDER BY Total_Sales DESC;

- **Question**:How does shipping cost affect profit?
- **SQL Query**:
  ```sql
  SELECT Ship_Mode, avg(Shipping_Cost) AS Total_Shipping_Cost, SUM(Profit) AS Total_Profit
  FROM ProjectD
  GROUP BY Ship_Mode
  ORDER BY  Total_Profit DESC;

- **Question**:What is the year-over-year growth in sales and profit?
- **SQL Query**:
  ```sql
  SELECT Year, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
  FROM ProjectD
  GROUP BY Year
  ORDER BY Year ASC;

### Powerbi Visualization
The powerbi Visualization gives a visual summary of the dataset. The visuals comprises of four(4) dashboard
which are:
- Report Overview: Gives a panoramic view of the dataset under two groups; Category and Segment

![image1](https://github.com/user-attachments/assets/faac19ba-5958-4a03-92dd-b13558a74172)

- Sales Analysis: summarises the Total Sales across different Categories
  ![image2](https://github.com/user-attachments/assets/10fe193c-9726-4325-bc8f-9b45f32f09a0)

- Product Analysis: summarises Product cagegory and segmentation
  ![image3](https://github.com/user-attachments/assets/6089adf2-8f13-4ad0-9a2f-1bc4de5008b4)

- Geographic Analysis: Summarises Sales and its Shipping mode across different Regions
  ![image4](https://github.com/user-attachments/assets/6cd05d18-5efb-48ad-8b51-5d935ef7f8a9)

### Results and Findings:
Based on the analysis, we recommend the following actions
- the superstore sales have steadily increased over the past years.
- Technology Category and its Customers Segment generated the Total Sales
- Stables of office supplies category is the most solded product
- United State made the most Sales across country
- Shipping mode preference is the standard mode

### Recommendations:
- Focus on the Most Profitable Customer Segment:
  - The Corporate segment has shown the highest profitability. Prioritize marketing campaigns and targeted offers to this segment
- Expand the Product Categories with High Sales:
  - The Technology category is the top performer in terms of total sales. Consider expanding the product line
  

 





  



