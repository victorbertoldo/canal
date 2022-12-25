-- sequence
insert into purchase_seq values
	(
        nextval('seq_purchase_id'),
	    'jao',
        'BRL',
        1000
    );

-- serial
insert into purchase_serial(user_name, currency, amount) values    
    (
        'elton',
        'BRL',
        4325
    );
    
-- SELECT currval(pg_get_serial_sequence('purchase_serial','id')  ) 

-- identify
insert into purchase_identify(user_name, currency, amount) values    
    (
        'elena',
        'BRL',
        5436
    );


/* 
Outros statements
*/

truncate table purchase_identify ;
truncate table purchase_seq ;
truncate table purchase_serial ;

ALTER SEQUENCE purchase_seq RESTART; 

SELECT currval(pg_get_serial_sequence('purchase_serial','id')  ) 