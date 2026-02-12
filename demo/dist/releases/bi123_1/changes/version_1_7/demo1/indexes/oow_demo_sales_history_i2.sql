-- liquibase formatted sql
-- changeset DEMO1:1770123134449 stripComments:false  logicalFilePath:version_1_7/demo1/indexes/oow_demo_sales_history_i2.sql
-- sqlcl_snapshot demo/src/database/demo1/indexes/oow_demo_sales_history_i2.sql:null:65b5cee411b655a602a9ecf86b89810822d30cd0:create

create index demo1.oow_demo_sales_history_i2 on
    demo1.oow_demo_sales_history (
        product_id
    );

