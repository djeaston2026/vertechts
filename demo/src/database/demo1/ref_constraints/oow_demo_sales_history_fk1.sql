alter table demo1.oow_demo_sales_history
    add constraint oow_demo_sales_history_fk1
        foreign key ( store_id )
            references demo1.oow_demo_stores ( id )
        enable;


-- sqlcl_snapshot {"hash":"92be1643c45cc4e29299c9d32ab11857980b1548","type":"REF_CONSTRAINT","name":"OOW_DEMO_SALES_HISTORY_FK1","schemaName":"DEMO1","sxml":""}