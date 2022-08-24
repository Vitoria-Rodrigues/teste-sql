--1)
INSERT INTO produtos(cod_prod, loj_prod, desc_prod, dt_inclu_prod, preço_prod)
VALUES (170, 2, 'LEITE CONDESADO MOCOCA', '30/12/2010', 45,40)

--2)
UPDATE produtos
SET preco_prod = 95,40
WHERE cod_prod = 170 AND loj_prod = 2

--3) 
SELECT cod_prod AS 'Codigo do produto', loj_prod AS 'Loja do produto', desc_prod AS 'Descrição do produto',
dt_inclu_prod AS 'Data de inclusão do produto', preço_prod AS 'Preço do produto' FROM produtos
WHERE loj_prod = 1 AND loj_prod = 2 

--4) 
SELECT MAX(dt_inclu_prod) AS 'Data maior de inclusão', MIN(dt_inclu_prod) AS 'Data menor de inclusão' FROM produtos

--5) 
SELECT SUM(cod_prod) AS 'Quantidade total de registros' FROM produtos

--6) 
SELECT desc_prod FROM produtos
WHERE desc_prod LIKE 'L%'

--7) 
SELECT SUM(preco_prod) AS 'Soma de todos os preços' FROM produtos

--8) 
SELECT SUM(preco_prod) AS 'Soma de todos os preços maiores que R$100' FROM produto
WHERE preco_prod > 100.000

--9) 
SELECT loj_prod, desc_loj, cod_prod, desc_prod, preco_prod, qtd_prod FROM produtos
INNER JOIN lojas ON produtos.loj_prod = lojas.loj_prod
INNER JOIN estoque ON produtos.cod_prod = estoque.cod_prod
WHERE loj_prod = 1

--10) 
SELECT cod_prod, loj_prod, desc_prod, dt_inclu_prod, preco_prod FROM produtos
RIGHT JOIN estoque ON produtos.cod_prod = estoque.cod_prod

--11)
SELECT cod_prod, loj_prod, qtd_prod FROM estoque
RIGHT JOIN produtos ON estoque.cod_prod = estoque.cod_prod