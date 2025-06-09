-- Crear la tabla previous_application
DROP TABLE IF EXISTS previous_application ; 

CREATE TABLE IF NOT EXISTS previous_application
(
    sk_id_prev integer NOT NULL,
    sk_id_curr integer NOT NULL,
    name_contract_type character varying(50) COLLATE pg_catalog."default",
    amt_annuity numeric(15,2),
    amt_application numeric(15,2),
    amt_credit numeric(15,2),
    amt_down_payment numeric(15,2),
    amt_goods_price numeric(15,2),
    weekday_appr_process_start character varying(20) COLLATE pg_catalog."default",
    hour_appr_process_start integer,
    flag_last_appl_per_contract character(1) COLLATE pg_catalog."default",
    nflag_last_appl_in_day integer,
    rate_down_payment numeric(10,8),
    rate_interest_primary numeric(10,8),
    rate_interest_privileged numeric(10,8),
    name_cash_loan_purpose character varying(50) COLLATE pg_catalog."default",
    name_contract_status character varying(50) COLLATE pg_catalog."default",
    days_decision integer,
    name_payment_type character varying(50) COLLATE pg_catalog."default",
    code_reject_reason character varying(50) COLLATE pg_catalog."default",
    name_type_suite character varying(50) COLLATE pg_catalog."default",
    name_client_type character varying(50) COLLATE pg_catalog."default",
    name_goods_category character varying(50) COLLATE pg_catalog."default",
    name_portfolio character varying(50) COLLATE pg_catalog."default",
    name_product_type character varying(50) COLLATE pg_catalog."default",
    channel_type character varying(50) COLLATE pg_catalog."default",
    sellerplace_area integer,
    name_seller_industry character varying(50) COLLATE pg_catalog."default",
    cnt_payment double precision,
    name_yield_group character varying(50) COLLATE pg_catalog."default",
    product_combination character varying(50) COLLATE pg_catalog."default",
    days_first_drawing double precision,
    days_first_due double precision,
    days_last_due_1st_version double precision,
    days_last_due double precision,
    days_termination double precision,
    nflag_insured_on_approval double precision,
    CONSTRAINT pk_previous_application PRIMARY KEY (sk_id_prev, sk_id_curr),
    CONSTRAINT previous_application_flag_last_appl_per_contract_check CHECK (flag_last_appl_per_contract = ANY (ARRAY['Y'::bpchar, 'N'::bpchar])),
    CONSTRAINT previous_application_nflag_last_appl_in_day_check CHECK (nflag_last_appl_in_day = ANY (ARRAY[0, 1])),
    CONSTRAINT previous_application_nflag_insured_on_approval_check CHECK (nflag_insured_on_approval = ANY (ARRAY[0::double precision, 1::double precision]))
)

SET ROLE postgres;
COPY previous_application
FROM '/tmp/previous_application_bkp.csv'
DELIMITER ','
CSV HEADER ; 
