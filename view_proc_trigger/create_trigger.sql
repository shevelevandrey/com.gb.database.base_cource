# 3. Создать триггер, который при добавлении нового сотрудника будет выплачивать ему вступительный бонус, 
# занося запись об этом в таблицу salary.
create trigger employees.payment_of_salary
    after insert
    on employees.employees
    for each row
    insert into employees.salaries (emp_no, salary, from_date, to_date)
    values (new.emp_no, 100, new.hire_date, str_to_date('9999-01-01', '%Y-%m-%d'));

# example:
insert into employees.employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values (600000, str_to_date('1799-06-06', '%Y-%m-%d'), 'Alexander', 'Pushkin', 'F', curdate());
#
select *
  from employees.employees e
  join employees.salaries s on e.emp_no = s.emp_no
where e.first_name = 'Alexander'
  and e.last_name = 'Pushkin';