create unique index demo1.oow_demo_preferences_uk on
    demo1.oow_demo_preferences (
        preference_name
    );


-- sqlcl_snapshot {"hash":"69881c351c22fb2a7e13179296cade5bb389c92c","type":"INDEX","name":"OOW_DEMO_PREFERENCES_UK","schemaName":"DEMO1","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>OOW_DEMO_PREFERENCES_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>DEMO1</SCHEMA>\n         <NAME>OOW_DEMO_PREFERENCES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PREFERENCE_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}