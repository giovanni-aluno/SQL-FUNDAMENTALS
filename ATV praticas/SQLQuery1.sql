-- 📘 Lista de Exercícios – DML (Banco DB_GERAL)
-- 🔹 Questão 1 – INSERT
-- Pergunta:
-- Insira um novo cliente chamado Mariana Lopes, residente em São Paulo – SP.
SELECT * FROM CLIENTE C
INSERT INTO CLIENTE (CODIGO_CLIENTE, NOME_CLIENTE, CPF, ENDERECO, PAIS, UF, CIDADE, CEP) VALUES 
(99, 'Mariana Lopes', '12345688879', 'rua da impacta', 'Brasil', 'SP', 'São Paulo', '11223344' )

-- 🔹 Questão 2 – INSERT
-- Pergunta:
-- Cadastre um novo vendedor com faixa de comissão B e salário R$ 4.200,00.
SELECT * FROM VENDEDOR V
INSERT INTO VENDEDOR (CODIGO_VENDEDOR, NOME_VENDEDOR, CPF, FAIXA_COMISSAO, SALARIO) VALUES
(99, 'NOVO VENDEDOR', '11559948', 'A', '4200.0')

-- 🔹 Questão 3 – INSERT
-- Pergunta:
-- Cadastre um novo produto chamado Webcam Full HD no valor de R$ 299,90.
SELECT * FROM PRODUTO P
INSERT INTO PRODUTO (CODIGO_PRODUTO, DESCRICAO, UNIDADE, VALOR_UNITARIO) VALUES
(99, 'Webcam Full HD', 'UN', 299.90)

-- 🔹 Questão 4 – INSERT com FK
-- Pergunta:
-- Crie um novo pedido para o cliente 51, atendido pelo vendedor 1, com prazo de entrega de 7 dias.


-- 🔹 Questão 5 – INSERT em tabela associativa
-- Pergunta:
-- Adicione dois itens ao pedido 1101.


-- 🔹 Questão 6 – UPDATE
-- Pergunta:
-- Atualize o endereço do cliente 51 para Avenida Central, 500.

-- 🔹 Questão 7 – UPDATE com WHERE
-- Pergunta:
-- Aumente em 10% o salário dos vendedores da faixa de comissão A.


-- 🔹 Questão 8 – UPDATE com JOIN
-- Pergunta:
-- Atualize o prazo de entrega para 5 dias em todos os pedidos feitos por clientes do estado de SP.