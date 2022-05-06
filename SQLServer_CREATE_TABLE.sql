--DROP DATABASE IF EXISTS AdventureWorks2016_usProject

--CREATE DATABASE AdventureWorks2016_usProject

--USE AdventureWorks2016_usProject

--DROP TABLE IF EXISTS dbo.DimDate

--CREATE TABLE dbo.DimDate (
--DateKey	NVARCHAR(10),
--DayNumberOfWeeK INT,
--DayNameOfWeek NVARCHAR(20),
--DayNameOfWeekAbbr NCHAR(3),
--DayNumberOfMonth INT,
--DayNumberOfYear INT,
--WeekNumberOfYear INT,
--MonthName NVARCHAR(20),
--MonthNameAbbr NCHAR(3),
--MonthNumberOfYear INT,
--CalendarQuarter INT,
--CalendarYear INT,
--CreationDate DATETIME,
--ModificationDate DATETIME
--);

--DROP TABLE IF EXISTS dbo.DimCurrency

--CREATE TABLE dbo.DimCurrency (
--CurrencySK INT IDENTITY(1,1) PRIMARY KEY,
--CurrencyID INT,
--CurrencyCode NCHAR(3),
--CurrencyName NCHAR(3),
--CurrencyDescription NVARCHAR(50),
--CreationDate DATETIME,
--ModificationDate DATETIME
--);

--DROP TABLE IF EXISTS dbo.DimProduct

--CREATE TABLE dbo.DimProduct(
--ProductSK INT IDENTITY(1,1) PRIMARY KEY,
--CreationDate DATETIME,
--ModificationDate DATETIME,
--ProductClass NCHAR(2),
--ProductColor NVARCHAR(15),
--DaysToManufacture INT,
--DiscontinuedDate DATETIME,
--FinishedGoodsFlag INT,
--ListPrice MONEY,
--MakeFlag INT,
--ProductName NVARCHAR(50),
--ProductID INT,
--ProductLine NCHAR(2),
--ProductModelID INT,
--ProductNumber NVARCHAR(25),
--ProductSubcategoryID INT,
--ReorderPoint INT,
--SafetyStockLevel INT,
--SellStartDate DATETIME,
--SellEndDate DATETIME,
--ProductSize NVARCHAR(5),
--SizeUnitMeasureCode NCHAR(3),
--StandardCost MONEY,
--ProductStyle NCHAR(2),
--ProductWeight DECIMAL(8,2),
--WeightUnitMeasureCode NCHAR(3),
--ProductCategoryName NVARCHAR(50),
--ProductCategoryID INT,
--ModelName NVARCHAR(50),
--ProductSubcategoryName NVARCHAR(50)
--);

--DROP TABLE IF EXISTS dbo.DimPromotion

--CREATE TABLE dbo.DimPromotion (
--CreationDate DATETIME,
--ModificationDate DATETIME,
--PromotionSK INT IDENTITY(1,1) PRIMARY KEY,
--PromotionID INT,
--PromotionCategory NVARCHAR(50),
--PromotionName NVARCHAR(255),
--PromotionDiscountPct MONEY,
--PromotionEndDate DATETIME,
--PromotionMaxQty INT,
--PromotionMinQty INT,
--PromotionStartDate DATETIME,
--PromotionType NVARCHAR(50)
--)

--DROP TABLE IF EXISTS dbo.DimSalesTerritory

--CREATE TABLE dbo.DimSalesTerritory (
--SalesTerritorySK INT IDENTITY(1,1) PRIMARY KEY,
--SalesTerritoryID INT,
--CreationDate DATETIME,
--ModificationDate DATETIME,
--CountryRegionCode NVARCHAR(3),
--SalesTerritoryGroup NVARCHAR(50),
--SalesTerritoryName NVARCHAR(50),
--SalesYTD MONEY,
--SalesLastYear MONEY,
--CostYTD MONEY,
--CostLastYear MONEY
--)


