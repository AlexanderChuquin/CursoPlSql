Práctica SELECT INTO 
Realiza los siguientes ejemplos. Usa %ROWTYPE y %TYPE

1. PRÁCTICA 1
    - Crear un bloque PL/SQL que devuelva al salario máximo del departamento 100 y lo deje en una variable denominada salario_maximo y la visualice


SET SERVEROUTPUT ON
DECLARE
    salario_maximo employees.salary%TYPE;
BEGIN
    select MAX(salary) into salario_maximo from employees where department_id = 100;
    dbms_output.put_line(salario_maximo);
END;

2. PRÁCTICA2
    - Visualizar el tipo de trabajo del empleado número 100

SET SERVEROUTPUT ON
DECLARE
    job_em JOBS%ROWTYPE;
BEGIN
    select j.*
    into job_em 
    from employees e
    inner join jobs j on j.job_id = e.job_id
    where e.employee_id = 100;
    
    dbms_output.put_line(job_em.job_title);
END;


3. PRÁCTICA 3
    - Crear una variable de tipo DEPARTMENT_ID y ponerla algún valor, por ejemplo 10.
    - Visualizar el nombre de ese departamento y el número de empleados que tiene, poniendo. Crear dos variables para albergar los valores.

DECLARE
    departamento_id departments.department_id%TYPE:= 10;
    departamento_name departments.department_name%TYPE;
    empleados number;
BEGIN
    select department_name into departamento_name from departments where department_id = departamento_id;
    select count(*) INTO empleados from employees where department_id = departamento_id;
    dbms_output.put_line('DEPARTAMENTO: ' || departamento_name);
    dbms_output.put_line('NUMERO DE EMPLEADOS: ' || empleados);
END; 

4. PRÁCTICA 4
    - Mediante dos consultas recuperar el salario máximo y el salario mínimo de la empresa e indicar su diferencia
    
DECLARE
    salario_minimo employees.salary%TYPE;
    salario_maximo employees.salary%TYPE;
BEGIN
    select MAX(salary), MIN(salary) INTO  salario_maximo, salario_minimo from employees;
    dbms_output.put_line('SALARIO MAXIMO: ' || salario_maximo);
    dbms_output.put_line('SALARIO MINIMO: ' || salario_minimo);
    dbms_output.put_line('DIFERENCIA: ' || (salario_maximo - salario_minimo));
END;



    