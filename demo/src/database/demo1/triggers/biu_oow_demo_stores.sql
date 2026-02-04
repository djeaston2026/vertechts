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


-- sqlcl_snapshot {"hash":"c7c58f91b2382a848a1cd964b298000cda4b5d77","type":"TRIGGER","name":"BIU_OOW_DEMO_STORES","schemaName":"DEMO1","sxml":""}