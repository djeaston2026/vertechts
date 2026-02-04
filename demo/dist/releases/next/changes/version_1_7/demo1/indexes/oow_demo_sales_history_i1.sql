-- liquibase formatted sql
-- changeset DEMO1:1770123134179 stripComments:false  logicalFilePath:version_1_7/demo1/indexes/oow_demo_sales_history_i1.sql
-- sqlcl_snapshot demo/src/database/demo1/indexes/oow_demo_sales_history_i1.sql:null:54c2f876bc4dc4a3639e3790da2e56bac1281314:create

create index demo1.oow_demo_sales_history_i1 on
    demo1.oow_demo_sales_history (
        store_id
    );

