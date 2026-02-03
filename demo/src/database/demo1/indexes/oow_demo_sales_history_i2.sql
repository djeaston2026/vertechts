create index demo1.oow_demo_sales_history_i2 on
    demo1.oow_demo_sales_history (
        product_id
    );


-- sqlcl_snapshot {"hash":"65b5cee411b655a602a9ecf86b89810822d30cd0","type":"INDEX","name":"OOW_DEMO_SALES_HISTORY_I2","schemaName":"DEMO1","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>OOW_DEMO_SALES_HISTORY_I2</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO1</SCHEMA>\n         <NAME>OOW_DEMO_SALES_HISTORY</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}