create or replace editionable trigger demo1.oow_demo_preferences_biu before
    insert or update on demo1.oow_demo_preferences
    for each row
begin
    if
        inserting
        and :new.id is null
    then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.created_by := nvl(
            v('APP_USER'),
            user
        );
        :new.created_on := localtimestamp;
    end if;

    if updating then
        :new.updated_by := nvl(
            v('APP_USER'),
            user
        );
        :new.updated_on := localtimestamp;
    end if;

    :new.preference_name := upper(:new.preference_name);
end;
/

alter trigger demo1.oow_demo_preferences_biu enable;


-- sqlcl_snapshot {"hash":"b3f01c825b145cf4f0eaae337302251685ff49f1","type":"TRIGGER","name":"OOW_DEMO_PREFERENCES_BIU","schemaName":"DEMO1","sxml":""}