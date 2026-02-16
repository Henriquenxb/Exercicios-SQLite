--Criando tabela 'colaboradores'...
CREATE TABLE colaboradores(
    id TEXT PRIMARY KEY,
    nome VARCHAR (255) not null,
    cargo VARCHAR (100),
    dataContratacao DATE,
    telefone VARCHAR (100),
    email VARCHAR (50),
    rua VARCHAR (100) not null,
    bairro VARCHAR (100) not null,
    cidade VARCHAR (100) not null,
    estado VARCHAR (2) not null,
    cep VARCHAR (8) not null
);

--Populando...
INSERT INTO colaboradores (ID, Nome, Cargo, DataContratacao, Telefone, Email, Rua, Bairro, Cidade, Estado, CEP) VALUES
(1, 'Carlos Silva', 'Gerente', '2022-03-15', '115551234', 'carlos.silva@email.com', 'Rua do Comércio - 258', 'Centro', 'São Paulo', 'SP', '01000001'),
(2, 'Marta Sousa', 'Chef de Cozinha', '2022-05-10', '215555678', 'marta.sousa@email.com', 'Rua dos Sabores - 456', 'Saboroso', 'São Paulo', 'SP', '20000001'),
(3, 'Pedro Almeida', 'Barista', '2022-07-20', '315557890', 'pedro.almeida@email.com', 'Avenida do Café - 789', 'Centro', 'São Paulo', 'SP', '01000001'),
(4, 'Sofia Rodrigues', 'Garçom', '2022-01-12', '415552345', 'sofia.rodrigues@email.com', 'Rua da Hospitalidade - 101', 'Boas Maneiras', 'São Paulo', 'SP', '40000001'),
(5, 'João Pereira', 'Atendente', '2022-09-05', '515558765', 'joao.pereira@email.com', 'Rua das flores - 210', 'Centro', 'São Paulo', 'SP', '20000001'),
(6, 'Inês Lima', 'Barista', '2022-04-02', '615553421', 'ines.lima@email.com', 'Rua das Entregas - 280', 'Entregas Rápidas', 'São Paulo', 'SP', '90000001'),
(7, 'Antonio Artur', 'Entregador', '2023-01-10', '568442577', 'antonio.artur@email.com', 'Rua das flores - 210', 'Centro', 'São Paulo', 'SP', '20000001');


--Exibindo...
Select * From colaboradores;