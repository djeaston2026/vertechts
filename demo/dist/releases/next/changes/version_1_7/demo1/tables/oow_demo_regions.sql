-- liquibase formatted sql
-- changeset DEMO1:1770123144293 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_regions.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_regions.sql:null:e3e882d92523456bf95b68575a28f440aa5420b9:create

create table demo1.oow_demo_regions (
    id                 number,
    row_version_number number,
    region_name        varchar2(255 byte),
    region_zoom        varchar2(50 byte),
    region_lat         number(9, 6),
    region_lng         number(9, 6),
    region_color       varchar2(7 byte),
    is_default_yn      varchar2(1 byte)
);

alter table demo1.oow_demo_regions
    add constraint oow_demo_regions_pk primary key ( id )
        using index enable;

