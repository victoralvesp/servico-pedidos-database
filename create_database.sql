-- Create a new database called 'Pedidos'
-- Connect to the 'master' database to run this snippet
USE master

-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'Pedidos'
)
CREATE DATABASE Pedidos

USE Pedidos

-- Create a new table called 'VersaoScripts' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.VersaoScripts', 'U') IS NOT NULL
DROP TABLE dbo.VersaoScripts

-- Create the table in the specified schema
CREATE TABLE dbo.VersaoScripts
(
    id INT IDENTITY PRIMARY KEY, -- primary key column
    script VARCHAR(5) NOT NULL,
    data_execucao DATETIME NOT NULL
    -- specify more columns here
);
