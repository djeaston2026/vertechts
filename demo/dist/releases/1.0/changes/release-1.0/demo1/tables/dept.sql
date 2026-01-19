-- liquibase formatted sql
-- changeset DEMO1:1768836548840 stripComments:false  logicalFilePath:release-1.0/demo1/tables/dept.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/dept.sql:null:44d5ece02a440d2aa2b25cc3d63da03c761cd607:create

create table demo1.dept (
    deptno number(2, 0),
    dname  varchar2(14 byte),
    loc    varchar2(13 byte)
);

alter table demo1.dept
    add constraint pk_dept primary key ( deptno )
        using index enable;

