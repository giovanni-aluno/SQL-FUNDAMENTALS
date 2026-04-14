-- LISTA 20 EXERCÍCIOS SQL (DB_GERAL)
-- 🔹 DDL (CREATE / ALTER / DROP)
-- 1.
-- Crie uma tabela chamada ESTOQUE com:
-- ● CODIGO_ESTOQUE (PK)
-- ● CODIGO_PRODUTO (FK)
-- ● QUANTIDADE

CREATE TABLE ESTOQUE (
CODIGO_ESTOQUE int primary key,
CODIGO_PRODUTO INT,
FOREIGN KEY (CODIGO_PRODUTO) REFERENCES PRODUTO(CODIGO_PRODUTO),
QUANTIDADE INT
);

-- 2.
-- Adicione uma coluna chamada DATA_CADASTRO do tipo DATE na tabela CLIENTE.
ALTER TABLE CLIENTE
ADD DATA_CADASTRO DATE DEFAULT NULL;

SELECT * FROM CLIENTE
-- 3.
-- Altere a coluna NOME_VENDEDOR da tabela VENDEDOR para VARCHAR(100).
ALTER TABLE VENDEDOR
ALTER COLUMN NOME_VENDEDOR VARCHAR(100)

-- 4.
-- Remova a coluna CPF da tabela VENDEDOR.
ALTER TABLE VENDEDOR
DROP COLUMN CPF

SELECT * FROM VENDEDOR

-- 5.
-- Exclua a tabela ESTOQUE
DROP TABLE ESTOQUE

-- 🔹 DML (INSERT / UPDATE / DELETE)
-- 6.
-- Insira um novo vendedor:
-- ● Código: 16

-- ● Nome: Carla Dias
-- ● CPF: 12312312399
-- ● Faixa: B
-- ● Salário: 4200

insert into VENDEDOR (CODIGO_VENDEDOR, NOME_VENDEDOR, FAIXA_COMISSAO, SALARIO )
VALUES (16, 'Carla Dias', 'B', 4200)

SELECT * FROM VENDEDOR

-- 7.
-- Atualize todos os clientes da cidade Curitiba, alterando o estado para PR (caso
-- esteja diferente).
UPDATE CLIENTE SET CIDADE = 'Curitiba' WHERE UF = 'PR'

SELECT * FROM CLIENTE WHERE CIDADE = 'Curitiba'
-- 8.
-- Atualize o prazo de entrega para 10 em todos os pedidos do cliente de código 1.

UPDATE PEDIDO SET PRAZO_ENTREGA = 10 WHERE CODIGO_CLIENTE = 1

SELECT * FROM PEDIDO 

-- 9.
-- Exclua todos os vendedores que possuem faixa de comissão C.

DELETE FROM PEDIDO_ITEM
WHERE CODIGO_PEDIDO IN (
    SELECT CODIGO_PEDIDO
    FROM PEDIDO
    WHERE CODIGO_VENDEDOR IN (4,7,10,13)
);

DELETE FROM PEDIDO
WHERE CODIGO_VENDEDOR IN (4,7,10,13);

DELETE FROM VENDEDOR
WHERE CODIGO_VENDEDOR IN (4,7,10,13);

-- 10.
-- Exclua todos os produtos cuja unidade seja “PC”.

-- 🔹 DQL – SELECT (básico)
-- 11.
-- Liste todos os nomes dos clientes.

-- 12.
-- Liste:
-- ● CODIGO_PRODUTO
-- ● DESCRICAO
-- Da tabela PRODUTO.

-- 13.
-- Liste todas as cidades cadastradas na tabela CLIENTE.

-- 🔹 DQL – SELECT com filtro
-- 14.
-- Liste os clientes que moram em Brasília.

-- 15.
-- Liste os vendedores que possuem salário igual a 4000.

-- 16.
-- Liste os pedidos com prazo de entrega igual a 7.

-- 🔹 JOINS (INTERMEDIÁRIO)
-- 17. (INNER JOIN)
-- Liste:
-- ● Nome do cliente
-- ● Código do pedido
-- Relacionando CLIENTE com PEDIDO.

-- 18. (LEFT JOIN)
-- Liste:
-- ● Nome do vendedor
-- ● Código do pedido

-- Mostrando todos os vendedores, mesmo os que não possuem pedidos.

-- 19. (RIGHT JOIN)
-- Liste:
-- ● Descrição do produto
-- ● Código do pedido
-- Mostrando todos os produtos, mesmo os que não foram vendidos.

-- 20. (FULL JOIN)
-- Liste:
-- ● Nome do cliente
-- ● Código do pedido
-- Mostrando todos os clientes e todos os pedidos, mesmo sem correspondência.