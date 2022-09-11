with 
conta as (
    select
        *,
        case when id_cliente % 2 = 1 then 1 else null end as flag_1,
        case when id_cliente % 3 = 1 then 1 else null end as flag_2,
        case when id_cliente % 4 = 1 then 1 else null end as flag_3,
        case when id_cliente % 5 = 1 then 1 else null end as flag_4,
        case when (id_cliente * 2) % 6 = 1 then 1 else null end as flag_5,
        case when (id_cliente * 2) % 7 = 1 then 1 else null end as flag_6,
        case when (id_cliente * 2) % 8 = 1 then 1 else null end as flag_7,
        case when (id_cliente * 2) % 9 = 1 then 1 else null end as flag_8,
        case when (id_cliente * 2) % 10 = 1 then 1 else null end as flag_9,
        case when (id_cliente * 2) % 11 = 1 then 1 else null end as flag_10,
        (random() * 100)::float as value_a,
        null::float as value_b,
        (random() * 100)::float as value_c,
        null::float as value_d,
        (random() * 100)::float as value_e,
        null::float as value_f,
        (random() * 100)::float as value_g,
        null::float as value_h,
        (random() * 100)::float as value_i,
        null::float as value_j
    from {{ source('legado', 'legado_conta') }}
)
select
    *
from conta