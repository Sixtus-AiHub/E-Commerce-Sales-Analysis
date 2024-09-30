use Project
go
--Top Customers by Sales and Profit
--SELECT Customer_ID, Customer_Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Customer_ID, Customer_Name
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--Customer Segmentation Performance
--SELECT Segment, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Segment
--ORDER BY Total_Sales DESC;

--Customer Acquisition by Geography
--SELECT Country, State, City, COUNT(DISTINCT Customer_Name) AS Unique_Customers
--FROM ProjectD
--GROUP BY Country, State, City
--ORDER BY Unique_Customers DESC

--Top Selling Products by Quantity
--SELECT Product_Name, SUM(Quantity) AS Total_Quantity, SUM(Sales) AS Total_Sales
--FROM ProjectD
--GROUP BY Product_Name
--ORDER BY Total_Quantity DESC

--Profitability by Product
--SELECT Product_Name, Sub_Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Product_Name, Sub_Category
--ORDER BY Total_Profit DESC;

--Sales by Country and Market
--SELECT Country, Market, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Country, Market
--ORDER BY Total_Sales DESC;

--Regional Performance by State and City
--SELECT State, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY State
--ORDER BY Total_Sales DESC

--Market2 Comparison (Sales by Market2)
--SELECT Market2, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Market2
--ORDER BY Total_Sales DESC;

--SELECT Market, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Market
--ORDER BY Total_Sales DESC;

--Profit vs Sales Correlation by Category
--SELECT Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Category
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--cat with total profit
--SELECT Category, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Category
--ORDER BY Total_Profit DESC;

--Best Performing Segment by Product Category
--SELECT Segment, Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Segment, Category
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--Sub-Category Performance by Sales and Profit
--SELECT Sub_Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Sub_Category
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--Category Sales Across Regions
--SELECT Country, Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Country, Category
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--Global Sales and Profit by Country
--SELECT Country, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Country
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--Product Pricing and Profitability
--SELECT Product_Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit, SUM(Quantity) AS Total_Quantity
--FROM ProjectD
--GROUP BY Product_Name
--ORDER BY Total_Profit DESC, Total_Quantity DESC;

--Profitability by State or City
--SELECT State, City, SUM(Profit) AS Total_Profit, SUM(Sales) AS Total_Sales
--FROM ProjectD
--GROUP BY State, City
--ORDER BY Total_Profit DESC;

--Sales Growth by Market and Market2
--SELECT Market, Market2, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Market, Market2
--ORDER BY Total_Sales DESC, Total_Profit DESC;

--Overall Sales Trends by Category and Product
--SELECT Category, Product_Name, YEAR(Order_Date) AS Year, SUM(Sales) AS Total_Sales
--FROM ProjectD
--GROUP BY Category, Product_Name, YEAR(Order_Date)
--ORDER BY Year, Total_Sales DESC;

--Monthly Sales Trends
--SELECT 
--    Year, 
--    Month, 
--    SUM(Monthly_Sales) AS Total_Monthly_Sales
--FROM (
--    SELECT 
--        YEAR(Order_Date) AS Year, 
--        MONTH(Order_Date) AS Month, 
--        Sales AS Monthly_Sales
--    FROM ProjectD
--) AS subquery
--GROUP BY Year, Month
--ORDER BY Year, Month;

--Shipping Cost Impact on Profit
--Does the shipping cost impact profit margins? Analyze how shipping cost correlates with profit.
--SELECT Ship_Mode, SUM(Shipping_Cost) AS Total_Shipping_Cost, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Ship_Mode
--ORDER BY Total_Shipping_Cost DESC, Total_Profit DESC;

--Year-over-Year Sales Growth
--What is the year-over-year growth in sales and profit?
--SELECT Year, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
--FROM ProjectD
--GROUP BY Year
--ORDER BY Year ASC;

--Shipping Cost by Shipping Mode
--What is the total shipping cost for each shipping mode?
--SELECT Ship_Mode, SUM(Shipping_Cost) AS Total_Shipping_Cost
--FROM ProjectD
--GROUP BY Ship_Mode
--ORDER BY Total_Shipping_Cost DESC;

--Sales by Shipping Mode and Year
--What is the breakdown of sales by shipping mode for each year?
--SELECT Year, Ship_Mode, SUM(Sales) AS Total_Sales
--FROM ProjectD
--GROUP BY Year, Ship_Mode
--ORDER BY Year ASC, Total_Sales DESC;

--Shipping Costs by Region and Shipping Mode
--What are the total shipping costs across different regions, broken down by shipping mode?
--SELECT Region, Ship_Mode, SUM(Shipping_Cost) AS Total_Shipping_Cost
--FROM ProjectD
--GROUP BY Region, Ship_Mode
--ORDER BY Total_Shipping_Cost DESC;

--Orders Shipped Late
--How many orders were shipped late (where ship date is later than the order date)?
--SELECT COUNT(Order_ID) AS Late_Orders
--FROM ProjectD
--WHERE Ship_Date > Order_Date;

--High Shipping Cost Orders
--Which orders had the highest shipping costs, and what are their profit margins?
--SELECT Order_ID, Product_Name, Shipping_Cost, Profit
--FROM ProjectD
--ORDER BY Shipping_Cost DESC

--Sales by Order Priority and Shipping Mode
--What is the breakdown of sales by order priority and shipping mode?
--SELECT Order_Priority, Ship_Mode, SUM(Sales) AS Total_Sales
--FROM ProjectD
--GROUP BY Order_Priority, Ship_Mode
--ORDER BY Total_Sales DESC;

--Shipping Cost by Customer Segment
--What is the total shipping cost by customer segment?
--SELECT Segment, SUM(Shipping_Cost) AS Total_Shipping_Cost
--FROM ProjectD
--GROUP BY Segment
--ORDER BY Total_Shipping_Cost DESC;

--Average Order and Shipping Cost per Year
--What is the average sales and shipping cost per year?
--SELECT Year, AVG(Sales) AS Avg_Sales, AVG(Shipping_Cost) AS Avg_Shipping_Cost
--FROM ProjectD
--GROUP BY Year
--ORDER BY Year ASC;

--Which order priorities lead to quicker shipping times?
--SELECT Order_Priority, AVG(DATEDIFF(Ship_Date, Order_Date)) AS Avg_Shipping_Time
--FROM sales_data
--GROUP BY Order_Priority
--ORDER BY Avg_Shipping_Time;

