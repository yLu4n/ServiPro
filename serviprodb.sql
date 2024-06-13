CREATE DATABASE dbservipro;
USE dbservipro;

-- os blocos de código abaixo criam as tabelas do banco de dados:
CREATE TABLE usuarios(
	id_user int primary key,
    usuario varchar(15) not null,
    fone varchar(15),
    login varchar(15) not null unique,
    senha varchar(250) not null,
    perfil varchar(20) not null
);

CREATE TABLE clientes(
	id_client int PRIMARY KEY AUTO_INCREMENT,
    nome_client varchar(50) NOT NULL,
    endereco_client varchar(100),
    telefone_client varchar(15) NOT NULL,
    email_client varchar(50) UNIQUE
);

CREATE TABLE os(
	os int PRIMARY KEY AUTO_INCREMENT,
    data_os timestamp default current_timestamp,
    equipamento varchar(150) NOT NULL,
    servico varchar(150),
    tecnico varchar(30),
    valor decimal(10,2),
    id_client int NOT NULL,
    FOREIGN KEY(id_client) REFERENCES clientes(id_client),
    tipo varchar(100) NOT NULL,
    defeito varchar(150) NOT NULL,
    situacao varchar(25) NOT NULL
);


-- as linhas de código abaixo descrevem as tabelas criadas:
DESCRIBE usuarios;
DESCRIBE clientes;
DESCRIBE os;
select * from usuarios;
select * from clientes;
select * from os;
-- as linhas abaixo inserem dados nas tabelas:
-- usuarios:
INSERT INTO usuarios(id_user,usuario,login,senha)
VALUES(1,'Administrador','admin', 'admin123');
INSERT INTO usuarios(id_user,usuario,login,senha)
VALUES(2,'Kauã Kley','Kauak', 'devnet');
INSERT INTO usuarios(id_user,usuario,login,senha)
VALUES(3,'Luan Victor','luanvic', 'devdb');

-- clientes: 
INSERT INTO clientes(nome_client, endereco_client, telefone_client, email_client)
VALUES ('Lucas Almeida', 'Rua das Flores, 123, São Paulo, SP', '(11) 91234-5678', 'lucas.almeida@example.com');
INSERT INTO clientes(nome_client, endereco_client, telefone_client, email_client)
VALUES('Mariana Costa', 'Avenida Brasil, 456, Rio de Janeiro, RJ', '(21) 98765-4321', 'mariana.costa@example.com');
INSERT INTO clientes(nome_client, endereco_client, telefone_client, email_client)
VALUES('Pedro Souza', 'Rua das Acácias, 789, Belo Horizonte, MG', '(31) 99887-6655', 'pedro.souza@example.com');
INSERT INTO clientes(nome_client, endereco_client, telefone_client, email_client)
VALUES('Roberta Lima', 'Avenida Paulista, 1010, São Paulo, SP', '(11) 99988-7766', 'roberta.lima@example.com');

-- serviços:
INSERT INTO os (equipamento, defeito, servico, tecnico, valor, id_client) 
VALUES('Notebook Dell Inspiron', 'Não liga', 'Troca da placa-mãe', 'João Silva', 1500.00, 1);
INSERT INTO os (equipamento, defeito, servico, tecnico, valor, id_client) 
VALUES('Smartphone Samsung Galaxy S21', 'Tela quebrada', 'Substituição da tela', 'Maria Oliveira', 800.00, 2);
INSERT INTO os (equipamento, defeito, servico, tecnico, valor, id_client) 
VALUES('Impressora HP LaserJet', 'Não imprime', 'Limpeza e substituição do toner', 'Carlos Souza', 300.00, 3);
INSERT INTO os (equipamento, defeito, servico, tecnico, valor, id_client) 
VALUES('Televisão LG 42"', 'Sem imagem', 'Reparo no painel de controle', 'Fernanda Lima', 700.00, 4);
