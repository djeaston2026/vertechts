create or replace function demo1.check_user (
    emp_id number
) return varchar2 as
    v_record_count number;
begin
    select
        count(*)
    into v_record_count
    from
        emp
    where
        empno = emp_id;

    return
        case
            when v_record_count > 0 then
                'Y'
            else
                'N'
        end;
end;
/


-- sqlcl_snapshot {"hash":"d9135f102de4d639c2a4623b51cfe111f85f6827","type":"FUNCTION","name":"CHECK_USER","schemaName":"DEMO1","sxml":""}