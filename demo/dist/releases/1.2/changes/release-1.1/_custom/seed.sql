-- liquibase formatted sql
-- changeset  SqlCl:1768896849815 stripComments:false logicalFilePath:release-1.1/_custom/seed.sql
-- sqlcl_snapshot dist/releases/next/changes/release-1.1/_custom/seed.sql:null:null:custom



begin
insert into demo1.dept values(75, 'TRAINING', 'NEW YORK');
commit;
end;