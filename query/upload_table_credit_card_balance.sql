SET ROLE postgres;
COPY credit_card_balance
FROM '/tmp/credit_card_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 