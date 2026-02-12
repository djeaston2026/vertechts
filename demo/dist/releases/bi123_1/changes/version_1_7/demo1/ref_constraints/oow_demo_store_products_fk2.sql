-- liquibase formatted sql
-- changeset DEMO1:1770123142026 stripComments:false  logicalFilePath:version_1_7/demo1/ref_constraints/oow_demo_store_products_fk2.sql
-- sqlcl_snapshot demo/src/database/demo1/ref_constraints/oow_demo_store_products_fk2.sql:null:930ed152b889c8ab1de48e6d9cc4b35d5fd7b98a:create

alter table demo1.oow_demo_store_products
    add constraint oow_demo_store_products_fk2
        foreign key ( store_id )
            references demo1.oow_demo_stores ( id )
        enable;

