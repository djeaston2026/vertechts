-- liquibase formatted sql
-- changeset DEMO1:1768836549815 stripComments:false  logicalFilePath:release-1.0/demo1/tables/emp1.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/emp1.sql:null:a437019692ea6f1792f9238237ae57abb593573a:create

create table demo1.emp1 (
    id   number,
    name varchar2(100 byte)
);

