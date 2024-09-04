DECLARE
  v_firstname employee.firstname%TYPE;
  v_lastname employee.lastname%TYPE;
  v_salary employee.salary%TYPE;
  v_department employee.department%TYPE;
  v_qualification_id INT := 1234; --replace with actual qualification ID
  
BEGIN
  SELECT firstname, lastname, salary, department INTO v_firstname, v_lastname, v_salary, v_department
  FROM employee
  WHERE qualification_id = v_qualification_id;
  
  DBMS_OUTPUT.PUT_LINE(v_firstname || ' ' || v_lastname || ' has a qualification with ID ' || v_qualification_id || ' and a salary of ' || v_salary);
  
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No employees with such qualification');
    
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('More than one employee with such qualification');
    
END;
/