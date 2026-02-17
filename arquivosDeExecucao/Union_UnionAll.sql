--Consultar endereço de colaboradores e fornecedores para envio de lembraças

--/////////////INICIO CONSULTA///////////////
SELECT rua,
    bairro,
    cidade,
    estado,
    cep
FROM colaboradores
UNION
SELECT rua,
    bairro,
    cidade,
    estado,
    cep
FROM fornecedores;
--////////////FIM CONSULTA////////////



--//IMPORTANTE//
--OBS: usar apenas o 'UNION' retira as ocorrências em duplicidade, então nesse exemplo, perdemos a informações de fornecedores e colaboradores que estão em mesmo endereço. A consulta abaixo mostra quantas vezes esse endereço se repete.
SELECT * from colaboradores WHERE rua = 'Rua das flores - 210';
--OBS:para ter acesso às ocorrências repetidas use 'UNION ALL'
SELECT nome,
    rua,
    bairro,
    cidade,
    estado,
    cep
FROM colaboradores
UNION ALL
SELECT nome,
    rua,
    bairro,
    cidade,
    estado,
    cep
FROM fornecedores;