-- liquibase formatted sql
-- changeset DEMO1:1770123144988 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_stores.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_stores.sql:null:46d7602a6badca444509c6d60afd4f122faf30ef:create

create table demo1.oow_demo_stores (
    id                 number,
    row_version_number number,
    store_name         varchar2(255 byte),
    store_type         varchar2(50 byte),
    store_address      varchar2(255 byte),
    store_open_date    timestamp(6) with local time zone,
    store_city         varchar2(50 byte),
    store_state        varchar2(50 byte),
    region_id          number,
    store_zip          varchar2(12 byte),
    store_lat          number(9, 6),
    store_lng          number(9, 6),
    n1                 number,
    n2                 number,
    n3                 number,
    n4                 number
);

alter table demo1.oow_demo_stores
    add constraint oow_demo_stores_pk primary key ( id )
        using index enable;

