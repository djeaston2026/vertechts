create index demo1.oow_demo_store_products_i1 on
    demo1.oow_demo_store_products (
        store_id
    );


-- sqlcl_snapshot {"hash":"0710a63cf7013c3cdc73ce1e8716de3014807263","type":"INDEX","name":"OOW_DEMO_STORE_PRODUCTS_I1","schemaName":"DEMO1","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>OOW_DEMO_STORE_PRODUCTS_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO1</SCHEMA>\n         <NAME>OOW_DEMO_STORE_PRODUCTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>STORE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}