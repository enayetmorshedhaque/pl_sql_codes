CREATE OR REPLACE TRIGGER C_T_D_L_TRIGGER
after update ON CUSTOMERS
for each row
begin
    INSERT INTO CUSTOMER_TABLE_DELETE_LOG
    (
        DTC_ID,
        DTC_NAME,
        DTC_ADDRESS,
        DTC_WEBSITE,
        DTC_CREDIT_LIMIT,
        DTC_DELETED_BY,
        DTC_DELETE_DATE
    )
    VALUES
    (
        :OLD.CUSTOMER_ID,
        :OLD.NAME,
        :OLD.ADDRESS,
        :OLD.WEBSITE,
        :OLD.CREDIT_LIMIT,
        USER,
        SYSDATE
    );
end;
/
