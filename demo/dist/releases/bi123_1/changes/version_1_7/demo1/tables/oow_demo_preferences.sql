-- liquibase formatted sql
-- changeset DEMO1:1770123143792 stripComments:false  logicalFilePath:version_1_7/demo1/tables/oow_demo_preferences.sql
-- sqlcl_snapshot demo/src/database/demo1/tables/oow_demo_preferences.sql:null:d6cb2998292e86977fa0caa2f4585e4c0fe5a20f:create

create table demo1.oow_demo_preferences (
    id               number not null enable,
    preference_name  varchar2(255 byte) not null enable,
    preference_value varchar2(255 byte) not null enable,
    created_by       varchar2(255 byte) not null enable,
    created_on       timestamp(6) with local time zone,
    updated_by       varchar2(255 byte),
    updated_on       timestamp(6) with local time zone
);

alter table demo1.oow_demo_preferences
    add constraint oow_demo_preferences_pk primary key ( id )
        using index enable;

alter table demo1.oow_demo_preferences
    add constraint oow_demo_prefs_prefname_ck check ( upper(preference_name) = preference_name ) enable;

