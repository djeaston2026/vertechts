-- liquibase formatted sql
-- changeset DEMO1:1770123143375 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_items.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_items.sql:null:2145684c153791ad10fe989b4cb3db30092cde52:create

create table demo1.oow_demo_items (
    id                 number,
    row_version_number number,
    item_type          varchar2(255 byte) not null enable,
    item_name          varchar2(60 byte) not null enable,
    item_desc          varchar2(255 byte),
    msrp               number default 1 not null enable
);

alter table demo1.oow_demo_items
    add constraint oow_demo_items_pk primary key ( id )
        using index enable;

