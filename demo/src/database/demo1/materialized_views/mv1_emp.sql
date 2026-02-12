create materialized view demo1.mv1_emp (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno,
    email,
    teest2
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
        emp.empno    empno,
        emp.ename    ename,
        emp.job      job,
        emp.mgr      mgr,
        emp.hiredate hiredate,
        emp.sal      sal,
        emp.comm     comm,
        emp.deptno   deptno,
        emp.email    email,
        emp.teest2   teest2
    from
        emp emp;


-- sqlcl_snapshot {"hash":"d7db376ca2877bc13f24a2632684ae40c729a609","type":"MATERIALIZED_VIEW","name":"MV1_EMP","schemaName":"DEMO1","sxml":"\n  <MATERIALIZED_VIEW xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>DEMO1</SCHEMA>\n   <NAME>MV1_EMP</NAME>\n   <COL_LIST>\n      <COL_LIST_ITEM>\n         <NAME>EMPNO</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>ENAME</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>JOB</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>MGR</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>HIREDATE</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>SAL</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>COMM</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>DEPTNO</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>EMAIL</NAME>\n         \n      </COL_LIST_ITEM>\n      <COL_LIST_ITEM>\n         <NAME>TEEST2</NAME>\n         \n      </COL_LIST_ITEM>\n   </COL_LIST>\n   <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n   <PHYSICAL_PROPERTIES>\n      <HEAP_TABLE></HEAP_TABLE>\n   </PHYSICAL_PROPERTIES>\n   <BUILD>IMMEDIATE</BUILD>\n   <REFRESH>\n      <WITH_PRIMARY_KEY></WITH_PRIMARY_KEY>\n      <LOCAL_ROLLBACK_SEGMENT>\n         <DEFAULT></DEFAULT>\n      </LOCAL_ROLLBACK_SEGMENT>\n      <CONSTRAINTS>ENFORCED</CONSTRAINTS>\n   </REFRESH>\n   \n   \n</MATERIALIZED_VIEW>"}