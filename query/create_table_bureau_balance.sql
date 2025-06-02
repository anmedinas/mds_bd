DROP TABLE IF EXISTS bureau_balance;

CREATE TABLE bureau_balance (
    SK_BUREAU_ID INT, -- ID único del crédito en el Bureau relacionado con el préstamo en Home Credit
    MONTHS_BALANCE INT, -- Mes relativo al balance (0 = mes actual, valores negativos = meses anteriores)
    CREDIT_STATUS CHAR(1) CHECK (CREDIT_STATUS IN ('C', 'X', '0', '1', '2', '3', '4', '5')) -- Estado del crédito durante el mes
    CONSTRAINT pk_bureau_balance PRIMARY KEY (sk_bureau_id, months_balance),
    CONSTRAINT bureau_balance_credit_status_check CHECK (credit_status = ANY (ARRAY['C'::bpchar, 'X'::bpchar, '0'::bpchar, '1'::bpchar, '2'::bpchar, '3'::bpchar, '4'::bpchar, '5'::bpchar]))
);

SET ROLE postgres;
COPY bureau_balance
FROM '/tmp/bureau_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 
