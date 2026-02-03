create or replace package demo1.oow_demo_event_pkg as
    procedure log (
        p_event_name    in varchar2,
        p_event_type    in varchar2 default null,
        p_event_detail  in varchar2 default null,
        p_error_message in varchar2 default null,
        p_error_trace   in varchar2 default null,
        p_a1            in varchar2 default null,
        p_a2            in varchar2 default null
    );

end;
/


-- sqlcl_snapshot {"hash":"5a4ac9d563bb960071bc4b42686dd9c90cc517f8","type":"PACKAGE_SPEC","name":"OOW_DEMO_EVENT_PKG","schemaName":"DEMO1","sxml":""}