DECLARE
    R_C_ID NUMBER;
    C_N VARCHAR2(100);
    C_A VARCHAR2(100);
    C_E VARCHAR2(100);
    C_P VARCHAR2(100);
    C_W VARCHAR2(100);
    C_C_L NUMBER(8, 2);
    C_O_I NUMBER;
    C_O_S VARCHAR2(20);
    C_O_D DATE;
    SUB_MENU_CHOICHE NUMBER;
BEGIN
    R_C_ID := FIRST_PACKAGE.SHOW_LOGIN_MENU();
    FIRST_PACKAGE.SHOW_CUS_DETL(R_C_ID, C_N, C_A, C_E, C_P, C_W, C_C_L, C_O_I, C_O_S, C_O_D);
    DBMS_OUTPUT.PUT_LINE(CHR(10) || '*******************************************************');
    DBMS_OUTPUT.PUT_LINE(CHR(10) || 'CUSTOMER DETAILS' || CHR(10));
    DBMS_OUTPUT.PUT_LINE
    (
        'CUSTOMER ID: ' || R_C_ID || CHR(10) ||
        'CUSTOMER NAME: ' || C_N || CHR(10) ||
        'CUSTOMER ADDRESS: ' || C_A || CHR(10) ||
        'CUSTOMER EMAIL: ' || C_E || CHR(10) ||
        'CUSTOMER PHONE: ' || C_P || CHR(10) ||
        'CUSTOMER WEBSITE: ' || C_W || CHR(10) ||
        'CUSTOMER CREDIT LIMIT: ' || C_C_L || CHR(10) ||
        'CUSTOMER ORDER ID: ' || C_O_I || CHR(10) ||
        'CUSTOMER ORDER STATUS' || C_O_S || CHR(10) ||
        'CUSTOMER ORDER DATE' || C_O_D
    );
    DBMS_OUTPUT.PUT_LINE('*******************************************************');
    
    SUB_MENU_CHOICHE := FIRST_PACKAGE.SHOW_SUB_MENU();
    CASE
        WHEN SUB_MENU_CHOICHE = 1 THEN
            DBMS_OUTPUT.PUT_LINE(FIRST_PACKAGE.UPDATE_CUSTOMER(R_C_ID));
        WHEN SUB_MENU_CHOICHE = 2 THEN 
            DBMS_OUTPUT.PUT_LINE(FIRST_PACKAGE.DELETE_CUSTOMER(R_C_ID));
        WHEN SUB_MENU_CHOICHE = 3 THEN
            NULL;
    END CASE;
END;