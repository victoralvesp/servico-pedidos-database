-- Insert rows into table 'Clientes' in schema '[dbo]'
USE Pedidos


IF NOT EXISTS (SELECT TOP 1 id FROM Clientes WHERE id = 5)
BEGIN
SET IDENTITY_INSERT Clientes ON
INSERT INTO [dbo].[Clientes]
( -- Columns to insert data into
 [id], [nome]
)
VALUES
(1, 'Darth Vader'), 
(2, 'Obi-Wan Kenobi'), 
(3, 'Luke Skywalker'), 
(4, 'Imperador Palpatine'), 
(5, 'Han Solo');


INSERT INTO VersaoScripts (script, data_execucao)
VALUES
(
    'S5',
    GetDate()
)

SET IDENTITY_INSERT Clientes OFF

END
