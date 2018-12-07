USE Pedidos

-- Create a new table called 'Produtos' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Produtos', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Produtos
    IF EXISTS (SELECT TOP 1 id FROM VersaoScripts WHERE script = 'T3')
        DELETE FROM VersaoScripts WHERE script = 'T3'
END
-- Create the table in the specified schema
CREATE TABLE dbo.Produtos
(
    id INT NOT NULL PRIMARY KEY, -- primary key column
    nome VARCHAR(50) NOT NULL,
    preco_sugerido DECIMAL(18,2) NOT NULL,
    preco_sugerido_moeda VARCHAR(3) NOT NULL,
    multiplo INT
);

INSERT INTO VersaoScripts (
 script, data_execucao
) 
VALUES
( -- first row: values for the columns in the list above
 'T3', GetDate()
);
-- add more rows here
