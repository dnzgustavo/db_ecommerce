-- Inserts de exemplo
INSERT INTO account(email, password_hash, cpf) VALUES
('cliente1@example.com','h1','111.111.111-11');

INSERT INTO supplier(name, contact_email, phone) VALUES
('Fornecedor A','fornecedorA@ex.com','+55 11 99999-0001');

INSERT INTO product(supplier_id, sku, name, price) VALUES
(1,'SKU-100','Camiseta Algodão',49.90);
