CREATE DATABASE Folha;

USE Folha;

----------------------------------------------------------------------------------------------------------------

CREATE TABLE Funcionarios (
  Id INT NOT NULL,
  Nome VARCHAR(100) NOT NULL,
  Cpf VARCHAR(14) NOT NULL,
  Endereco VARCHAR(200) NULL,
  PRIMARY KEY (Id),
  UNIQUE INDEX Idx_Cpf (Cpf ASC));


CREATE TABLE Dependentes (
  Id INT NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Funcionarios_Id INT NOT NULL,
  PRIMARY KEY (Id),
  INDEX Fk_Dependentes_Funcionarios_idx (Funcionarios_Id ASC),
  CONSTRAINT fk_Dependentes_Funcionarios FOREIGN KEY (Funcionarios_Id) REFERENCES Funcionarios (Id));

----------------------------------------------------------------------------------------------------------------

INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(1,'Alberto Maidana','003.985.323-90','Marta Da Silva 90');

INSERT INTO Funcionarios (Id,Nome,Cpf,Endereco) VALUES(2,'Roberto Almeida','444.985.323-90','Rua Sem Fim 988');


UPDATE Funcionarios SET Nome = 'Marcelo Castro', Cpf = '900.576.977-90', Endereco = 'Atilio da Costa 45' 
WHERE Id = 2;

DELETE FROM Funcionarios WHERE Id = 2;

----------------------------------------------------------------------------------------------------------------

INSERT INTO Dependentes (Nome,Funcionarios_Id) VALUES ( 'Roberta Maidana',1);

----------------------------------------------------------------------------------------------------------------

DELETE FROM Funcionarios WHERE Id = 1;

DELETE FROM Dependentes WHERE Funcionarios_Id = 1;

----------------------------------------------------------------------------------------------------------------

SELECT * FROM Funcionarios;

SELECT Id,Nome,Cpf,Endereco FROM Funcionarios;

SELECT Nome FROM Funcionarios;

SELECT Id,Nome,Cpf,Endereco FROM Funcionarios WHERE Id = 1;











