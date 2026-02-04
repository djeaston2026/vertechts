alter table demo1.oow_demo_sales_history
    add constraint oow_demo_sales_history_fk2
        foreign key ( product_id )
            references demo1.oow_demo_items ( id )
        enable;


-- sqlcl_snapshot {"hash":"dc7691c29c740af188e5de77f6a750919a1d069c","type":"REF_CONSTRAINT","name":"OOW_DEMO_SALES_HISTORY_FK2","schemaName":"DEMO1","sxml":""}