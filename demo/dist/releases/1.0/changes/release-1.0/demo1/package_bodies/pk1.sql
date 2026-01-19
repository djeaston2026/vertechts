-- liquibase formatted sql
-- changeset DEMO1:1768836547523 stripComments:false  logicalFilePath:release-1.0/demo1/package_bodies/pk1.sql
-- sqlcl_snapshot demo/src/database/demo1/package_bodies/pk1.sql:null:42f95abc3fbecc2a5b536c2e2a359261ba6346c1:create

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

