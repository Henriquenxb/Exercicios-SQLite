--///////////INÍCIO CONSULTA///////////
SELECT id, nome, telefone
FROM clientes
where ID = (
    SELECT idcliente
    from pedidos
    where datahorapedido = '2023-01-02 08:15:00'
);
--///////////FIM CONSULTA///////////

