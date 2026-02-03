-- liquibase formatted sql
-- changeset DEMO1:1770123140201 stripComments:false  logicalFilePath:version_1_7/demo1/package_bodies/oow_demo_timing.sql
-- sqlcl_snapshot demo/src/database/demo1/package_bodies/oow_demo_timing.sql:null:e345bf2c1accca28a48c1363abc4b653fdad39b1:create

create or replace package body demo1.oow_demo_timing as

    procedure start_timer is
    begin
        g_timestamp := systimestamp;
    end start_timer;

    function get_elap return number is
    begin
        return extract(second from ( systimestamp - g_timestamp ));
    end get_elap;

end oow_demo_timing;
/

