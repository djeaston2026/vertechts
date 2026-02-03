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


-- sqlcl_snapshot {"hash":"1e39fb9089b6821250eeacd483d6ff6d408bf87f","type":"TRIGGER","name":"BIU_OOW_DEMO_REGIONS","schemaName":"DEMO1","sxml":""}