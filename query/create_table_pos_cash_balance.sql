-- Crear la tabla pos_cash_balance

DROP TABLE IF EXISTS pos_cash_balance;

CREATE TABLE pos_cash_balance (
    SK_ID_PREV INT, -- ID único del crédito previo en Home Credit
    SK_ID_CURR INT, -- ID único del cliente
    MONTHS_BALANCE INT, -- Mes relativo al balance (0 = mes actual, valores negativos = meses anteriores)
    CNT_INSTALMENT INT, -- Número total de cuotas del crédito previo
    CNT_INSTALMENT_FUTURE INT, -- Número de cuotas restantes por pagar en el crédito previo
    NAME_CONTRACT_STATUS VARCHAR(50), -- Estado del contrato durante el mes (por ejemplo, 'Active', 'Completed')
    SK_DPD INT, -- Días de retraso en el pago durante el mes
    SK_DPD_DEF INT -- Días de retraso en el pago con tolerancia durante el mes
);