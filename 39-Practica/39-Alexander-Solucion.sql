
/* 1. Práctica adicional Variables y Constantes
    - Queremos calcular el impuesto de un producto
    - El impuesto será del 21%. Le debemos poner en una constante
    - Creamos una variable de tipo number (5,2) para poner el precio del producto
    - Creamos otra variable para el resultado. Le decimos que es del mismo tipo (type) que la anterior
    - Hacemos el cálculo y visualizamos el resultado. */

DECLARE
    Impuesto constant number:= 21;
    precio number(5, 2);
    resultado precio%TYPE;
BEGIN
    precio:= 31.5;
    resultado:= precio*Impuesto/100;
    dbms_output.put_line(resultado);
END;