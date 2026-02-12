-- liquibase formatted sql
-- changeset DEMO1:1770123146329 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/biu_oow_demo_store_products.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/biu_oow_demo_store_products.sql:null:6ab41e5c61aca8de1261c25778dc3c6e3ddc999c:create

create or replace editionable trigger demo1.biu_oow_demo_store_products before
    insert or update on demo1.oow_demo_store_products
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

alter trigger demo1.biu_oow_demo_store_products enable;

