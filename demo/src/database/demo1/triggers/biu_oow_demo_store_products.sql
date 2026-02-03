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


-- sqlcl_snapshot {"hash":"d702ab656cd29b5f747524bd84ff398335ed7778","type":"TRIGGER","name":"BIU_OOW_DEMO_STORE_PRODUCTS","schemaName":"DEMO1","sxml":""}