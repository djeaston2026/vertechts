create or replace editionable trigger demo1.biu_oow_demo_sales_hist before
    insert or update on demo1.oow_demo_sales_history
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
        :new.created_on := localtimestamp;
        if :new.sales_data is null then
            :new.sales_data := '{"ID" :"'
                               || :new.id
                               || '" ,'
                               || '"STORE_ID":'
                               || :new.store_id
                               || ','
                               || '"PRODUCT_ID":'
                               || :new.product_id
                               || ','
                               || '"DATE_OF_SALE":"'
                               || to_char(:new.date_of_sale,
                                          'YYYY-MM-DD"T"HH24:MI:SS".OZ"')
                               || '",'
                               || '"QUANTITY":'
                               || :new.quantity
                               || ','
                               || '"TRANSACTION_ID":"'
                               || :new.transaction_id
                               || '",'
                               || '"ITEM_PRICE":'
                               || :new.item_price
                               || ','
                               || '"CREATED_ON":"'
                               || to_char(:new.date_of_sale,
                                          'YYYY-MM-DD"T"HH24:MI:SS".OZ"')
                               || '"'
                               || '}';

        end if;

    end if;

end;
/

alter trigger demo1.biu_oow_demo_sales_hist enable;


-- sqlcl_snapshot {"hash":"f09f60a1ddbe1421b0ed835f2f5efad231489003","type":"TRIGGER","name":"BIU_OOW_DEMO_SALES_HIST","schemaName":"DEMO1","sxml":""}