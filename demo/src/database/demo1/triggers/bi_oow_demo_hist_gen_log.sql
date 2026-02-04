create or replace editionable trigger demo1.bi_oow_demo_hist_gen_log before
    insert or update on demo1.oow_demo_hist_gen_log
    for each row
declare
    l_cnt number := null;
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    :new.owner := nvl(apex_application.g_user, user);
    :new.app_session_id := v('APP_SESSION');

    --if inserting then
    --    select count(*) into l_cnt from oow_demo_hist_gen_log where start_time is not null and end_time is null;
    --    if l_cnt > 0 then
    --        raise_application_error(-20222,'Sales history generation already in progress.');
    --    end if;
    --end if;
end;
/

alter trigger demo1.bi_oow_demo_hist_gen_log enable;


-- sqlcl_snapshot {"hash":"aabc5cc0c10db660bb1475e25de691e64cc646e2","type":"TRIGGER","name":"BI_OOW_DEMO_HIST_GEN_LOG","schemaName":"DEMO1","sxml":""}