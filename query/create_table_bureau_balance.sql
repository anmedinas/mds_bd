DROP TABLE IF EXISTS bureau_balance;

CREATE TABLE bureau_balance (
    SK_BUREAU_ID INT, -- ID único del crédito en el Bureau relacionado con el préstamo en Home Credit
    MONTHS_BALANCE INT, -- Mes relativo al balance (0 = mes actual, valores negativos = meses anteriores)
    CREDIT_STATUS CHAR(1) CHECK (CREDIT_STATUS IN ('C', 'X', '0', '1', '2', '3', '4', '5')) -- Estado del crédito durante el mes
);

SET ROLE postgres;
COPY bureau_balance
FROM '/tmp/bureau_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 