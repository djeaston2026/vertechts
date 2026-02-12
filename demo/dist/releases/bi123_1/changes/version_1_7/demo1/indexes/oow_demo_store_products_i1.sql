-- liquibase formatted sql
-- changeset DEMO1:1770123134654 stripComments:false  logicalFilePath:version_1_7/demo1/indexes/oow_demo_store_products_i1.sql
-- sqlcl_snapshot demo/src/database/demo1/indexes/oow_demo_store_products_i1.sql:null:0710a63cf7013c3cdc73ce1e8716de3014807263:create

create index demo1.oow_demo_store_products_i1 on
    demo1.oow_demo_store_products (
        store_id
    );

