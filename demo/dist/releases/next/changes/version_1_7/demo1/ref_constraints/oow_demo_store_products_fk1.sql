-- liquibase formatted sql
-- changeset DEMO1:1770123141822 stripComments:false  logicalFilePath:version_1_7/demo1/ref_constraints/oow_demo_store_products_fk1.sql
-- sqlcl_snapshot demo/src/database/demo1/ref_constraints/oow_demo_store_products_fk1.sql:null:d5267417074d8f6f63c793336b4b2d5ec6d9e2f3:create

alter table demo1.oow_demo_store_products
    add constraint oow_demo_store_products_fk1
        foreign key ( item_id )
            references demo1.oow_demo_items ( id )
        enable;

