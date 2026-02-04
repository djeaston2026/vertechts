-- liquibase formatted sql
-- changeset DEMO1:1770123145911 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/biu_oow_demo_regions.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/biu_oow_demo_regions.sql:null:6fab9cc3719a89ec590e856c799e1ca2f229bb41:create

create or replace editionable trigger demo1.biu_oow_demo_regions before
    insert or update on demo1.oow_demo_regions
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

end;
/

alter trigger demo1.biu_oow_demo_regions enable;

