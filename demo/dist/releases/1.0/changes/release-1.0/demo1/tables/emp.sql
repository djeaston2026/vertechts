-- liquibase formatted sql
-- changeset DEMO1:1768836549401 stripComments:false  logicalFilePath:release-1.0/demo1/tables/emp.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/emp.sql:null:532c8abaf41bb59c5e86aa5eaf34b4f08d95383c:create

create table demo1.emp (
    empno    number(4, 0),
    ename    varchar2(10 byte),
    job      varchar2(9 byte),
    mgr      number(4, 0),
    hiredate date,
    sal      number(7, 2),
    comm     number(7, 2),
    deptno   number(2, 0)
);

alter table demo1.emp
    add constraint pk_emp primary key ( empno )
        using index enable;

