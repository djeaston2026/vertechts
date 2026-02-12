-- liquibase formatted sql
-- changeset DEMO1:1770123146564 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/biu_oow_demo_stores.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/biu_oow_demo_stores.sql:null:b12a04c02def6fc93ddc7244b53590e1f5732cce:create

create or replace editionable trigger demo1.biu_oow_demo_stores before
    insert or update on demo1.oow_demo_stores
    for each row
begin
    if :new.id is null then
        select
            to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
        into :new.id
        from
            dual;

    end if;

    if inserting then
        :new.row_version_number := 1;
    elsif updating then
        :new.row_version_number := nvl(:old.row_version_number,
                                       1) + 1;
    end if;

    if :new.n1 is null then
        :new.n1 := round(dbms_random.value(1, 1000000));
    end if;

    if :new.n2 is null then
        :new.n2 := round(dbms_random.value(1, 1000000));
    end if;

    if :new.n3 is null then
        :new.n3 := round(dbms_random.value(1, 1000000));
    end if;

    if :new.n4 is null then
        :new.n4 := round(dbms_random.value(1, 1000000));
    end if;

end;
/

alter trigger demo1.biu_oow_demo_stores enable;

