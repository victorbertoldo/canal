{%- macro coalesce_r_l(tab) -%}
    {%- set columns = adapter.get_columns_in_relation(ref(tab)) -%}
    {%- set fields=[] -%}
    {%- for col in columns -%}
        {%- do fields.append(col.name) -%}
    {%- endfor -%}
    {{ fields }}
{%- endmacro -%}