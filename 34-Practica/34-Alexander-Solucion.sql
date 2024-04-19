 
-- 1.- Determinar que bloques PL/SQL son correctos.

    A: No es correcto, ya que se requiere un tipo de instrucción entre el BEGIN y END.
    B: No es correcto, ya que no tiene el segmento BEGIN
    C: No es correcto, ya que se requiere un tipo de instrucción entre el BEGIN y END.
    D: Es correcto, tiene la estrutura/sisntaxis correcta.

-- 2-Crear dos variables de tipo numérico y visualizar su suma

DECLARE 
    N1 Number:= 5;
    N2 Number:= 3;
BEGIN
    dbms_output.put_line(N1+N2);
END;

-- 3-Modificar el ejemplo anterior y ponemos null como valor de una de las variables. ¿Qué resultado arroja? Volvemos a ponerla un valor numérico

DECLARE 
    N1 Number:= 5;
    N2 Number:= NULL;
BEGIN
    dbms_output.put_line(N1+N2);
END;

    ## El resultado arrojado, es un valor vacio.

-- 4-Añadir una constante al ejercicio. Sumamos las 2 variables y la constantes. Intentar modificar la constante. ¿Es posible?

DECLARE 
    N1 Number:= 5;
    N2 Number:= 3;
    N3 constant number:=2;
BEGIN
    dbms_output.put_line(N1+N2+N3);
END;

    ## No es posible modificar una constaste dentro del procedimiento.

-- 5-Crear un bloque anónimo que tenga una variable de tipo VARCHAR2 con nuestro nombre, otra numérica con la edad y una tercera con la fecha de nacimiento. Visualizarlas por separado y luego intentar concatenarlas. ¿es posible?

DECLARE 
    Name Varchar(10) := 'Alexander';
    Years Number := 28;
    Birthday DATE := '04/07/1996';
BEGIN
    dbms_output.put_line(Name);
    dbms_output.put_line(Years);
    dbms_output.put_line(Birthday);
    dbms_output.put_line(Name || ' ' || Years || ' ' || Birthday );
END;
