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


-- sqlcl_snapshot {"hash":"d4a9216a3c7de637a3b9961c6121be8b08bdb9b0","type":"PACKAGE_SPEC","name":"OOW_DEMO_SAMPLE_DATA","schemaName":"DEMO1","sxml":""}