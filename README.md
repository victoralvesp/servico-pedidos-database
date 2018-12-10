# Servico Pedidos - Database
Este repositório se destina a realizar o controle de versão dos scripts utilizados para a criação e manutenção da base de dados utilizado pelo serviço [Serviço Pedidos](https://github.com/victoralvesp/servico-pedidos)

## Utilização
Para a bom controle da versão dos scripts recomenda-se:
1. Definir um *Id* aos scripts novos e adicioná-lo no começo do nome deste como é o caso dos caracteres *T1* em `T1_create_table_pedidos.sql`.
1. Adicionar uma entrada a tabela **VersaoScripts** com o *Id* do script e a data de execução dele na base. Para o script *T1*:

```sql
INSERT INTO VersaoScripts (
 script, data_execucao
) 
VALUES
( -- first row: values for the columns in the list above
 'T1', GetDate()
);
``` 