Práctica comando IF

1. PRÁCTICA 1
    Debemos hacer un bloque PL/SQL anónimo, donde declaramos una variable NUMBER y la ponemos algún valor.
        - Debe indicar si el número es PAR o IMPAR. Es decir debemos usar IF..... ELSE para hacer el ejercicio
        - Como pista, recuerda que hay una función en SQL denominada MOD, que permite averiguar el resto de una división.
        Por ejemplo MOD(10,4) nos devuelve el resto de dividir 10 por 4.
    
    DECLARE
        N1 Number:= 4;
    BEGIN
        IF MOD(N1,2)=0  THEN
            dbms_output.put_line('PAR');
        ELSE
            dbms_output.put_line('IMPAR');
        END IF;
    END;
    
2. PRÁCTICA 2
    Crear una variable CHAR(1) denominada TIPO_PRODUCTO.
    Poner un valor entre "A" Y "E"
    Visualizar el siguiente resultado según el tipo de producto
        - 'A' --> Electronica
        - 'B' --> Informática
        - 'C' --> Ropa
        - 'D' --> Música
        - 'E' --> Libros
    Cualquier otro valor debe visualizar "El código es incorrecto"
    
    DECLARE
        TIPO_PRODUCTO CHAR(1):= 'C';
    BEGIN
        IF TIPO_PRODUCTO = 'A' THEN 
            dbms_output.put_line('Electronica');
        ELSIF TIPO_PRODUCTO = 'B' THEN
            dbms_output.put_line('Informática');
        ELSIF TIPO_PRODUCTO = 'C' THEN
            dbms_output.put_line('Ropa');
        ELSIF TIPO_PRODUCTO = 'D' THEN
            dbms_output.put_line('Música');
        ELSIF TIPO_PRODUCTO = 'E' THEN
            dbms_output.put_line('Libros');
        END IF;
    END;
    