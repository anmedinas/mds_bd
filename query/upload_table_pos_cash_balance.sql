SET ROLE postgres;
COPY pos_cash_balance
FROM '/tmp/pos_cash_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 