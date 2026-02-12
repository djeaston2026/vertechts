-- liquibase formatted sql
-- changeset DEMO1:1770123146774 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/oow_demo_preferences_biu.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/oow_demo_preferences_biu.sql:null:ed6b918faee7d4e378cf6b7e539f818d1c3359e6:create

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

