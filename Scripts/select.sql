-- Listar os produtos mais vendidos.

select * from produtos;

SELECT 
    p.id_produto,
    p.nome_produto,
    SUM(ip.quantidade) AS total_vendido
FROM 
    itens_pedido ip
JOIN 
    produtos p ON ip.fk_produto = p.id_produto
GROUP BY 
    p.id_produto, p.nome_produto
ORDER BY 
    total_vendido DESC;

-- Listar os clientes que mais compraram no último mês.

SELECT 
    u.id_usuario,
    u.nome_usuario,
    COUNT(p.id_pedido) AS total_pedidos,
    SUM(p.total) AS total_gasto
FROM 
    pedidos p
JOIN 
    usuarios u ON p.fk_usuario = u.id_usuario
WHERE 
    p.data_pedido >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
GROUP BY 
    u.id_usuario, u.nome_usuario
ORDER BY total_gasto DESC;

-- Verificar o estoque baixo de produtos.

SELECT id_produto, nome_produto, quantidade_estoque FROM produtos ORDER BY quantidade_estoque ASC;


-- Consultar o faturamento por período.

SELECT SUM(total) AS faturamento_total FROM pedidos WHERE  data_pedido BETWEEN '2025-04-01' AND '2025-04-03';

-- Obter a média de avaliações de cada produto.

SELECT 
    p.id_produto,
    p.nome_produto,
    AVG(a.nota) AS media_avaliacao,
    COUNT(ip.fk_produto) AS vendas
FROM 
    produtos p
LEFT JOIN 
    avaliacoes a ON p.id_produto = a.fk_produto
LEFT JOIN 
    itens_pedido ip ON p.id_produto = ip.fk_produto
GROUP BY 
    p.id_produto, p.nome_produto
ORDER BY 
    media_avaliacao DESC;