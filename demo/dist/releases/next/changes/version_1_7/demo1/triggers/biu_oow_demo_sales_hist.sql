-- liquibase formatted sql
-- changeset DEMO1:1770123146131 stripComments:false  logicalFilePath:version_1_7/demo1/triggers/biu_oow_demo_sales_hist.sql
-- sqlcl_snapshot demo/src/database/demo1/triggers/biu_oow_demo_sales_hist.sql:null:93c0e9104e228046b49edfe729d1fcecbafa28ec:create

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

