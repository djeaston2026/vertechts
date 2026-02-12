-- liquibase formatted sql
-- changeset DEMO1:1770123144754 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_store_products.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_store_products.sql:null:7f793b29447ffc80e3caaf835540bb2e510a91e3:create

create table demo1.oow_demo_store_products (
    id                 number,
    row_version_number number,
    store_id           number,
    item_id            number,
    sale_start_date    date,
    discount_pct       number,
    sale_end_date      date,
    item_price         number
);

alter table demo1.oow_demo_store_products
    add constraint oow_demo_store_products_pk primary key ( id )
        using index enable;

