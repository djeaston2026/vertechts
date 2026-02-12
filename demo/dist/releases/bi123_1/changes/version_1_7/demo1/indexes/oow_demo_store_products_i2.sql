-- liquibase formatted sql
-- changeset DEMO1:1770123134859 stripComments:false  logicalFilePath:version_1_7/demo1/indexes/oow_demo_store_products_i2.sql
-- sqlcl_snapshot demo/src/database/demo1/indexes/oow_demo_store_products_i2.sql:null:c153038c13de06b90a0cffd161919191a17461eb:create

create index demo1.oow_demo_store_products_i2 on
    demo1.oow_demo_store_products (
        item_id
    );

