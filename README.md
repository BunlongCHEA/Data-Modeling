# Introduction
This is the data modeling that merging source of the data from AdventureWorks2016_eu in MySQL and AdventureWorks2016_us in Microsoft SQL Server Management using SSIS.
The step of processing this project is to:
  - Create new table in Microsoft SQL Server for integrating the data into Data Warehouse
  - Mapping the plan on how to merge the data from MySQL, SQL Server, and csv file (see in Mapping Specification V1.0.rar)
  - Import the data from Source.rar into SSIS
  - Create new surrogate key in order to join table together in dimension table, while cleaning the data
  - Connect flow between dimension table and fact table
  - Split the flow that has OnlineOrderFlag to FactOnlineSales and FactStoreSales
