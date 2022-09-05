create database dados_fake;

create table public.legado_cliente (
    id_cliente INT PRIMARY KEY,
    nome varchar,
    email varchar,
    genero varchar,
    state varchar,
    city varchar,
    address varchar
);
create or replace table public.legado_conta (
    id_conta INT PRIMARY KEY,
    id_cliente INT,
    status varchar,
    card varchar,
    produto varchar,
constraint fk_id_cliente foreign key (id_cliente)
references public.legado_cliente (id_cliente)
);
create table public.legado_compra (
    id_compra INT PRIMARY KEY,
    data_compra DATE,
    id_conta INT,
    status_compra varchar,
    valor_compra varchar,
    classificacao_compra varchar,
constraint fk_id_conta foreign key (id_conta)
references public.legado_conta (id_conta)
);

