--DROP TABLE IF EXISTS dbo.DimGeography

--CREATE TABLE dbo.DimGeography (
--GeoSK INT IDENTITY(1,1) PRIMARY KEY,
--City NVARCHAR(30),
--PostalCode NVARCHAR(15),
--CountryRegionName NVARCHAR(50),
--CreationDate DATETIME,
--ModificationDate DATETIME,
--CountryRegionCode NVARCHAR(3),
--IsOnlyStateProvinceFlag INT,
--StateProvinceName NVARCHAR(50),
--StateProvinceCode NCHAR(3),
--TerritoryID INT,
--SalesTerritorySK INT,
--StateProvinceID INT
--)

--DROP TABLE IF EXISTS dbo.DimCustomer

--CREATE TABLE dbo.DimCustomer (
--CustomerSK INT IDENTITY(1,1) PRIMARY KEY,
--BirthDate DATE,
--DateFirstPurchase DATE,	
--Education NVARCHAR(30),
--Gender NVARCHAR(1),
--HomeOwnerFlag INT,
--MaritalStatus NVARCHAR(1),
--NumberCarsOwned INT, 
--NumberChildrenAtHome INT,
--Occupation NVARCHAR(30),
--TotalChildren INT, 
--YearlyIncome NVARCHAR(30),
--TotalPurchaseYTD NUMERIC(15,2),
--EmailAddress NVARCHAR(50),
--CreationDate DATETIME,
--ModificationDate DATETIME,
--FirstName nvarchar(50),
--LastName nvarchar(50),
--MiddleName nvarchar(50),
--NameStyle INT,
--Suffix nvarchar(10),
--Title nvarchar(8),
--Phone nvarchar(25),
--TerritoryID INT,
--StoreID INT, 
--CustomerID INT,
--)

--DROP TABLE IF EXISTS dbo.DimStore

--CREATE TABLE dbo.DimStore (
--StoreSK INT IDENTITY(1,1) PRIMARY KEY,
--StoreAK INT,
--CreationDate DATETIME,
--ModificationDate DATETIME,
--AnnualRevenue decimal(19, 4),
--AnnualSales decimal(19, 4),
--BankName nvarchar(50),
--Brands nvarchar(30),
--BusinessType nvarchar(5),
--Internet nvarchar(30),
--BusinessName nvarchar(50),
--NumberEmployees INT,
--SalesPersonID INT,
--Specialty nvarchar(50),
--SquareFeet INT, 
--YearOpened INT
--)

--DROP TABLE IF EXISTS dbo.FactStoreSales

--CREATE TABLE dbo.FactStoreSales (
--CreationDate datetime,
--ModificationDate datetime, 
--CarrierTrackingNumber nvarchar(25),
--OrderQuantity int,
--ProductSK int,
--SalesOrderLineNumber int,
--PromotionSK int,
--DiscountAmount money,
--CurrencySK int,
--DueDate datetime, 
--Freight money,
--OrderDate datetime, 
--TotalProductCost nvarchar(25),
--RevisionNumber int,
--SalesOrderNumber nvarchar(25),
--SalesPersonID int,
--ShipDate datetime,
--SalesAmount money,
--TaxAmt money,
--SalesTerritorySK int,
--OnlineOrderFlag bit
--)

--DROP TABLE IF EXISTS dbo.FactOnlineSales

--CREATE TABLE dbo.FactOnlineSales (
--CreationDate datetime,
--ModificationDate datetime,
--CarrierTrackingNumber nvarchar(25),
--OrderQuantity int,
--ProductSK int,
--SalesOrderLineNumber int,
--PromotionSK int,
--DiscountAmount money,
--CurrencySK int,
--CustomerSK int,
--DueDate datetime,
--Freight money,
--OrderDate datetime,
--TotalProductCost nvarchar(25),
--RevisionNumber int,
--SalesOrderNumber nvarchar(25),
--ShipDate datetime,
--SalesAmount money,
--TaxAmt money,
--SalesTerritorySK int,
--OnlineOrderFlag bit
--)

