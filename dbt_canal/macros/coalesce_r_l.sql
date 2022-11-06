{%- macro coalesce_r_l(tab1, tab2) -%}
    {%- set columns_1 = adapter.get_columns_in_relation(ref(tab1)) -%}
    {%- set fields_1=[] -%}
    {%- for col in columns_1 -%}
        {%- do fields_1.append(col.name) -%}
    {%- endfor -%}

    {%- set columns_1 = adapter.get_columns_in_relation(ref(tab2)) -%}
    {%- set fields_2=[] -%}
    {%- for col in columns_1 -%}
        {%- do fields_2.append(col.name) -%}
    {%- endfor -%}

    {%- for i in fields_1 -%}
        {%- if i in fields_2 -%}
            coalesce(a.{{ i }}, b.{{ i }}) as {{ i }}{%- if not loop.last -%},{%- endif -%}
        {%- else -%}
            a.{{ i }}{%- if not loop.last -%},{%- endif -%}
        {%- endif -%}
        {{ '\n' }}

    {%- endfor -%}
   
{%- endmacro -%}