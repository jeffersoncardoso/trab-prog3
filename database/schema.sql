CREATE TABLE CLIENTES(
    ID INTEGER PRIMARY KEY ASC,
    NOME VARCHAR(255) NOT NULL,
    CPF VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    DATA_NASCIMENTO DATE NOT NULL,
    SENHA VARCHAR(255) NOT NULL
);

CREATE TABLE CLIENTE_DETALHE(
    ID_CLIENTE NOT NULL,
    DT_CADASTRO DATE NOT NULL,
    SEXO VARCHAR(1) NOT NULL,
    PESO FLOAT NOT NULL,
    ALTURA FLOAT NOT NULL,
    GORDURA FLOAT  NOT NULL,
    HABITOS DATE NOT NULL,
    EXERCICIO TEXT NOT NULL,
    SAUDE TEXT NOT NULL
);

CREATE TABLE DIETA(
    ID_CLIENTE NOT NULL,
    DT_CADASTRO DATE NOT NULL,
    ID_NUTRICIONISTA NOT NULL,
    SEGUNDA TEXT NOT NULL,
    TERCA TEXT NOT NULL,
    QUARTA TEXT NOT NULL,
    QUINTA TEXT NOT NULL,
    SEXTA TEXT NOT NULL,
    SABADO TEXT NOT NULL,
    DOMINGO TEXT NOT NULL
);

CREATE TABLE NUTRICIONISTAS(
    ID AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NOME VARCHAR(255) NOT NULL,
    EMAIL VARCHAR(255) NOT NULL,
    SENHA VARCHAR(255) NOT NULL
);

INSERT INTO NUTRICIONISTAS(
    ID, NOME, EMAIL, SENHA
)VALUES(
    100, 'João da Silva', 'joão@teste.com', '12345'
);

INSERT INTO NUTRICIONISTAS(
    ID, NOME, EMAIL, SENHA
)VALUES(
    101, 'Fernanda da Silva', 'fernanda@teste.com', '12345'
);


INSERT INTO NUTRICIONISTAS(
    ID, NOME, EMAIL, SENHA
)VALUES(
    102, 'Maria da Silva', 'maria@teste.com', '12345'
);
