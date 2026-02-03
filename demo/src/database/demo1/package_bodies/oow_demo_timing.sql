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


-- sqlcl_snapshot {"hash":"e345bf2c1accca28a48c1363abc4b653fdad39b1","type":"PACKAGE_BODY","name":"OOW_DEMO_TIMING","schemaName":"DEMO1","sxml":""}