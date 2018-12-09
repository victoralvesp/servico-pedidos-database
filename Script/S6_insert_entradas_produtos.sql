-- Insert rows into table 'Produtos' in schema '[dbo]'
USE Pedidos


IF NOT EXISTS (SELECT TOP 1 id FROM Produtos WHERE id = 5)
BEGIN
SET IDENTITY_INSERT Produtos ON
INSERT INTO [dbo].[Produtos]
( -- Columns to insert data into
 [id], [nome], [preco_sugerido], [preco_sugerido_moeda], [multiplo]
)
VALUES
(1, 'Millenium Falcon', 550000.00, 'BRL', null),
(2, 'X-Wing', 60000.00, 'BRL', 2),
(3, 'Super Star Destroyer', 4570000.00, 'BRL', null),
(4, 'TIE Fighter', 75000.00, 'BRL', 2),
(5, 'Lightsaber ', 6000.00, 'BRL', 5),
(6, 'DLT-19 Heavy Blaster Rifle', 5800.00, 'BRL', null),
(7, 'DL-44 Heavy Blaster Pistol', 1500.00, 'BRL', 10);



INSERT INTO VersaoScripts (script, data_execucao)
VALUES
(
    'S6',
    GetDate()
)

SET IDENTITY_INSERT Produtos OFF

END
