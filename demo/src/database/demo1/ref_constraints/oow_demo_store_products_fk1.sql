alter table demo1.oow_demo_store_products
    add constraint oow_demo_store_products_fk1
        foreign key ( item_id )
            references demo1.oow_demo_items ( id )
        enable;


-- sqlcl_snapshot {"hash":"d5267417074d8f6f63c793336b4b2d5ec6d9e2f3","type":"REF_CONSTRAINT","name":"OOW_DEMO_STORE_PRODUCTS_FK1","schemaName":"DEMO1","sxml":""}