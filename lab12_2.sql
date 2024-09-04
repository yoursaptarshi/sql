DECLARE
  CURSOR employee_cursor(p_salary NUMBER) IS
    SELECT LASTNAME, FIRSTNAME, SALARY, HIREDATE
    FROM EMPLOYEE
    WHERE SALARY > p_salary;
  v_last_name  EMPLOYEE.LASTNAME%TYPE;
  v_first_name EMPLOYEE.FIRSTNAME%TYPE;
  v_salary     EMPLOYEE.SALARY%TYPE;
  v_hire_date  EMPLOYEE.HIREDATE%TYPE;
BEGIN
  OPEN employee_cursor(50000);
  LOOP
    FETCH employee_cursor INTO v_last_name, v_first_name, v_salary, v_hire_date;
    EXIT WHEN employee_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(v_last_name || ', ' || v_first_name || ', ' || v_salary || ', ' || v_hire_date);
  END LOOP;
  CLOSE employee_cursor;
END;
/