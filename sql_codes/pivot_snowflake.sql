select * from (
    select 
        o.O_ORDERSTATUS, o.O_TOTALPRICE, o.O_ORDERDATE 
    from SNOWFLAKE_SAMPLE_DATA.TPCH_SF10.ORDERS o
    ) t
PIVOT (
	sum(O_TOTALPRICE)
	for O_ORDERSTATUS in (
		'P' , 'F', 'O'
	)
)
as p (Data, Partiu, Ficou, Outros)