create index demo1.oow_demo_sales_history_i1 on
    demo1.oow_demo_sales_history (
        store_id
    );


-- sqlcl_snapshot {"hash":"54c2f876bc4dc4a3639e3790da2e56bac1281314","type":"INDEX","name":"OOW_DEMO_SALES_HISTORY_I1","schemaName":"DEMO1","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>OOW_DEMO_SALES_HISTORY_I1</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO1</SCHEMA>\n         <NAME>OOW_DEMO_SALES_HISTORY</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>STORE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}