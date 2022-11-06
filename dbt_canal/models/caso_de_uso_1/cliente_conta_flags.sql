select
    {{ coalesce_r_l('cliente_flags', 'conta_flags') }}
from {{ ref('cliente_flags') }} a
left join {{ ref('conta_flags') }} b
on a.id_cliente = b.id_cliente