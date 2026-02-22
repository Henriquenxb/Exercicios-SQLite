--///////////INÍCIO CONSULTA///////////
SELECT id, nome, telefone
FROM clientes
where ID = (
    SELECT idcliente
    from pedidos
    where datahorapedido = '2023-01-02 08:15:00'
);
--///////////FIM CONSULTA///////////

--///////////INÍCIO CONSULTA///////////
--Consulta para filtrar ocorrencias de pedidos com mês '01'
SELECT * FROM pedidos
where strftime('%m',datahorapedido) = '01';
--///////////FIM CONSULTA///////////


--///////////INÍCIO CONSULTA///////////
--Consultas aninhadas. Note que uso o operador 'IN' para fazer referência a TODOS os retornos da consulta interna.
SELECT nome
FROM clientes
WHERE id IN (
    SELECT idcliente
    from pedidos
    where strftime('%m', datahorapedido) = '01'
);
--///////////FIM CONSULTA///////////

--///////////INÍCIO CONSULTA///////////
--Saber a média dos valores dos produtos
SELECT AVG(preco) From produtos;

SELECT nome, preco
FROM produtos
where preco > (
    SELECT AVG(preco)
    FROM produtos
);

SELECT nome, preco
FROM produtos
GROUP BY nome, preco
HAVING preco > (
    SELECT AVG(preco)
    FROM produtos
);
--///////////FIM CONSULTA///////////