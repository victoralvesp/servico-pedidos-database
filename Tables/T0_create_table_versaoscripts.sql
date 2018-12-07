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