--DROP TABLE IF EXISTS dbo.DimGeographyUS

--CREATE TABLE dbo.DimGeographyUS (
--City NVARCHAR(30),
--PostalCode NVARCHAR(15),
--CountryRegionName NVARCHAR(50),
--CreationDate DATETIME,
--ModificationDate DATETIME,
--CountryRegionCode NVARCHAR(3),
--IsOnlyStateProvinceFlag INT,
--StateProvinceName NVARCHAR(50),
--StateProvinceCode NCHAR(3),
--TerritoryID INT,
--SalesTerritorySK INT,
--StateProvinceID INT
--)

--DROP TABLE IF EXISTS dbo.DimCustomerUS

--CREATE TABLE dbo.DimCustomerUS (
--BirthDate DATE,
--DateFirstPurchase DATE,	
--Education NVARCHAR(30),
--Gender NVARCHAR(1),
--HomeOwnerFlag INT,
--MaritalStatus NVARCHAR(1),
--NumberCarsOwned INT, 
--NumberChildrenAtHome INT,
--Occupation NVARCHAR(30),
--TotalChildren INT, 
--YearlyIncome NVARCHAR(30),
--TotalPurchaseYTD NUMERIC(15,2),
--EmailAddress NVARCHAR(50),
--CreationDate DATETIME,
--ModificationDate DATETIME,
--FirstName nvarchar(50),
--LastName nvarchar(50),
--MiddleName nvarchar(50),
--NameStyle INT,
--Suffix nvarchar(10),
--Title nvarchar(8),
--Phone nvarchar(25),
--TerritoryID INT,
--StoreID INT, 
--CustomerID INT,
--)

--TRUNCATE TABLE [dbo].[DimCustomer];
--TRUNCATE TABLE [dbo].[DimGeography];
--TRUNCATE TABLE [dbo].[DimProduct];
--TRUNCATE TABLE [dbo].[DimPromotion];
--TRUNCATE TABLE [dbo].[DimSalesTerritory];
--TRUNCATE TABLE [dbo].[DimStore];
--TRUNCATE TABLE [dbo].[DimCurrency];
--TRUNCATE TABLE [dbo].[DimDate];

--TRUNCATE TABLE [dbo].[DimCustomerUS];
--TRUNCATE TABLE [dbo].[DimGeographyUS];

--TRUNCATE TABLE [dbo].[FactOnlineSales];
--TRUNCATE TABLE [dbo].[FactStoreSales];
--TRUNCATE TABLE [dbo].[ErrorNull];

--DROP TABLE [dbo].[ErrorNull];

--ALTER TABLE dbo.DimStore
--ADD PRIMARY KEY (StoreSK);

--ALTER TABLE [dbo].[DimGeography]
--ADD FOREIGN KEY (SalesTerritorySK) REFERENCES [dbo].[DimSalesTerritory](SalesTerritorySK);

--ALTER TABLE [dbo].[DimStore]
--DROP CONSTRAINT [PK__DimStore__3B8221A73A7934F2]




--SELECT
--      [PhoneNumber]
--	  ,COUNT(PhoneNumber)
--  FROM [AdventureWorks2016_us].[Person].[PersonPhone]
--  GROUP BY 
--      [PhoneNumber]   
--  HAVING COUNT(PhoneNumber) >1;

--SELECT
--      [FirstName]
--	  ,COUNT(FirstName)
--  FROM [AdventureWorks2016_us].[Person].[Person]
--  GROUP BY 
--      [FirstName]
--  HAVING COUNT(FirstName) > 1;

--SELECT P.BusinessEntityID, FirstName, LastName, MiddleName, NameStyle, Suffix, Title, PhoneNumber
--FROM [Person].[Person] P
--LEFT JOIN [Person].[PersonPhone] PP
--ON P.BusinessEntityID = PP.BusinessEntityID
--WHERE PhoneNumber = '849-555-0139';

