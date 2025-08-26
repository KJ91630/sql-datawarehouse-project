/*

---------------------------------------------------------------------------------------------------------------------------------------------------------
Create Databases and schemas
---------------------------------------------------------------------------------------------------------------------------------------------------------
Intially we made sure we drop any existing database with the same name, then we created a database, schemas in Bronze, Silver and Gold layer.



WARNING:

Running the below script will drop any database with the name DataWarehouse along with all the tables, schemas related to it. 
*/






USE master;
GO

--Dropping the DataWarehouse database if it already exists and recreate it

If EXISTS(SELECT 1 from sys.databases where name = 'DataWarehouse')

BEGIN
Alter Database DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
Drop Database Datawarehouse
END;
GO
PRINT('Database if exist is deleted')
---CREATE DATEBASE DataWarehouse

CREATE Database DataWarehouse;
Go
PRINT('Database Created')

USE Datawarehouse;
GO

--CREATE SCHEMAS
CREATE SCHEMA silver;

GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA gold;

GO

