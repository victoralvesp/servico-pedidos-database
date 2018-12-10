USE Pedidos

SET IDENTITY_INSERT Pedidos ON
insert into Pedidos (id, id_cliente)
VALUES
(
    1, 1
),
(
    2, 2
)
SET IDENTITY_INSERT Pedidos OFF
SET IDENTITY_INSERT Itens_De_Pedido ON

INSERT INTO Itens_de_Pedido
( 
  id, id_pedido, id_produto, preco_unitario, preco_unitario_moeda, quantidade
)
VALUES
( 
  1, 1, 1, 551000, 'BRL', 1
),
( 
  2, 1, 2, 60000, 'BRL', 2
),
( 
  3, 2, 3, 4570000, 'BRL', 1
),
( 
  4, 2, 4, 76000, 'BRL', 4
)

SET IDENTITY_INSERT Itens_De_Pedido OFF