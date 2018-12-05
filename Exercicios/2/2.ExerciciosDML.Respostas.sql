-- a 

SELECT Pessoas.Nome FROM Pessoas WHERE Pessoas.Id = 4;

-- b

SELECT Pessoas.Nome FROM Pessoas WHERE Pessoas.Id IN (3,4);

-- c 


SELECT Pessoas.Nome FROM Pessoas WHERE Pessoas.Id >= 3 
AND Pessoas.Id <= 4;

-- d 


SELECT Pessoas.Nome FROM Pessoas WHERE Pessoas.Id >= 3 
AND Pessoas.Id <= 4 ORDER BY Pessoas.Nome; 


-- e 

SELECT Pessoas.Id, Pessoas.Nome FROM Pessoas 
WHERE Pessoas.Id = 3 OR Pessoas.Id = 4;

-- f 

SELECT Pessoas.Id, Pessoas.Nome, Pessoas.DtNasc, 
Pessoas.Telefone, Pessoas.Email, Pessoas.Endereco
FROM Pessoas WHERE Pessoas.Nome LIKE 'Jo%';

-- g 

SELECT Pessoas.Id, Pessoas.Nome, Pessoas.DtNasc, 
Pessoas.Telefone, Pessoas.Email, Pessoas.Endereco
FROM Pessoas WHERE Pessoas.Nome LIKE '%berto%';

-- h 

SELECT Pessoas.Id, Pessoas.Nome, Pessoas.DtNasc, 
Pessoas.Telefone, Pessoas.Email, Pessoas.Endereco
FROM Pessoas WHERE Pessoas.Nome LIKE '%ilva';

-- i

SELECT Pessoas.Id, Pessoas.Nome, Pessoas.DtNasc, 
Pessoas.Telefone, Pessoas.Email, Pessoas.Endereco
FROM Pessoas WHERE Pessoas.Email IS NOT NULL;


-- j

SELECT Produtos.Id, Produtos.Nome, Produtos.Descricao,
Produtos.Preco, Produtos.QtEstoque
FROM Produtos
WHERE Produtos.Id = 4;


-- k 

SELECT Produtos.Id, Produtos.Nome, Produtos.Descricao,
Produtos.Preco, Produtos.QtEstoque
FROM Produtos
WHERE Produtos.Nome LIKE '%spray%';


-- l

SELECT Produtos.Id, Produtos.Nome, Produtos.Descricao,
Produtos.Preco, Produtos.QtEstoque
FROM Produtos
WHERE Produtos.Descricao IS NULL;

-- m 

SELECT AVG(Produtos.Preco) FROM Produtos;

-- n 

SELECT MAX(Produtos.Preco) FROM Produtos;

-- o 

SELECT MIN(Produtos.Preco) FROM Produtos;

-- p

SELECT COUNT(Vendas.Id) FROM Vendas WHERE 
Vendas.Pessoas_Id = 1;

-- q 

SELECT SUM(Itens.Valor) FROM Itens;

-- r 

SELECT Itens.Produtos_Id, SUM(Itens.Valor)  FROM 
Itens GROUP BY Itens.Produtos_Id;

-- s 

SELECT Itens.Produtos_Id, SUM(Itens.Valor) Valor FROM 
Itens 
GROUP BY Itens.Produtos_Id
HAVING Valor > 900;

-- t 

SELECT Itens.Produtos_Id, COUNT(Itens.Produtos_Id)  FROM 
Itens GROUP BY Itens.Produtos_Id;


-- u 

SELECT Itens.Vendas_Id, SUM(Itens.Valor) Valor FROM 
Itens 
GROUP BY Itens.Vendas_Id;

-- v

SELECT SUM(Itens.Valor) 

FROM Vendas 

INNER JOIN Itens 
ON Itens.Vendas_Id = Vendas.Id

WHERE Vendas.Pessoas_Id = 1
 
GROUP BY Vendas.Id;

-- w 

SELECT Itens.Vendas_Id, Itens.Produtos_Id 
FROM Itens 
WHERE Itens.Seq IN (1,2);











































