Prácticas funciones SQL en PL/SQL

1. Visualizar iniciales de un nombre
    - Crea un bloque PL/SQL con tres variables VARCHAR2:
        * Nombre
        * apellido1
        * apellido2
    - Debes visualizar las iniciales separadas por puntos.
    - Además siempre en mayúscula
    - Por ejemplo alberto pérez García debería aparecer--> A.P.G

    DECLARE
        NOMBRE VARCHAR2(100);
        APELLIDO1 VARCHAR2(100);
        APELLIDO2 VARCHAR2(100);
    BEGIN
        NOMBRE:= 'alexander' ;
        APELLIDO1:= 'chuquin' ;
        APELLIDO2:= 'Sanchez' ;
        
        DBMS_OUTPUT.PUT_LINE( UPPER(SUBSTR(NOMBRE, 1, 1)) || '.'  || UPPER(SUBSTR(APELLIDO1, 1, 1)) || '.'  || UPPER(SUBSTR(APELLIDO2, 1, 1)));
    END;

    
    
2. Averiguar el nombre del día que naciste, por ejemplo "Martes". PISTA (Función TO_CHAR)
    
    DECLARE
        Birthday DATE:= '04/07/1996';
    BEGIN
        dbms_output.put_line(TO_CHAR(Birthday, 'DAY'));
    END;