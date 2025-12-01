BEGIN TRANSACTION;

create table autor (
    id_autor INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR (100) NOT NULL,
    nacionalidade VARCHAR (50)
);

---table editora---
create table editora (
    id_editora INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR (100) NOT NULL
);

--- table cliente ---
create table cliente (
    id_cliente INTEGER PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR (100) NOT NULL,
    cpf VARCHAR (14) UNIQUE,
    email VARCHAR (100),
    telefone VARCHAR (15)
);

-- table livro ---
create table livro (
    id_livro INTEGER PRIMARY KEY AUTOINCREMENT,
    isbn VARCHAR (13) NOT NULL UNIQUE,
    titulo VARCHAR (200) NOT NULL,
    preco_venda DECIMAL (10,2) NOT NULL,
    estoque_atual INT NOT NULL,
    ano_publicacao INT (4),
    id_autor INTEGER,
    id_editora INTEGER,
    FOREIGN KEY (id_autor) REFERENCES autor (id_autor),
    FOREIGN KEY (id_editora) REFERENCES editora (id_editora)
);

-- tabela venda ---
create table venda (
    id_venda INTEGER PRIMARY KEY AUTOINCREMENT,
    data_venda DATE NOT NULL,
    valor_total DECIMAL (10,2) NOT NULL,
    id_cliente INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);
 
--- tabela venda_produto ---
create table venda_produto(
    id_livro INTEGER,
    id_venda INTEGER,
    FOREIGN KEY(id_livro) REFERENCES livro(id_livro),
    FOREIGN KEY(id_venda) REFERENCES venda(id_venda)
);