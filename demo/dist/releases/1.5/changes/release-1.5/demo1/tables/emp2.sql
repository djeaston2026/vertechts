-- liquibase formatted sql
-- changeset DEMO1:1769012079004 stripComments:false  logicalFilePath:release-1.5/demo1/tables/emp2.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/emp2.sql:null:ace82770ddf84eb86602f2409d8ee953c488fa30:create

create table demo1.emp2 (
    id        number,
    firstname varchar2(10 byte),
    lastname  varchar2(100 byte)
);

