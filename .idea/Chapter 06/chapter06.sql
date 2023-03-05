/* Напишите составной запрос для выбора имен и фамилий всех клиентов - физических лиц,
    а также имен и фамилий всех сотрудников.
    Отсортируйте результаты упражнения по столбцу lname. */
    select fname, lname
    from individual
    union
    select fname, lname
    from employee
    order by lname;