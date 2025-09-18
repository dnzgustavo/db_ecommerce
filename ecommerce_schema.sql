-- SCRIPT: ecommerce_schema.sql
-- (conteúdo resumido, ver documento completo)

CREATE SCHEMA IF NOT EXISTS ecommerce;
SET search_path = ecommerce;

CREATE TYPE order_status AS ENUM ('PENDING','CONFIRMED','SHIPPED','DELIVERED','CANCELLED');
CREATE TYPE delivery_status AS ENUM ('PREPARING','IN_TRANSIT','DELIVERED','RETURNED');

-- demais CREATE TABLEs e constraints (vide documento completo)
