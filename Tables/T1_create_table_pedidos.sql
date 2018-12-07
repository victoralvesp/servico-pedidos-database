USE Pedidos

-- Create a new table called 'Pedidos' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Pedidos', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Pedidos
    IF EXISTS (SELECT TOP 1 id FROM VersaoScripts WHERE script = 'T1')
        DELETE FROM VersaoScripts WHERE script = 'T1'
END
-- Create the table in the specified schema
CREATE TABLE dbo.Pedidos
(
    id INT NOT NULL PRIMARY KEY, -- primary key column
    id_cliente INT NOT NULL
    -- specify more columns here
);

INSERT INTO VersaoScripts (
 script, data_execucao
) 
VALUES
( -- first row: values for the columns in the list above
 'T1', GetDate()
);
-- add more rows here
