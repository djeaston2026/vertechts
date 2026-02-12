-- liquibase formatted sql
-- changeset DEMO1:1770123142998 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_hist_gen_log.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_hist_gen_log.sql:null:0b47be0669b57ff3403c3245c77e3efd8418e786:create

create table demo1.oow_demo_hist_gen_log (
    id             number,
    app_session_id varchar2(255 byte),
    owner          varchar2(255 byte) not null enable,
    num_days       number,
    max_orders     number,
    start_time     timestamp(6) with local time zone,
    end_time       timestamp(6) with local time zone,
    row_count      number
);

alter table demo1.oow_demo_hist_gen_log
    add constraint oow_demo_hist_gen_log_pk primary key ( id )
        using index enable;

