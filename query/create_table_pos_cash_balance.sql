-- Crear la tabla pos_cash_balance
DROP TABLE IF EXISTS pos_cash_balance; 

CREATE TABLE IF NOT EXISTS pos_cash_balance
(
    sk_id_prev integer NOT NULL,
    sk_id_curr integer NOT NULL,
    months_balance integer NOT NULL,
    cnt_instalment double precision,
    cnt_instalment_future double precision,
    name_contract_status character varying(50) COLLATE pg_catalog."default",
    sk_dpd integer,
    sk_dpd_def integer,
    CONSTRAINT pk_pc_balance PRIMARY KEY (sk_id_prev, sk_id_curr, months_balance)
)

SET ROLE postgres;
COPY pos_cash_balance
FROM '/tmp/pos_cash_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 
