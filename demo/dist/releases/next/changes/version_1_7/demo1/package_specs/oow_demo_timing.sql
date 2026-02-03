-- liquibase formatted sql
-- changeset DEMO1:1770123141122 stripComments:false  logicalFilePath:version_1_7/demo1/package_specs/oow_demo_timing.sql
-- sqlcl_snapshot demo/src/database/demo1/package_specs/oow_demo_timing.sql:null:73ec7ad7f63d6d7e097b3505f260300667d25ece:create

create or replace package demo1.oow_demo_timing as
    g_timestamp timestamp;
    procedure start_timer;

    function get_elap return number;

end;
/

