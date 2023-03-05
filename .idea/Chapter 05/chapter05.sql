/* 1. Заполните в следующем запросе пробелы (обозначенные как <число>), чтобы получить такие результаты: */
    mysql> select e.emp_id, e.fname, e.lname, b.name
        ->     from employee e inner join branch b
        ->     on e.assigned_branch_id = b.branch_id;

/* 2. Напишите запрос, по которому для каждого клиента - физического лица (customer.cust_type_cd = 'I')
    возвращаются ID счета, федеральный ID (customer.fed_id) и тип созданного счета (product.name). */
    mysql> select a.account_id, c.fed_id, p.name
        -> from customer c inner join account a
        -> on c.cust_id = a.cust_id
        -> inner join product p
        -> on a.product_cd = p.product_cd
        -> where c.cust_type_cd = 'I';

/* 3. Создайте запрос для выбора всех сотрудников, начальник которых приписан к другому отделу.
    Извлеките ID, имя и фамилию сотрудника. */
    mysql> select e.emp_id, e.fname, e.lname
        -> from employee e inner join employee mgr
        -> on e.superior_emp_id = mgr.emp_id
        -> where e.dept_id != mgr.dept_id;