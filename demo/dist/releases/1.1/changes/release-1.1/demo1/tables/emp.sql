-- liquibase formatted sql
-- changeset DEMO1:1768841456460 stripComments:false  logicalFilePath:release-1.1/demo1/tables/emp.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/emp.sql:c75bc54bb6b477253c183c55b10501677dd366de:11d3f90f523369aac3a6c67171f12cf677db9302:alter

alter table demo1.emp add (
    email varchar2(100 byte)
);

