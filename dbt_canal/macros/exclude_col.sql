{%- macro exclude_col(tab, x_col) -%}
    {%- set query -%}
        select 
            *
        from {{ref(tab)}}
    {%- endset -%}
    {%- set results = run_query(query) -%}

    {%- if execute -%}
        {%- set cols = results.exclude(x_col) -%}
        {%- for col in cols.column_names %}
            {{ col }}{%- if not loop.last -%},{%- endif -%}
        {%- endfor %}
    {%- endif -%}
{%- endmacro -%}