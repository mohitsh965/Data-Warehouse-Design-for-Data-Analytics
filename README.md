# Data-Warehouse-Design-for-Data-Analytics
This project designs a data warehouse using the Online Retail dataset from UCI Machine Learning Repository. It applies a star schema in SQL Server, processes data through an ETL pipeline with SSIS, and generates reports and visualizations in SSRS and Tableau. It also compares relational vs. graph databases.
 Installation Instructions
1. Prerequisites:
•	SQL Server for running ETL scripts and reports.
•	SSRS for generating reports.
•	Tableau for creating interactive visualizations.
•	Neo4J for graph database comparison (optional).

2. Setting up the Database:
•	Clone or download this repository.
•	Import the `OnlineRetail.csv` file into SQL Server.
•	Run the SQL scripts to create the database schema (tables, views, etc.).
•	Execute the ETL process using SQL Server Integration Services (SSIS).

3. Running Reports:
•	Use SSRS to generate reports such as Monthly Sales Trends, Sales by Country, and TopSelling Products.
•	Import the Tableau workbook to visualize sales trends, geographical sales distribution, and more.

4. Neo4J Graph Database Setup:
•	Set up Neo4J and import data using Cypher queries for graph database analysis.
