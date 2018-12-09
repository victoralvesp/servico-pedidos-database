USE Pedidos

-- Create a new table called 'Clientes' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Clientes', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Clientes
    IF EXISTS (SELECT TOP 1 id FROM VersaoScripts WHERE script = 'T4')
        DELETE FROM VersaoScripts WHERE script = 'T4'
END
-- Create the table in the specified schema
CREATE TABLE dbo.Clientes
(
    id INT IDENTITY PRIMARY KEY, -- primary key column
    nome VARCHAR(50) NOT NULL
);

INSERT INTO VersaoScripts (
 script, data_execucao
) 
VALUES
( -- first row: values for the columns in the list above
 'T4', GetDate()
);
-- add more rows here
