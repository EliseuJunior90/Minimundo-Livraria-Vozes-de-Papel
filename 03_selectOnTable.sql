-- Nome do cliente + livro comprado + Data e Valor
Select
    c.nome AS nome_cliente,
    l.titulo AS titulo_do_livro,
    v.data_venda AS data_da_venda,
    v.valor_total AS valor_final_da_venda

FROM cliente c --do cliente
JOIN venda v    --junta com venda
    ON c.id_cliente = v.id_cliente    --match do id do cliente com o id da venda
JOIN venda_produto vp  -- junta com venda produto
    ON v.id_venda = vp.id_venda --match do id da venda entre as tabelas venda e venda produto
JOIN livro l
    ON vp.id_livro = l.id_livro; --match de venda do livro comtabela do livro
    
-- buscar o livro mais caro do catalogo
select
    l.titulo,
    l.preco_venda,
    a.nome AS nome_autor
FROM
    livro l
JOIN
    autor a ON l.id_autor = a.id_autor
ORDER BY
    l.preco_venda DESC
LIMIT 1;

--lista nome dos clientes que compraram antes da data especifica
select distinct
    c.nome AS Nome_Cliente
FROM
    cliente c
JOIN
    venda v ON c.id_cliente = v.id_cliente
WHERE
    v.data_venda < '2021-12-01';
