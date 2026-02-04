create index demo1.oow_demo_store_products_i2 on
    demo1.oow_demo_store_products (
        item_id
    );


-- sqlcl_snapshot {"hash":"c153038c13de06b90a0cffd161919191a17461eb","type":"INDEX","name":"OOW_DEMO_STORE_PRODUCTS_I2","schemaName":"DEMO1","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>OOW_DEMO_STORE_PRODUCTS_I2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO1</SCHEMA>\n         <NAME>OOW_DEMO_STORE_PRODUCTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ITEM_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}