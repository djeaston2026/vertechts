-- liquibase formatted sql
-- changeset DEMO1:1770123145189 stripComments:false  logicalFilePath:version_1_7/demo1/tables/stores.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/stores.sql:null:36f55211530a1319f434f07bed2a7f9618e89f34:create

create table demo1.stores (
    id   number,
    name varchar2(50 byte),
    city varchar2(100 byte)
);

