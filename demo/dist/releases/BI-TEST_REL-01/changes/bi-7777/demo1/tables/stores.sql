-- liquibase formatted sql
-- changeset DEMO1:1773310735190 stripComments:false  logicalFilePath:bi-7777/demo1/tables/stores.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/stores.sql:36f55211530a1319f434f07bed2a7f9618e89f34:97ba4fbb6929c478f1ea168ed6afb5cb37b1da3c:alter

alter table demo1.stores add (
    country varchar2(100)
)
/

