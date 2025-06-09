-- Crear la tabla credit_card_balance

DROP TABLE IF EXISTS credit_card_balance; 

CREATE TABLE credit_card_balance (
    SK_ID_PREV INT, -- ID único de la solicitud previa
    SK_ID_CURR INT, -- ID único del cliente
    MONTHS_BALANCE INT, -- Meses relativos al balance (0 = mes actual)
    AMT_BALANCE DECIMAL(15, 2), -- Balance del crédito
    AMT_CREDIT_LIMIT_ACTUAL DECIMAL(15, 2), -- Límite de crédito actual
    AMT_DRAWINGS_ATM_CURRENT DECIMAL(15, 2), -- Monto de retiros en cajeros automáticos
    AMT_DRAWINGS_CURRENT DECIMAL(15, 2), -- Monto total de retiros
    AMT_DRAWINGS_OTHER_CURRENT DECIMAL(15, 2), -- Monto de otros retiros
    AMT_DRAWINGS_POS_CURRENT DECIMAL(15, 2), -- Monto de retiros en puntos de venta
    AMT_INST_MIN_REGULARITY DECIMAL(15, 2), -- Pago mínimo regular
    AMT_PAYMENT_CURRENT DECIMAL(15, 2), -- Pago actual
    AMT_PAYMENT_TOTAL_CURRENT DECIMAL(15, 2), -- Pago total actual
    AMT_RECEIVABLE_PRINCIPAL DECIMAL(15, 2), -- Principal pendiente
    AMT_RECIVABLE DECIMAL(15, 2), -- Monto pendiente
    AMT_TOTAL_RECEIVABLE DECIMAL(15, 2), -- Total pendiente
    CNT_DRAWINGS_ATM_CURRENT INT, -- Número de retiros en cajeros automáticos (**en csv viene como float**)
    CNT_DRAWINGS_CURRENT INT, -- Número total de retiros
    CNT_DRAWINGS_OTHER_CURRENT INT, -- Número de otros retiros
    CNT_DRAWINGS_POS_CURRENT INT, -- Número de retiros en puntos de venta
    CNT_INSTALMENT_MATURE_CUM INT, -- Número acumulado de cuotas vencidas
    NAME_CONTRACT_STATUS VARCHAR(50), -- Estado del contrato (por ejemplo, 'Active', 'Completed')
    SK_DPD INT, -- Días de retraso en el pago
    SK_DPD_DEF INT, -- Días de retraso en el pago con incumplimiento
    CONSTRAINT pk_cc_balance PRIMARY KEY (SK_ID_PREV, SK_ID_CURR, MONTHS_BALANCE)
);

SET ROLE postgres;
COPY credit_card_balance
FROM '/tmp/credit_card_balance_bkp.csv'
DELIMITER ','
CSV HEADER ; 