--SELECT [TotalPurchaseYTD],[DateFirstPurchase],[BirthDate],[MaritalStatus],[YearlyIncome]
--,[Gender],[TotalChildren],[NumberChildrenAtHome],[Education],[Occupation],[HomeOwnerFlag]
--,[NumberCarsOwned], [StoreID], [TerritoryID]
--FROM [Sales].[Customer] C
--LEFT JOIN [Sales].[CustomerDemographics] CD
--ON C.CustomerID = CD.CustomerID

--SELECT p.ProductID, p.Name, p.ProductNumber, p.MakeFlag, p.FinishedGoodsFlag, p.Color, p.SafetyStockLevel, p.ReorderPoint, p.StandardCost, p.ListPrice, 
--p.Size, p.SizeUnitMeasureCode, p.WeightUnitMeasureCode, p.Weight, DaysToManufacture, p.ProductLine, p.Class, p.Style, p.ProductSubcategoryID, p.ProductModelID, 
--p.SellEndDate, p.SellStartDate, p.DiscontinuedDate, pc.Name, pc.ProductCategoryID, pm.Name, ps.Name
--FROM [Production].[Product] AS p
--LEFT JOIN [Production].[ProductModel] AS pm
--ON p.ProductModelID = pm.ProductModelID
--LEFT JOIN [Production].[ProductSubcategory] AS ps
--ON p.ProductSubcategoryID = ps.ProductSubcategoryID
--LEFT JOIN [Production].[ProductCategory] AS pc
--ON ps.ProductCategoryID = pc.ProductCategoryID;

--SELECT sd.CarrierTrackingNumber, sd.OrderQty, sd.SalesOrderDetailID, sd.SalesOrderID, 
--sd.UnitPriceDiscount, sd.ProductID, sd.SpecialOfferID,
--sh.DueDate, sh.Freight, sh.OrderDate, sh.PurchaseOrderNumber, 
--sh.RevisionNumber, sh.SalesOrderNumber, sh.SalesPersonID, sh.ShipDate, sh.SubTotal, 
--sh.TaxAmt, sh.OnlineOrderFlag, sh.SalesOrderID, sh.CurrencyRateID, sh.TerritoryID, 
--sh.CustomerID
--FROM [Sales].[SalesOrderHeader] AS sh
--FULL OUTER JOIN [Sales].[SalesOrderDetail] AS sd
--ON sh.SalesOrderID = sd.SalesOrderID
--WHERE sh.OnlineOrderFlag IS NOT NULL;


--SELECT sd.CarrierTrackingNumber, sd.OrderQty, sd.SalesOrderDetailID, sd.SalesOrderID,  
--sd.UnitPriceDiscount, sd.ProductAK, sd.SpecialOfferID,
--sh.DueDate, sh.Freight, sh.OrderDate, sh.PurchaseOrderNumber,
--sh.RevisionNumber, sh.SalesOrderNumber, sh.SalesPersonID, sh.ShipDate, sh.SubTotal, 
--sh.TaxAmt, sh.OnlineOrderFlag, sh.SalesOrderID, sh.TerritoryID, sh.CurrencyID, sh.CustomerSK
--FROM salesorderheader AS sh
--LEFT JOIN salesorderdetail AS sd
--ON sh.SalesOrderID = sd.SalesOrderID;

--SELECT sd.AnnualRevenue, sd.AnnualSales, sd.BankName, sd.Brands, sd.BusinessType, sd.Internet,
--sd.NumberEmployees, sd.Specialty, sd.SquareFeet, sd.YearOpened, sd.BusinessEntityID, s.Name, 
--s.SalesPersonID
--FROM [Sales].[storedemographics] AS sd
--INNER JOIN [Sales].[store] AS s
--ON sd.BusinessEntityID = s.BusinessEntityID;
