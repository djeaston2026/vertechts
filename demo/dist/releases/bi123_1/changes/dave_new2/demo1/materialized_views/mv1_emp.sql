-- liquibase formatted sql
-- changeset DEMO1:1770897919064 stripComments:false  logicalFilePath:dave_new2/demo1/materialized_views/mv1_emp.sql
-- sqlcl_snapshot demo/src/database/demo1/materialized_views/mv1_emp.sql:null:697cc093f77f1efbbc58f544413b35ead5f62ef3:create

create materialized view demo1.mv1_emp (
    empno,
    ename,
    job
) as
    select
        empno,
        ename,
        job
    from
        emp;

