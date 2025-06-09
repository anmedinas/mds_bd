-- Crear la tabla bureau

DROP TABLE IF EXISTS bureau;

CREATE TABLE bureau (
    SK_ID_CURR INT, -- ID del préstamo en nuestra muestra (puede tener 0, 1, 2 o más créditos relacionados en el Bureau)
    SK_BUREAU_ID INT, -- ID único del crédito en el Bureau relacionado con el préstamo en Home Credit
    CREDIT_ACTIVE VARCHAR(50), -- Estado del crédito en el Bureau (por ejemplo, 'Active', 'Closed', etc.)
    CREDIT_CURRENCY VARCHAR(10), -- Moneda del crédito en el Bureau
    DAYS_CREDIT INT, -- Días antes de la solicitud actual en que el cliente solicitó el crédito en el Bureau
    CREDIT_DAY_OVERDUE INT, -- Número de días de retraso en el crédito del Bureau en el momento de la solicitud
    DAYS_CREDIT_ENDDATE INT, -- Duración restante del crédito en el Bureau (en días) en el momento de la solicitud
    DAYS_ENDDATE_FACT INT, -- Días desde que el crédito del Bureau terminó en el momento de la solicitud (solo para créditos cerrados)
    AMT_CREDIT_MAX_OVERDUE DECIMAL(15, 2), -- Monto máximo vencido en el crédito del Bureau hasta la fecha de la solicitud
    CNT_CREDIT_PROLONG INT, -- Número de veces que se prolongó el crédito del Bureau
    AMT_CREDIT_SUM DECIMAL(15, 2), -- Monto actual del crédito en el Bureau
    AMT_CREDIT_SUM_DEBT DECIMAL(15, 2), -- Deuda actual en el crédito del Bureau
    AMT_CREDIT_SUM_LIMIT DECIMAL(15, 2), -- Límite de crédito actual de la tarjeta de crédito reportada en el Bureau
    AMT_CREDIT_SUM_OVERDUE DECIMAL(15, 2), -- Monto actual vencido en el crédito del Bureau
    CREDIT_TYPE VARCHAR(50), -- Tipo de crédito en el Bureau (por ejemplo, 'Car', 'Cash', etc.)
    DAYS_CREDIT_UPDATE INT, -- Días antes de la solicitud en que se actualizó la última información sobre el crédito del Bureau
    AMT_ANNUITY DECIMAL(15, 2), -- Anualidad del crédito en el Bureau
    CONSTRAINT pk_bureau PRIMARY KEY (SK_ID_CURR, SK_BUREAU_ID)
);

SET ROLE postgres;
COPY bureau
FROM '/tmp/bureau_bkp.csv'
DELIMITER ','
CSV HEADER ; 