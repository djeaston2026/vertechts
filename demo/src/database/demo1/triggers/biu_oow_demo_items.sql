create or replace editionable trigger demo1.biu_oow_demo_items before
    insert or update on demo1.oow_demo_items
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

alter trigger demo1.biu_oow_demo_items enable;


-- sqlcl_snapshot {"hash":"60001e97ac05da605205a2c9640a7acf9ae7aad2","type":"TRIGGER","name":"BIU_OOW_DEMO_ITEMS","schemaName":"DEMO1","sxml":""}