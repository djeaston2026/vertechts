-- liquibase formatted sql
-- changeset DEMO1:1768836548556 stripComments:false  logicalFilePath:release-1.0/demo1/ref_constraints/fk_deptno.sql
-- sqlcl_snapshot demo/src/database/demo1/ref_constraints/fk_deptno.sql:null:59562253f19814f108e921ec20ec44e1734d25f6:create

alter table demo1.emp
    add constraint fk_deptno
        foreign key ( deptno )
            references demo1.dept ( deptno )
        enable;

