-- liquibase formatted sql
-- changeset DEMO1:1770123144503 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_sales_history.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_sales_history.sql:null:a7d52d07620d3d94bf6e20648a5e12ef2c0585a6:create

create table demo1.oow_demo_sales_history (
    id             number,
    store_id       number not null enable,
    product_id     number not null enable,
    date_of_sale   timestamp(6) with local time zone,
    quantity       number default 1,
    transaction_id varchar2(30 byte),
    item_price     number,
    created_on     timestamp(6) with local time zone,
    sales_data     varchar2(4000 byte)
);

alter table demo1.oow_demo_sales_history
    add constraint oow_demo_sales_history_pk primary key ( id )
        using index enable;

