SET ROLE postgres;
COPY installments_payments
FROM '/tmp/installments_payments_bkp.csv'
DELIMITER ','
CSV HEADER ; 