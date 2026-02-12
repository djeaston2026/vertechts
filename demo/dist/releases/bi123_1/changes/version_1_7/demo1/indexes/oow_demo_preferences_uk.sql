-- liquibase formatted sql
-- changeset DEMO1:1770123134041 stripComments:false  logicalFilePath:version_1_7/demo1/indexes/oow_demo_preferences_uk.sql
-- sqlcl_snapshot demo/src/database/demo1/indexes/oow_demo_preferences_uk.sql:null:69881c351c22fb2a7e13179296cade5bb389c92c:create

create unique index demo1.oow_demo_preferences_uk on
    demo1.oow_demo_preferences (
        preference_name
    );

