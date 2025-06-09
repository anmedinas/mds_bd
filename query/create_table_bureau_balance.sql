DROP TABLE IF EXISTS bureau_balance;

CREATE TABLE IF NOT EXISTS proyecto.bureau_balance
(
    sk_bureau_id integer NOT NULL,
    months_balance integer NOT NULL,
    credit_status character(1) COLLATE pg_catalog."default",
    CONSTRAINT pk_bureau_balance PRIMARY KEY (sk_bureau_id, months_balance),
    CONSTRAINT bureau_balance_credit_status_check CHECK (credit_status = ANY (ARRAY['C'::bpchar, 'X'::bpchar, '0'::bpchar, '1'::bpchar, '2'::bpchar, '3'::bpchar, '4'::bpchar, '5'::bpchar]))
)

SET ROLE postgres;
COPY bureau_balance
FROM '/tmp/bureau_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 
