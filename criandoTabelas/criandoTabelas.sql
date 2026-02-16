--Produtos
CREATE TABLE produtos(
    id TEXT PRIMARY KEY,
    nome VARCHAR (255),
    descricao VARCHAR (255),
    preco DECIMAL (10,2),
    categoria VARCHAR (50)
);

--Colaboradores
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

--Fornecedores
CREATE TABLE fornecedores(
    id TEXT PRIMARY KEY,
    nome VARCHAR (255) not null,
    contato VARCHAR (100) not null,
    telefone VARCHAR (100),
    email VARCHAR (50),
    rua VARCHAR (100) not null,
    bairro VARCHAR (100) not null,
    cidade VARCHAR (100) not null,
    estado VARCHAR (2) not null,
    cep VARCHAR (8) not null
);

--Clientes
CREATE TABLE clientes(
    id TEXT not null,
    nome VARCHAR (255),
    telefone VARCHAR (50),
    email VARCHAR (50) DEFAULT 'Sem email',
    endereco VARCHAR (255),
    PRIMARY KEY (id)
);

--Pedidos
CREATE TABLE pedidos(
    id TEXT PRIMARY KEY,
    idcliente TEXT,
    datahorapedido DATETIME,
    status VARCHAR(50)
)
--Itens Pedidos