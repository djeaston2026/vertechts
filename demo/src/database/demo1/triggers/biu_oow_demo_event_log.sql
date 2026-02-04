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


-- sqlcl_snapshot {"hash":"375586561f8ab2671699737e1a07ea954a0af9a8","type":"TRIGGER","name":"BIU_OOW_DEMO_EVENT_LOG","schemaName":"DEMO1","sxml":""}