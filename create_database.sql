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

