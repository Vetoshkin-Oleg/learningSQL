/* 1. Извлеките ID, имя и фамилию всех банковских сотрудников. Выполните сортировку по фамилии, а затем по имени. */
    mysql> select emp_id, fname, lname
        -> from employee
        -> order by lname, fname;

/* 2. Извлеките ID счета, ID клиента и доступный остаток всех счетов, имеющих статус 'ACTIVE' (активный)
    и доступный остаток более 2500 долларов. */
    mysql> select account_id, cust_id, avail_balance
        -> from account
        -> where status = 'ACTIVE'
        -> and avail_balance > 2500;

/* 3. Напишите запрос к таблице account, возвращающий ID сотрудников,
    открывших счета (используйте столбец account.open_emp_id).
    Результирующий набор должен включать по одной строке для каждого сотрудника. */
    mysql> select distinct open_emp_id
        -> from account;

/* 4. В этом запросе к нескольким наборам данных заполните пробелы (обозначенные как <число>) так,
    чтобы получить результат, приведенный ниже: */
    mysql> SELECT p.product_cd, a.cust_id, a.avail_balance
        -> FROM product p INNER JOIN account a
        ->   ON p.product_cd = a.product_cd
        -> WHERE p.product_type_cd = 'ACCOUNT';