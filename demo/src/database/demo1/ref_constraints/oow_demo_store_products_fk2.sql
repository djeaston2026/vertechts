alter table demo1.oow_demo_store_products
    add constraint oow_demo_store_products_fk2
        foreign key ( store_id )
            references demo1.oow_demo_stores ( id )
        enable;


-- sqlcl_snapshot {"hash":"930ed152b889c8ab1de48e6d9cc4b35d5fd7b98a","type":"REF_CONSTRAINT","name":"OOW_DEMO_STORE_PRODUCTS_FK2","schemaName":"DEMO1","sxml":""}