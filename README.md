# Projeto: Esquema Lógico de Banco de Dados — E-commerce

## 📖 Descrição do Projeto
Este projeto tem como objetivo a modelagem lógica e implementação de um banco de dados
para um **sistema de e-commerce**, incluindo regras de negócio, criação de tabelas,
inserção de dados de teste e consultas SQL.

O desafio segue as orientações do módulo de **modelagem de banco de dados**,
adicionando refinamentos como clientes PF/PJ, múltiplas formas de pagamento e
rastreamento de entregas.

---

## 🗂️ Estrutura do Repositório
- `README.md` → Descrição do projeto, diretrizes e instruções de execução.
- `ecommerce_schema.sql` → Script de criação do esquema (DDL).
- `sample_data.sql` → Dados de exemplo para testes (INSERTs).
- `queries.sql` → Consultas SQL para responder perguntas de negócio.

---

## 📋 Regras de Negócio Modeladas
- **Cliente (account)** pode ser Pessoa Física (PF, com CPF) ou Pessoa Jurídica (PJ, com CNPJ).  
  ⚠️ Constraint garante que só **um** dos campos pode estar preenchido.

- **Pagamento**: uma conta pode ter várias formas de pagamento cadastradas.
- **Entrega**: cada pedido possui **status** e **código de rastreio**.

- **Fornecedor e Vendedor**: podem estar vinculados a uma conta, permitindo que um mesmo usuário atue como ambos.

---

## 🛠️ Tecnologias Utilizadas
- **PostgreSQL** (dialeto SQL usado no script).
- **Tipos ENUM** para status de pedidos e entregas.
- **JSONB** para armazenar detalhes flexíveis de métodos de pagamento.

---

## ▶️ Como Executar
1. Crie o banco e aplique o esquema:
   ```bash
   psql -U usuario -d suabase -f ecommerce_schema.sql
   ```

2. Popule com os dados de exemplo:
   ```bash
   psql -U usuario -d suabase -f sample_data.sql
   ```

3. Execute consultas SQL de exemplo:
   ```bash
   psql -U usuario -d suabase -f queries.sql
   ```

---

## 🔍 Exemplos de Consultas Implementadas
- Quantos pedidos foram feitos por cada cliente?
- Algum vendedor também é fornecedor?
- Relação de produtos, fornecedores e estoques.
- Relação de nomes dos fornecedores e nomes dos produtos.
- Clientes que realizaram mais de 1 pedido.

---

## 🚀 Próximos Passos (sugestões)
- Criar migrations com ferramentas como Flyway ou Alembic.
- Gerar diagrama ER visual (dbdiagram.io, draw.io).
- Implementar triggers ou views para facilitar relatórios.

---

✍️ Autor: *Desafio E-commerce - Bootcamp de Banco de Dados*

