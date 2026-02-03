-- liquibase formatted sql
-- changeset DEMO1:1770123141411 stripComments:false  logicalFilePath:version_1_7/demo1/ref_constraints/oow_demo_sales_history_fk1.sql
-- sqlcl_snapshot demo/src/database/demo1/ref_constraints/oow_demo_sales_history_fk1.sql:null:92be1643c45cc4e29299c9d32ab11857980b1548:create

alter table demo1.oow_demo_sales_history
    add constraint oow_demo_sales_history_fk1
        foreign key ( store_id )
            references demo1.oow_demo_stores ( id )
        enable;

