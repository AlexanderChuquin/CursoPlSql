Prácticas Bucles
1. Práctica 1
    - Vamos a crear la tabla de multiplicar del 1 al 10, con los tres tipos de bucles: LOOP, WHILE y FOR
    
    -- LOOP 
SET SERVEROUTPUT ON
DECLARE
    X1 NUMBER :=1;
    X2 NUMBER :=1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || X1);
    LOOP
        DBMS_OUTPUT.PUT_LINE( X1 || ' x ' || x2 || ' = ' || X1*X2 );
        X2:= X2 +1;
        IF X2 > 10 THEN 
            X1:= X1 +1;
            X2:= 1;
            IF X1 < 11 THEN
                DBMS_OUTPUT.PUT_LINE('');
                DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || X1);
            END IF;
        END IF;
        
        EXIT WHEN X1 > 10;
    END LOOP;
END;
  
  -- WHILE 
SET SERVEROUTPUT ON
DECLARE
    X1 NUMBER :=1;
    X2 NUMBER :=1;
    TERMINAR BOOLEAN:= FALSE;
BEGIN
    DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || X1);
    WHILE TERMINAR = FALSE LOOP
        DBMS_OUTPUT.PUT_LINE( X1 || ' x ' || x2 || ' = ' || X1*X2 );
        X2:= X2 +1;
        IF X2 > 10 THEN 
            X1:= X1 +1;
            X2:= 1;
            IF X1 < 11 THEN
                DBMS_OUTPUT.PUT_LINE('');
                DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || X1);
                
            END IF;
        END IF;
        
        IF X1 > 10 THEN
            TERMINAR:= TRUE;
        END IF;
    END LOOP;
END;
  

  -- FOR 
SET SERVEROUTPUT ON
DECLARE
    X1 NUMBER :=1;
    X2 NUMBER :=1;
BEGIN
    DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || X1);
    FOR I IN 1..100 LOOP
        DBMS_OUTPUT.PUT_LINE( X1 || ' x ' || x2 || ' = ' || X1*X2 );
        X2:= X2 +1;
        IF X2 > 10 THEN 
            X1:= X1 +1;
            X2:= 1;
            IF X1 < 11 THEN
                DBMS_OUTPUT.PUT_LINE('');
                DBMS_OUTPUT.PUT_LINE('TABLA DEL ' || X1);
            END IF;
        END IF;
    END LOOP;
END;

2. Práctica 2
    - Crear una variable llamada TEXTO de tipo VARCHAR2(100).
    - Poner alguna frase
    - Mediante un bucle, escribir la frase al revés, Usamos el bucle WHILE

SET SERVEROUTPUT ON
DECLARE
    TEXTO VARCHAR2(100):= 'La vida es la que vives';
    TERMINAR BOOLEAN:= FALSE;
    LETRAS NUMBER:= LENGTH(TEXTO);
    OUTPUT VARCHAR(100);
BEGIN
    WHILE TERMINAR = FALSE LOOP
        
        OUTPUT:= OUTPUT || SUBSTR(TEXTO, LETRAS, 1);
        LETRAS:= LETRAS -1 ; 
        IF LETRAS < 1 THEN 
            TERMINAR:= TRUE;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(OUTPUT);
END;

3. Práctica 3
    - Usando la práctica anterior, si en el texto aparece el carácter "x" debe salir del bucle. Es igual en mayúsculas o minúsculas.
    - Debemos usar la cláusula EXIT.

SET SERVEROUTPUT ON
DECLARE
    TEXTO VARCHAR2(100):= 'La vida es x la que vives';
    TERMINAR BOOLEAN:= FALSE;
    LETRAS NUMBER:= LENGTH(TEXTO);
    OUTPUT VARCHAR(100);
BEGIN
    WHILE TERMINAR = FALSE LOOP
        EXIT WHEN UPPER(SUBSTR(TEXTO, LETRAS, 1)) = 'X';
        OUTPUT:= OUTPUT || SUBSTR(TEXTO, LETRAS, 1);
        LETRAS:= LETRAS -1 ; 
        IF LETRAS < 1 THEN 
            TERMINAR:= TRUE;
        END IF;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(OUTPUT);
END;


4. Práctica 4
    - Debemos crear una variable llamada NOMBRE
    - Debemos pintar tantos asteriscos como letras tenga el nombre.
        Usamos un bucle FOR
        • Por ejemplo Alberto → *******
        • O por ejemplo Pedro → *****

DECLARE
    NOMBRE VARCHAR(100):= 'ALEXANDER';
    OUTPUT VARCHAR(100);
BEGIN
    FOR I IN 1..LENGTH(NOMBRE) LOOP
        OUTPUT:= OUTPUT || '*';
    END LOOP;
    DBMS_OUTPUT.PUT_LINE(OUTPUT);
END;

5. Práctica 5
    - Creamos dos variables numéricas, "inicio y fin"
    - Las inicializamos con algún valor:
    - Debemos sacar los números que sean múltiplos de 4 de ese rango

DECLARE
    INICIO NUMBER:=0;
    FIN NUMBER:=10;
BEGIN 
    FOR I IN INICIO..FIN LOOP
        IF MOD(I,4)= 0 THEN 
            DBMS_OUTPUT.PUT_LINE(I);
        END IF;
    END LOOP;
END;


