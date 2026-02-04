-- liquibase formatted sql
-- changeset DEMO1:1770123141617 stripComments:false  logicalFilePath:version_1_7/demo1/ref_constraints/oow_demo_sales_history_fk2.sql
-- sqlcl_snapshot demo/src/database/demo1/ref_constraints/oow_demo_sales_history_fk2.sql:null:dc7691c29c740af188e5de77f6a750919a1d069c:create

alter table demo1.oow_demo_sales_history
    add constraint oow_demo_sales_history_fk2
        foreign key ( product_id )
            references demo1.oow_demo_items ( id )
        enable;

