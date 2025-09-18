-- Consultas SQL de exemplo

-- Produtos disponíveis
SELECT product_id, sku, name, price FROM product;

-- Pedidos por cliente (HAVING)
SELECT a.account_id, a.email, COUNT(o.order_id) AS num_orders
FROM account a
LEFT JOIN orders o ON o.account_id = a.account_id
GROUP BY a.account_id, a.email
HAVING COUNT(o.order_id) > 1;
