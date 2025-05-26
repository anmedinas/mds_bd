-- Crear la tabla application_train

DROP TABLE IF EXISTS application_train;

CREATE TABLE application_train (
    SK_ID_CURR INT PRIMARY KEY, -- ID único del cliente
    TARGET INT CHECK (TARGET IN (0, 1)), -- Variable objetivo (1 = dificultades de pago, 0 = sin dificultades)
    NAME_CONTRACT_TYPE VARCHAR(50), -- Tipo de contrato (cash o revolving)
    CODE_GENDER CHAR(1) CHECK (CODE_GENDER IN ('M', 'F', 'XNA')), -- Género del cliente
    FLAG_OWN_CAR CHAR(1) CHECK (FLAG_OWN_CAR IN ('Y', 'N')), -- Indicador de propiedad de un auto
    FLAG_OWN_REALTY CHAR(1) CHECK (FLAG_OWN_REALTY IN ('Y', 'N')), -- Indicador de propiedad de una casa
    CNT_CHILDREN INT CHECK (CNT_CHILDREN >= 0), -- Número de hijos
    AMT_INCOME_TOTAL DECIMAL(15, 2) CHECK (AMT_INCOME_TOTAL >= 0), -- Ingreso total del cliente
    AMT_CREDIT DECIMAL(15, 2), -- Monto del crédito solicitado
    AMT_ANNUITY DECIMAL(15, 2), -- Anualidad del préstamo
    AMT_GOODS_PRICE DECIMAL(15, 2), -- Precio de los bienes para los que se otorgó el préstamo
    NAME_TYPE_SUITE VARCHAR(50), -- Acompañante del cliente al solicitar el préstamo
    NAME_INCOME_TYPE VARCHAR(50), -- Tipo de ingreso del cliente
    NAME_EDUCATION_TYPE VARCHAR(50), -- Nivel educativo más alto alcanzado por el cliente
    NAME_FAMILY_STATUS VARCHAR(50), -- Estado civil del cliente
    NAME_HOUSING_TYPE VARCHAR(50), -- Situación de vivienda del cliente
    REGION_POPULATION_RELATIVE DECIMAL(5, 4), -- Población normalizada de la región donde vive el cliente
    DAYS_BIRTH INT CHECK (DAYS_BIRTH <= 0), -- Edad del cliente en días (negativo)
    DAYS_EMPLOYED INT, -- Días desde que el cliente comenzó su empleo actual (puede incluir valores anómalos)
    DAYS_REGISTRATION INT, -- Días desde que el cliente cambió su registro
    DAYS_ID_PUBLISH INT, -- Días desde que el cliente cambió su documento de identidad
    OWN_CAR_AGE INT CHECK (OWN_CAR_AGE >= 0), -- Edad del auto del cliente
    FLAG_MOBIL INT CHECK (FLAG_MOBIL IN (0, 1)), -- Indicador de si el cliente proporcionó un teléfono móvil
    FLAG_EMP_PHONE INT CHECK (FLAG_EMP_PHONE IN (0, 1)), -- Indicador de si el cliente proporcionó un teléfono del trabajo
    FLAG_WORK_PHONE INT CHECK (FLAG_WORK_PHONE IN (0, 1)), -- Indicador de si el cliente proporcionó un teléfono fijo
    FLAG_CONT_MOBILE INT CHECK (FLAG_CONT_MOBILE IN (0, 1)), -- Indicador de si el móvil es accesible
    FLAG_PHONE INT CHECK (FLAG_PHONE IN (0, 1)), -- Indicador de si el cliente proporcionó un teléfono fijo
    FLAG_EMAIL INT CHECK (FLAG_EMAIL IN (0, 1)), -- Indicador de si el cliente proporcionó un correo electrónico
    OCCUPATION_TYPE VARCHAR(50), -- Tipo de ocupación del cliente
    CNT_FAM_MEMBERS INT CHECK (CNT_FAM_MEMBERS >= 0), -- Número de miembros de la familia
    REGION_RATING_CLIENT INT CHECK (REGION_RATING_CLIENT IN (1, 2, 3)), -- Calificación de la región donde vive el cliente
    REGION_RATING_CLIENT_W_CITY INT CHECK (REGION_RATING_CLIENT_W_CITY IN (1, 2, 3)), -- Calificación de la región considerando la ciudad
    WEEKDAY_APPR_PROCESS_START VARCHAR(20), -- Día de la semana en que se solicitó el préstamo
    HOUR_APPR_PROCESS_START INT CHECK (HOUR_APPR_PROCESS_START BETWEEN 0 AND 23), -- Hora aproximada de la solicitud
    REG_REGION_NOT_LIVE_REGION INT CHECK (REG_REGION_NOT_LIVE_REGION IN (0, 1)), -- Indicador de si la dirección permanente no coincide con la dirección de contacto (a nivel de región)
    REG_REGION_NOT_WORK_REGION INT CHECK (REG_REGION_NOT_WORK_REGION IN (0, 1)), -- Indicador de si la dirección permanente no coincide con la dirección de trabajo (a nivel de región)
    LIVE_REGION_NOT_WORK_REGION INT CHECK (LIVE_REGION_NOT_WORK_REGION IN (0, 1)), -- Indicador de si la dirección de contacto no coincide con la dirección de trabajo (a nivel de región)
    REG_CITY_NOT_LIVE_CITY INT CHECK (REG_CITY_NOT_LIVE_CITY IN (0, 1)), -- Indicador de si la dirección permanente no coincide con la dirección de contacto (a nivel de ciudad)
    REG_CITY_NOT_WORK_CITY INT CHECK (REG_CITY_NOT_WORK_CITY IN (0, 1)), -- Indicador de si la dirección permanente no coincide con la dirección de trabajo (a nivel de ciudad)
    LIVE_CITY_NOT_WORK_CITY INT CHECK (LIVE_CITY_NOT_WORK_CITY IN (0, 1)), -- Indicador de si la dirección de contacto no coincide con la dirección de trabajo (a nivel de ciudad)
    ORGANIZATION_TYPE VARCHAR(50), -- Tipo de organización donde trabaja el cliente
    EXT_SOURCE_1 DECIMAL(10, 8), -- Puntuación normalizada de una fuente externa
    EXT_SOURCE_2 DECIMAL(10, 8), -- Puntuación normalizada de una fuente externa
    EXT_SOURCE_3 DECIMAL(10, 8), -- Puntuación normalizada de una fuente externa
    APARTMENTS_AVG DECIMAL(10, 8), -- Información normalizada sobre el tamaño promedio de los apartamentos
    BASEMENTAREA_AVG DECIMAL(10, 8), -- Información normalizada sobre el área promedio del sótano
    YEARS_BEGINEXPLUATATION_AVG DECIMAL(10, 8), -- Información normalizada sobre los años de explotación del edificio
    YEARS_BUILD_AVG DECIMAL(10, 8), -- Información normalizada sobre los años de construcción del edificio
    COMMONAREA_AVG DECIMAL(10, 8), -- Información normalizada sobre el área común promedio
    ELEVATORS_AVG DECIMAL(10, 8), -- Información normalizada sobre el número promedio de ascensores
    ENTRANCES_AVG DECIMAL(10, 8), -- Información normalizada sobre el número promedio de entradas
    FLOORSMAX_AVG DECIMAL(10, 8), -- Información normalizada sobre el número máximo de pisos
    FLOORSMIN_AVG DECIMAL(10, 8), -- Información normalizada sobre el número mínimo de pisos
    LANDAREA_AVG DECIMAL(10, 8), -- Información normalizada sobre el área de terreno promedio
    LIVINGAPARTMENTS_AVG DECIMAL(10, 8), -- Información normalizada sobre el número promedio de apartamentos habitables
    LIVINGAREA_AVG DECIMAL(10, 8), -- Información normalizada sobre el área habitable promedio
    NONLIVINGAPARTMENTS_AVG DECIMAL(10, 8), -- Información normalizada sobre el número promedio de apartamentos no habitables
    NONLIVINGAREA_AVG DECIMAL(10, 8), -- Información normalizada sobre el área no habitable promedio
    OBS_30_CNT_SOCIAL_CIRCLE INT, -- Observaciones de entorno social con 30 días de retraso
    DEF_30_CNT_SOCIAL_CIRCLE INT, -- Observaciones de entorno social con incumplimiento de 30 días
    OBS_60_CNT_SOCIAL_CIRCLE INT, -- Observaciones de entorno social con 60 días de retraso
    DEF_60_CNT_SOCIAL_CIRCLE INT, -- Observaciones de entorno social con incumplimiento de 60 días
    DAYS_LAST_PHONE_CHANGE INT, -- Días desde el último cambio de teléfono
    FLAG_DOCUMENT_2 INT CHECK (FLAG_DOCUMENT_2 IN (0, 1)), -- Indicador de si se proporcionó el documento 2
    FLAG_DOCUMENT_3 INT CHECK (FLAG_DOCUMENT_3 IN (0, 1)), -- Indicador de si se proporcionó el documento 3
    FLAG_DOCUMENT_4 INT CHECK (FLAG_DOCUMENT_4 IN (0, 1)), -- Indicador de si se proporcionó el documento 4
    -- Agregar más columnas FLAG_DOCUMENT según sea necesario
    AMT_REQ_CREDIT_BUREAU_HOUR INT, -- Consultas al buró de crédito una hora antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_DAY INT, -- Consultas al buró de crédito un día antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_WEEK INT, -- Consultas al buró de crédito una semana antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_MON INT, -- Consultas al buró de crédito un mes antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_QRT INT, -- Consultas al buró de crédito tres meses antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_YEAR INT -- Consultas al buró de crédito un año antes de la solicitud
);
