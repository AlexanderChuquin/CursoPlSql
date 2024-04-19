Prácticas Bloques anidados

1. Indicar que valores visualiza X en los 3 casos de DBMS_OUTPUT.PUT_LINE(x) en este ejemplo

    LINEA 5: Resultado 10
    LINEA 9: Resultado 20
    LINE 12: Resultado 10

2. ¿Es este bloque correcto? Si no es así ¿por qué falla?
    BEGIN
        DBMS_OUTPUT.PUT_LINE(X);
        DECLARE
            X NUMBER:=20;
        BEGIN
            DBMS_OUTPUT.PUT_LINE(X);
        END;
        DBMS_OUTPUT.PUT_LINE(X);
    END;
    
    ## Falla debido a que se esta haciendo uso de una variable antes de declararla.

3. ¿Es este bloque correcto? Si es así ¿qué valores visualiza X? 

    SET SERVEROUTPUT ON
    DECLARE
        X NUMBER:=10;
    BEGIN
        DBMS_OUTPUT.PUT_LINE(X);
        BEGIN
            DBMS_OUTPUT.PUT_LINE(X);
        END;
        DBMS_OUTPUT.PUT_LINE(X);
    END;
    
    ## El bloque es correcto, el resultado en casa PUT_LINE es de 10, debido a que es una variable global. 