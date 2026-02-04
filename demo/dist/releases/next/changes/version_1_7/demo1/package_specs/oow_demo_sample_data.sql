-- liquibase formatted sql
-- changeset DEMO1:1770123140921 stripComments:false  logicalFilePath:version_1_7/demo1/package_specs/oow_demo_sample_data.sql
-- sqlcl_snapshot demo/src/database/demo1/package_specs/oow_demo_sample_data.sql:null:d4a9216a3c7de637a3b9961c6121be8b08bdb9b0:create

create or replace package demo1.oow_demo_sample_data as
    procedure load;

    procedure remove;

    function is_loaded return boolean;

    procedure load_regions;

    procedure load_items;

    procedure load_stores;

    procedure load_store_products;

end oow_demo_sample_data;
/

