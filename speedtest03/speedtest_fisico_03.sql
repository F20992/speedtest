CREATE DATABASE barDosBDAs; #Criar banco de dados
DROP DATABASE bardosbdas;
USE barDosBDAs; #Usar banco de dados

/* Lógico_1: */
/*----------------------*/
CREATE TABLE Comanda ( #Criação da tabela da Comanda
    Id INT PRIMARY KEY auto_increment,
    ValorTotal DECIMAL(4,2),
    Finalizacao TINYINT(1),
    Estrelas INT,
    fk_Garcom_Id INT,
    fk_Mesa_Id INT
);

DROP TABLE garcom;
TRUNCATE TABLE garcom;
CREATE TABLE garcom ( 
    Id INT PRIMARY KEY auto_increment, 
    Nome VARCHAR(30)
 
);

CREATE TABLE Mesa (  #Criação de tabela da Mesa
    Id INT PRIMARY KEY auto_increment,
    Indetificacao NCHAR(2)
);
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_2
    FOREIGN KEY (fk_Garcom_Id)
    REFERENCES Garcom (Id)
    ON DELETE CASCADE;
 
ALTER TABLE Comanda ADD CONSTRAINT FK_Comanda_3
    FOREIGN KEY (fk_Mesa_Id)
    REFERENCES Mesa (Id)
    ON DELETE CASCADE;

INSERT INTO Garcom(Nome)VALUES('Celso');
INSERT INTO Garcom(Nome)VALUES('Miqueias');
INSERT INTO Garcom(Nome)VALUES('Arthur');

SELECT * FROM Garcom;

INSERT INTO Mesa(Indetificacao)VALUES('1a');
INSERT INTO Mesa(Indetificacao)VALUES('1b');
INSERT INTO Mesa(Indetificacao)VALUES('1c');
INSERT INTO Mesa(Indetificacao)VALUES('1d');

SELECT * FROM Mesa