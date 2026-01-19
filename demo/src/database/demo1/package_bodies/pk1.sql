create or replace package body demo1.pk1 as

    procedure p1 as
    begin
        null;
    end;

    function f1 return number as
        v1 number;
    begin
        return v1;
    end;

end;
/


-- sqlcl_snapshot {"hash":"42f95abc3fbecc2a5b536c2e2a359261ba6346c1","type":"PACKAGE_BODY","name":"PK1","schemaName":"DEMO1","sxml":""}