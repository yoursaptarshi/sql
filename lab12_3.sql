DECLARE
	vrec EMPLOYEE%ROWTYPE;
	CURSOR cremp IS SELECT * FROM EMPLOYEE WHERE
	department IN (101,103) ORDER BY department FOR UPDATE OF department, salary NOWAIT;
BEGIN
	OPEN cremp;
	LOOP
		FETCH cremp INTO vrec;
		EXIT WHEN cremp%NOTFOUND;
		UPDATE EMPLOYEE SET salary=vrec.salary*1.15 WHERE CURRENT OF cremp;
	END LOOP;
END;
/