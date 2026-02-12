-- liquibase formatted sql
-- changeset DEMO1:1770123141210 stripComments:false  logicalFilePath:version_1_7/demo1/package_specs/pk_store_data.sql
-- sqlcl_snapshot demo/src/database/demo1/package_specs/pk_store_data.sql:null:b8ba06a10406d1f29ef56a275de61da4c713e542:create

create or replace package demo1.pk_store_data as
    procedure p1 (
        name varchar2
    );

end pk_store_data;
/

