# 2. Создать функцию, которая найдет менеджера по имени и фамилии.
delimiter //

create function employees.get_manager_emp_no(
    first_name varchar(14),
    last_name varchar(16),
    cur_date date
    ) returns int deterministic
begin
    declare manager_emp_no int;

    select e.emp_no into manager_emp_no
      from employees.employees e
      join employees.dept_manager dm on e.emp_no = dm.emp_no
    where e.first_name = first_name
      and e.last_name = last_name
      and dm.from_date <= cur_date
      and dm.to_date > cur_date;

    return manager_emp_no;
end; //

delimiter ;

# example
select *
  from employees.employees e
 where e.emp_no = employees.get_manager_emp_no('Isamu', 'Legleitner', curdate());