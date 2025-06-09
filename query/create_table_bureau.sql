-- Crear la tabla bureau

DROP TABLE IF EXISTS bureau;

CREATE TABLE IF NOT EXISTS bureau
(
    sk_id_curr integer NOT NULL,
    sk_bureau_id integer NOT NULL,
    credit_active character varying(50) COLLATE pg_catalog."default",
    credit_currency character varying(10) COLLATE pg_catalog."default",
    days_credit integer,
    credit_day_overdue integer,
    days_credit_enddate double precision,
    days_enddate_fact double precision,
    amt_credit_max_overdue numeric(15,2),
    cnt_credit_prolong integer,
    amt_credit_sum numeric(15,2),
    amt_credit_sum_debt numeric(15,2),
    amt_credit_sum_limit numeric(15,2),
    amt_credit_sum_overdue numeric(15,2),
    credit_type character varying(50) COLLATE pg_catalog."default",
    days_credit_update double precision,
    amt_annuity numeric(15,2),
    CONSTRAINT pk_bureau PRIMARY KEY (sk_id_curr, sk_bureau_id)
)


SET ROLE postgres;
COPY bureau
FROM '/tmp/bureau_bkp.csv'
DELIMITER ','
CSV HEADER ; 
