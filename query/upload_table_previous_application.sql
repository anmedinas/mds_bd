SET ROLE postgres;
COPY previous_application
FROM '/tmp/previous_application_bkp.csv'
DELIMITER ','
CSV HEADER ; 