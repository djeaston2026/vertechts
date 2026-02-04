create or replace package demo1.oow_demo_timing as
    g_timestamp timestamp;
    procedure start_timer;

    function get_elap return number;

end;
/


-- sqlcl_snapshot {"hash":"73ec7ad7f63d6d7e097b3505f260300667d25ece","type":"PACKAGE_SPEC","name":"OOW_DEMO_TIMING","schemaName":"DEMO1","sxml":""}