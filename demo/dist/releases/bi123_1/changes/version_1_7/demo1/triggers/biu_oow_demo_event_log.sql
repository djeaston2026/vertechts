-- liquibase formatted sql
-- changeset DEMO1:1770123145531 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/biu_oow_demo_event_log.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/biu_oow_demo_event_log.sql:null:9b00ea3ee9539af9c5b4ab50025e80fe27529469:create

create or replace editionable trigger demo1.biu_oow_demo_event_log before
    insert or update on demo1.oow_demo_event_log
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if :new.event_type is null then
        if :new.error_message is not null then
            :new.event_type := 'ERROR';
        else
            :new.event_type := 'MESSAGE';
        end if;

    end if;

    if inserting then
        :new.log_seq := oow_demo_seq.nextval;
        :new.created_on := localtimestamp;
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
    end if;

end;
/

alter trigger demo1.biu_oow_demo_event_log enable;

