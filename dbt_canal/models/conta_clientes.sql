with
conta as (
    select
        *
    from {{ source('legado','legado_conta') }}
),
cliente as (
    select
        {{ exclude_col('cliente', 'address') }}
    from {{ source('legado','legado_cliente') }}
)
select
    conta.*,
    cliente.*
from conta
left join cliente
on conta.id_cliente = cliente.id_cliente
