create materialized view demo1.mv1_emp (
    empno,
    ename,
    job
) build immediate using index
    refresh force
    on demand
    with primary key
    using enforced constraints
    disable on query computation
    disable query rewrite
    disable concurrent refresh
as
    select
        empno,
        ename,
        job
    from
        emp;


-- sqlcl_snapshot {"hash":"697cc093f77f1efbbc58f544413b35ead5f62ef3","type":"MATERIALIZED_VIEW","name":"MV1_EMP","schemaName":"DEMO1","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>MV1_EMP</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>EMPNO</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ENAME</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>JOB</NAME>\n         \n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <WITH_PRIMARY_KEY></WITH_PRIMARY_KEY>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n   \n</MATERIALIZED_VIEW>"}