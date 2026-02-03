-- liquibase formatted sql
-- changeset DEMO1:1770123135060 stripComments:false  logicalFilePath:version_1_7/demo1/object_grants/object_grants_as_grantor.demo1.table.stores.sql
-- sqlcl_snapshot demo/src/database/demo1/object_grants/object_grants_as_grantor.demo1.table.stores.sql:null:c4a5a4b5cc8683947dbe2cfde008a1f006f1b81c:create

grant select on demo1.stores to dave;

