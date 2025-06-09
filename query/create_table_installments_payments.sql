-- Crear la tabla installments_payments

DROP TABLE IF EXISTS installments_payments ; 

CREATE TABLE IF NOT EXISTS installments_payments
(
    sk_id_prev integer,
    sk_id_curr integer,
    num_instalment_version double precision,
    num_instalment_number double precision,
    days_instalment double precision,
    days_entry_payment double precision,
    amt_instalment numeric(15,2),
    amt_payment numeric(15,2),
    id integer NOT NULL DEFAULT nextval('proyecto.installments_payments_id_seq'::regclass),
    CONSTRAINT installments_payments_pkey PRIMARY KEY (id)
)

SET ROLE postgres;
COPY installments_payments
FROM '/tmp/installments_payments_bkp.csv'
DELIMITER ','
CSV HEADER ; 
