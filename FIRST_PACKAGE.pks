CREATE OR REPLACE PACKAGE ENAYET.FIRST_PACKAGE
IS
    FUNCTION SHOW_LOGIN_MENU
    RETURN NUMBER;
    
    PROCEDURE SHOW_CUS_DETL
    (
        R_C_ID IN NUMBER,
        C_N OUT VARCHAR2,
        C_A OUT VARCHAR2,
        C_E OUT VARCHAR2,
        C_P OUT VARCHAR2,
        C_W OUT VARCHAR2,
        C_C_L OUT VARCHAR2,
        C_O_I OUT NUMBER,
        C_O_S OUT VARCHAR2,
        C_O_D OUT DATE
    );
    
    FUNCTION SHOW_SUB_MENU
    RETURN NUMBER;
    
    FUNCTION UPDATE_CUSTOMER
    (
        R_C_ID IN NUMBER
    )
    RETURN VARCHAR2;
    
    FUNCTION DELETE_CUSTOMER
    (
        R_C_ID IN NUMBER
    )
    RETURN VARCHAR2;
END FIRST_PACKAGE;    
    
    