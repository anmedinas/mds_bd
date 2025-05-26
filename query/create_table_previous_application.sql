-- Crear la tabla previous_application

DROP TABLE IF EXISTS previous_application;

CREATE TABLE previous_application (
    SK_ID_PREV INT, -- ID único del crédito previo en Home Credit
    SK_ID_CURR INT, -- ID único del cliente
    NAME_CONTRACT_TYPE VARCHAR(50), -- Tipo de contrato del crédito previo (Cash loan, POS, etc.)
    AMT_ANNUITY DECIMAL(15, 2), -- Anualidad del crédito previo
    AMT_APPLICATION DECIMAL(15, 2), -- Monto solicitado en el crédito previo
    AMT_CREDIT DECIMAL(15, 2), -- Monto final aprobado en el crédito previo
    AMT_DOWN_PAYMENT DECIMAL(15, 2), -- Pago inicial del crédito previo
    AMT_GOODS_PRICE DECIMAL(15, 2), -- Precio de los bienes solicitados en el crédito previo
    WEEKDAY_APPR_PROCESS_START VARCHAR(20), -- Día de la semana en que se procesó la solicitud
    HOUR_APPR_PROCESS_START INT, -- Hora aproximada en que se procesó la solicitud
    FLAG_LAST_APPL_PER_CONTRACT CHAR(1) CHECK (FLAG_LAST_APPL_PER_CONTRACT IN ('Y', 'N')), -- Indicador de si fue la última solicitud para el contrato
    NFLAG_LAST_APPL_IN_DAY INT CHECK (NFLAG_LAST_APPL_IN_DAY IN (0, 1)), -- Indicador de si fue la última solicitud del día
    RATE_DOWN_PAYMENT DECIMAL(10, 8), -- Tasa de pago inicial normalizada
    RATE_INTEREST_PRIMARY DECIMAL(10, 8), -- Tasa de interés primaria normalizada
    RATE_INTEREST_PRIVILEGED DECIMAL(10, 8), -- Tasa de interés privilegiada normalizada
    NAME_CASH_LOAN_PURPOSE VARCHAR(50), -- Propósito del préstamo en efectivo
    NAME_CONTRACT_STATUS VARCHAR(50), -- Estado del contrato (aprobado, cancelado, etc.)
    DAYS_DECISION INT, -- Días relativos a la decisión sobre la solicitud
    NAME_PAYMENT_TYPE VARCHAR(50), -- Método de pago elegido por el cliente
    CODE_REJECT_REASON VARCHAR(50), -- Razón por la que se rechazó la solicitud
    NAME_TYPE_SUITE VARCHAR(50), -- Quién acompañó al cliente al solicitar el crédito
    NAME_CLIENT_TYPE VARCHAR(50), -- Tipo de cliente (nuevo o recurrente)
    NAME_GOODS_CATEGORY VARCHAR(50), -- Categoría de bienes solicitados
    NAME_PORTFOLIO VARCHAR(50), -- Portafolio del crédito (CASH, POS, CAR, etc.)
    NAME_PRODUCT_TYPE VARCHAR(50), -- Tipo de producto (x-sell o walk-in)
    CHANNEL_TYPE VARCHAR(50), -- Canal a través del cual se adquirió al cliente
    SELLERPLACE_AREA INT, -- Área de venta del lugar del vendedor
    NAME_SELLER_INDUSTRY VARCHAR(50), -- Industria del vendedor
    CNT_PAYMENT INT, -- Número de cuotas del crédito previo
    NAME_YIELD_GROUP VARCHAR(50), -- Grupo de rendimiento (bajo, medio, alto)
    PRODUCT_COMBINATION VARCHAR(50), -- Combinación detallada del producto
    DAYS_FIRST_DRAWING INT, -- Días relativos al primer desembolso
    DAYS_FIRST_DUE INT, -- Días relativos al primer vencimiento
    DAYS_LAST_DUE_1ST_VERSION INT, -- Días relativos al primer vencimiento en la primera versión
    DAYS_LAST_DUE INT, -- Días relativos al último vencimiento
    DAYS_TERMINATION INT, -- Días relativos a la terminación esperada
    NFLAG_INSURED_ON_APPROVAL INT CHECK (NFLAG_INSURED_ON_APPROVAL IN (0, 1)) -- Indicador de si se solicitó seguro
);