-- Crear la tabla installments_payments

DROP TABLE IF EXISTS installments_payments ; 

CREATE TABLE installments_payments (
    SK_ID_PREV INT, -- ID único del crédito previo en Home Credit
    SK_ID_CURR INT, -- ID único del cliente
    NUM_INSTALMENT_VERSION INT, -- Versión del calendario de cuotas (0 para tarjetas de crédito)
    NUM_INSTALMENT_NUMBER INT, -- Número de la cuota observada
    DAYS_INSTALMENT INT, -- Días en los que se debía pagar la cuota (relativo a la fecha de la solicitud actual)
    DAYS_ENTRY_PAYMENT INT, -- Días en los que se pagó realmente la cuota (relativo a la fecha de la solicitud actual)
    AMT_INSTALMENT DECIMAL(15, 2), -- Monto prescrito de la cuota
    AMT_PAYMENT DECIMAL(15, 2) -- Monto realmente pagado por el cliente
    id integer NOT NULL DEFAULT nextval('proyecto.installments_payments_id_seq'::regclass),
    CONSTRAINT installments_payments_pkey PRIMARY KEY (id) -- llave artificial pq no habia combinacion unica de atributos sin tener que considerarlos todos como llave
);

SET ROLE postgres;
COPY installments_payments
FROM '/tmp/installments_payments_bkp.csv'
DELIMITER ','
CSV HEADER ; 
