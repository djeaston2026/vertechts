-- liquibase formatted sql
-- changeset DEMO1:1770123140396 stripComments:false  logicalFilePath:version_1_7/demo1/package_bodies/pk_store_data.sql
-- sqlcl_snapshot demo/src/database/demo1/package_bodies/pk_store_data.sql:null:bb69db80b8df657fcc5defc4f0fb77b72ccc7238:create

create or replace package body demo1.pk_store_data as
    procedure p1 (
        name varchar2
    ) as
    begin
        null;
    end;

end;
/

