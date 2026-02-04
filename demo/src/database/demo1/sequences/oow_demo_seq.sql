create sequence demo1.oow_demo_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;


-- sqlcl_snapshot {"hash":"8ef43481e59f37ef664c6de26505bb25579993f0","type":"SEQUENCE","name":"OOW_DEMO_SEQ","schemaName":"DEMO1","sxml":"\n  <SEQUENCE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>OOW_DEMO_SEQ</NAME>\n   \n   <INCREMENT>1</INCREMENT>\n   <MINVALUE>1</MINVALUE>\n   <MAXVALUE>9999999999999999999999999999</MAXVALUE>\n   <CACHE>20</CACHE>\n   <SCALE>NOSCALE</SCALE>\n</SEQUENCE>"}