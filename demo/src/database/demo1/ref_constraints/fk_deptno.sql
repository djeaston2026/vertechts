alter table demo1.emp
    add constraint fk_deptno
        foreign key ( deptno )
            references demo1.dept ( deptno )
        enable;


-- sqlcl_snapshot {"hash":"59562253f19814f108e921ec20ec44e1734d25f6","type":"REF_CONSTRAINT","name":"FK_DEPTNO","schemaName":"DEMO1","sxml":""}