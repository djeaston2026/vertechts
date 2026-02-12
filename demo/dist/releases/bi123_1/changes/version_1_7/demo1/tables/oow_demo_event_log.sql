-- liquibase formatted sql
-- changeset DEMO1:1770123142463 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_event_log.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_event_log.sql:null:c60ad2c063379c4ef87dbfd02d252146058c2856:create

create table demo1.oow_demo_event_log (
    id            number,
    log_seq       number not null enable,
    event_type    varchar2(255 byte) not null enable,
    event_name    varchar2(255 byte),
    event_detail  varchar2(4000 byte),
    error_message varchar2(4000 byte),
    error_trace   clob,
    created_by    varchar2(255 byte),
    created_on    timestamp(6) with local time zone,
    a1            varchar2(4000 byte),
    a2            varchar2(4000 byte)
);

alter table demo1.oow_demo_event_log
    add constraint oow_demo_event_event_type_ck
        check ( event_type in ( 'MESSAGE', 'WARNING', 'ERROR' ) ) enable;

alter table demo1.oow_demo_event_log
    add constraint oow_demo_event_log_pk primary key ( id )
        using index enable;

