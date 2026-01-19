-- liquibase formatted sql
-- changeset DEMO1:1768836548060 stripComments:false  logicalFilePath:release-1.0/demo1/package_specs/pk1.sql
-- sqlcl_snapshot demo/src/database/demo1/package_specs/pk1.sql:null:deed2fe7e20333620c49a7c6f1c382936c4ab684:create

create or replace package demo1.pk1 as
    procedure p1;

    function f1 return number;

end;
/

