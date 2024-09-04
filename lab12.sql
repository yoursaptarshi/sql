DECLARE
  CURSOR employee_cursor IS
    SELECT lastname, firstname, salary, hiredate
    FROM employee
    WHERE salary > 50 and hiredate < TO_DATE('31-DEC-1997', 'DD-MON-YYYY');
  v_last_name employee.lastname%TYPE;
  v_first_name employee.firstname%TYPE;
  v_salary employee.salary%TYPE;
  v_hire_date employee.hiredate%TYPE;
BEGIN
  OPEN employee_cursor;
  LOOP
    FETCH employee_cursor INTO v_last_name, v_first_name, v_salary, v_hire_date;
    EXIT WHEN employee_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_last_name || ', ' || v_first_name || ', ' || v_salary || ', ' || v_hire_date);
  END LOOP;
  CLOSE employee_cursor;
END;
/