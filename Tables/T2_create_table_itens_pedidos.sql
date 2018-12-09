USE Pedidos

-- Create a new table called 'Itens_de_Pedido' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Itens_de_Pedido', 'U') IS NOT NULL
BEGIN
    DROP TABLE dbo.Itens_de_Pedido
    IF EXISTS (SELECT TOP 1 id FROM VersaoScripts WHERE script = 'T2')
        DELETE FROM VersaoScripts WHERE script = 'T2'
END
-- Create the table in the specified schema
CREATE TABLE dbo.Itens_de_Pedido
(
    id INT IDENTITY PRIMARY KEY, -- primary key column
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario decimal(18,2) NOT NULL,
    preco_unitario_moeda VARCHAR(3) NOT NULL,
    rentabilidade VARCHAR(15)
);

INSERT INTO VersaoScripts (
 script, data_execucao
) 
VALUES
( -- first row: values for the columns in the list above
 'T2', GetDate()
);
-- add more rows here
