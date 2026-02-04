-- liquibase formatted sql
-- changeset DEMO1:1770123145322 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/bi_oow_demo_hist_gen_log.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/bi_oow_demo_hist_gen_log.sql:null:bb895052fca7c2f449b07205c74571c30581e449:create

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

