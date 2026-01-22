create or replace function check_user(emp_id number)
return varchar2
as
v_record_count number;
begin
select count(*)
into v_record_count 
FROM emp
where empno=emp_id;
return case when v_record_count >0 then 'Y' else 'N' end;
end;