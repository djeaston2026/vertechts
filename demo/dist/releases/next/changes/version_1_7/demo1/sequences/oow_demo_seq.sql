-- liquibase formatted sql
-- changeset DEMO1:1770123142246 stripComments:false  logicalFilePath:version_1_7/demo1/sequences/oow_demo_seq.sql
-- sqlcl_snapshot demo/src/database/demo1/sequences/oow_demo_seq.sql:null:8ef43481e59f37ef664c6de26505bb25579993f0:create

create sequence demo1.oow_demo_seq minvalue 1 maxvalue 9999999999999999999999999999 increment by 1 /* start with n */ cache 20 noorder
nocycle nokeep noscale global;

