-- Crear la tabla credit_card_balance

DROP TABLE IF EXISTS credit_card_balance; 

CREATE TABLE IF NOT EXISTS proyecto.credit_card_balance
(
    sk_id_prev integer NOT NULL,
    sk_id_curr integer NOT NULL,
    months_balance integer NOT NULL,
    amt_balance numeric(15,2),
    amt_credit_limit_actual numeric(15,2),
    amt_drawings_atm_current numeric(15,2),
    amt_drawings_current numeric(15,2),
    amt_drawings_other_current numeric(15,2),
    amt_drawings_pos_current numeric(15,2),
    amt_inst_min_regularity numeric(15,2),
    amt_payment_current numeric(15,2),
    amt_payment_total_current numeric(15,2),
    amt_receivable_principal numeric(15,2),
    amt_recivable numeric(15,2),
    amt_total_receivable numeric(15,2),
    cnt_drawings_atm_current double precision,
    cnt_drawings_current double precision,
    cnt_drawings_other_current double precision,
    cnt_drawings_pos_current double precision,
    cnt_instalment_mature_cum double precision,
    name_contract_status character varying(50) COLLATE pg_catalog."default",
    sk_dpd integer,
    sk_dpd_def integer,
    CONSTRAINT pk_cc_balance PRIMARY KEY (sk_id_prev, sk_id_curr, months_balance)
)

SET ROLE postgres;
COPY credit_card_balance
FROM '/tmp/credit_card_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 
