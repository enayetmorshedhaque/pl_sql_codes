CREATE OR REPLACE TRIGGER CUSTOMER_UPDATE_LOG_TRIGGER
after update ON CUSTOMERS
for each row
begin
    INSERT INTO CUSTOMER_UPDATE_LOG
    (
        UTC_ID,
        UTC_OLD_NAME,
        UTC_NEW_NAME,
        UTC_UPDATED_BY,
        UTC_UPDATE_DATE
    )
    VALUES
    (
        :OLD.CUSTOMER_ID,
        :OLD.NAME,
        :NEW.NAME,
        USER,
        SYSDATE
    );
end;
/
