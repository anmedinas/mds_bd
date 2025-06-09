DROP TABLE IF EXISTS application_test;

-- Crear la tabla application_test
CREATE TABLE application_test (
    SK_ID_CURR INT, -- ID del préstamo en nuestra muestra
    NAME_CONTRACT_TYPE VARCHAR(50), -- Tipo de contrato del préstamo (Cash loans, Revolving loans)
    CODE_GENDER CHAR(1), -- Género del cliente ('M', 'F')
    FLAG_OWN_CAR CHAR(1), -- Indicador si el cliente posee un auto ('Y', 'N')
    FLAG_OWN_REALTY CHAR(1), -- Indicador si el cliente posee una casa o departamento ('Y', 'N')
    CNT_CHILDREN INT, -- Número de hijos del cliente
    AMT_INCOME_TOTAL DECIMAL(15, 2), -- Ingreso total del cliente
    AMT_CREDIT DECIMAL(15, 2), -- Monto del crédito del préstamo
    AMT_ANNUITY DECIMAL(15, 2), -- Anualidad del préstamo
    AMT_GOODS_PRICE DECIMAL(15, 2), -- Precio de los bienes para los cuales se otorgó el préstamo
    NAME_TYPE_SUITE VARCHAR(50), -- Acompañante del cliente al solicitar el préstamo
    NAME_INCOME_TYPE VARCHAR(50), -- Tipo de ingreso del cliente
    NAME_EDUCATION_TYPE VARCHAR(50), -- Nivel educativo más alto alcanzado por el cliente
    NAME_FAMILY_STATUS VARCHAR(50), -- Estado civil del cliente
    NAME_HOUSING_TYPE VARCHAR(50), -- Situación de vivienda del cliente
    REGION_POPULATION_RELATIVE DECIMAL(10, 8), -- Población normalizada de la región donde vive el cliente
    DAYS_BIRTH INT, -- Edad del cliente en días al momento de la solicitud
    DAYS_EMPLOYED INT, -- Días desde que el cliente comenzó su empleo actual
    DAYS_REGISTRATION DECIMAL(15, 2), -- Días desde que el cliente cambió su registro
    DAYS_ID_PUBLISH INT, -- Días desde que el cliente cambió el documento de identidad
    OWN_CAR_AGE INT, -- Edad del auto del cliente
    FLAG_MOBIL INT, -- Indicador si el cliente proporcionó un teléfono móvil (1=Sí, 0=No)
    FLAG_EMP_PHONE INT, -- Indicador si el cliente proporcionó un teléfono del trabajo (1=Sí, 0=No)
    FLAG_WORK_PHONE INT, -- Indicador si el cliente proporcionó un teléfono fijo (1=Sí, 0=No)
    FLAG_CONT_MOBILE INT, -- Indicador si el teléfono móvil es accesible (1=Sí, 0=No)
    FLAG_PHONE INT, -- Indicador si el cliente proporcionó un teléfono fijo (1=Sí, 0=No)
    FLAG_EMAIL INT, -- Indicador si el cliente proporcionó un correo electrónico (1=Sí, 0=No)
    OCCUPATION_TYPE VARCHAR(50), -- Tipo de ocupación del cliente
    CNT_FAM_MEMBERS DECIMAL(15, 2), -- Número de miembros de la familia del cliente
    REGION_RATING_CLIENT INT, -- Calificación de la región donde vive el cliente (1, 2, 3)
    REGION_RATING_CLIENT_W_CITY INT, -- Calificación de la región considerando la ciudad (1, 2, 3)
    WEEKDAY_APPR_PROCESS_START VARCHAR(20), -- Día de la semana en que el cliente solicitó el préstamo
    HOUR_APPR_PROCESS_START INT, -- Hora aproximada en que el cliente solicitó el préstamo
    REG_REGION_NOT_LIVE_REGION INT, -- Indicador si la dirección permanente del cliente no coincide con la dirección de contacto (1=Diferente, 0=Igual)
    REG_REGION_NOT_WORK_REGION INT, -- Indicador si la dirección permanente del cliente no coincide con la dirección del trabajo (1=Diferente, 0=Igual)
    LIVE_REGION_NOT_WORK_REGION INT, -- Indicador si la dirección de contacto del cliente no coincide con la dirección del trabajo (1=Diferente, 0=Igual)
    REG_CITY_NOT_LIVE_CITY INT, -- Indicador si la dirección permanente del cliente no coincide con la dirección de contacto (1=Diferente, 0=Igual)
    REG_CITY_NOT_WORK_CITY INT, -- Indicador si la dirección permanente del cliente no coincide con la dirección del trabajo (1=Diferente, 0=Igual)
    LIVE_CITY_NOT_WORK_CITY INT, -- Indicador si la dirección de contacto del cliente no coincide con la dirección del trabajo (1=Diferente, 0=Igual)
    ORGANIZATION_TYPE VARCHAR(50), -- Tipo de organización donde trabaja el cliente
    EXT_SOURCE_1 DECIMAL(15, 8), -- Puntuación normalizada de una fuente externa
    EXT_SOURCE_2 DECIMAL(15, 8), -- Puntuación normalizada de una fuente externa
    EXT_SOURCE_3 DECIMAL(15, 8), -- Puntuación normalizada de una fuente externa
    APARTMENTS_AVG DECIMAL(15, 8), -- Información normalizada sobre el tamaño promedio de los apartamentos
    BASEMENTAREA_AVG DECIMAL(15, 8), -- Información normalizada sobre el área promedio del sótano
    YEARS_BEGINEXPLUATATION_AVG DECIMAL(15, 8), -- Información normalizada sobre los años promedio desde el inicio de la explotación
    YEARS_BUILD_AVG DECIMAL(15, 8), -- Información normalizada sobre los años promedio desde la construcción
    COMMONAREA_AVG DECIMAL(15, 8), -- Información normalizada sobre el área común promedio
    ELEVATORS_AVG DECIMAL(15, 8), -- Información normalizada sobre el número promedio de ascensores
    ENTRANCES_AVG DECIMAL(15, 8), -- Información normalizada sobre el número promedio de entradas
    FLOORSMAX_AVG DECIMAL(15, 8), -- Información normalizada sobre el número máximo promedio de pisos
    FLOORSMIN_AVG DECIMAL(15, 8), -- Información normalizada sobre el número mínimo promedio de pisos
    LANDAREA_AVG DECIMAL(15, 8), -- Información normalizada sobre el área promedio del terreno
    LIVINGAPARTMENTS_AVG DECIMAL(15, 8), -- Información normalizada sobre el número promedio de apartamentos habitables
    LIVINGAREA_AVG DECIMAL(15, 8), -- Información normalizada sobre el área promedio habitable
    NONLIVINGAPARTMENTS_AVG DECIMAL(15, 8), -- Información normalizada sobre el número promedio de apartamentos no habitables
    NONLIVINGAREA_AVG DECIMAL(15, 8), -- Información normalizada sobre el área promedio no habitable
    APARTMENTS_MODE DECIMAL(15, 8), -- Información normalizada sobre el tamaño modal de los apartamentos
    BASEMENTAREA_MODE DECIMAL(15, 8), -- Información normalizada sobre el área modal del sótano
    YEARS_BEGINEXPLUATATION_MODE DECIMAL(15, 8), -- Información normalizada sobre los años modales desde el inicio de la explotación
    YEARS_BUILD_MODE DECIMAL(15, 8), -- Información normalizada sobre los años modales desde la construcción
    COMMONAREA_MODE DECIMAL(15, 8), -- Información normalizada sobre el área común modal
    ELEVATORS_MODE DECIMAL(15, 8), -- Información normalizada sobre el número modal de ascensores
    ENTRANCES_MODE DECIMAL(15, 8), -- Información normalizada sobre el número modal de entradas
    FLOORSMAX_MODE DECIMAL(15, 8), -- Información normalizada sobre el número máximo modal de pisos
    FLOORSMIN_MODE DECIMAL(15, 8), -- Información normalizada sobre el número mínimo modal de pisos
    LANDAREA_MODE DECIMAL(15, 8), -- Información normalizada sobre el área modal del terreno
    LIVINGAPARTMENTS_MODE DECIMAL(15, 8), -- Información normalizada sobre el número modal de apartamentos habitables
    LIVINGAREA_MODE DECIMAL(15, 8), -- Información normalizada sobre el área modal habitable
    NONLIVINGAPARTMENTS_MODE DECIMAL(15, 8), -- Información normalizada sobre el número modal de apartamentos no habitables
    NONLIVINGAREA_MODE DECIMAL(15, 8), -- Información normalizada sobre el área modal no habitable
    APARTMENTS_MEDI DECIMAL(15, 8), -- Información normalizada sobre el tamaño mediano de los apartamentos
    BASEMENTAREA_MEDI DECIMAL(15, 8), -- Información normalizada sobre el área mediana del sótano
    YEARS_BEGINEXPLUATATION_MEDI DECIMAL(15, 8), -- Información normalizada sobre los años medianos desde el inicio de la explotación
    YEARS_BUILD_MEDI DECIMAL(15, 8), -- Información normalizada sobre los años medianos desde la construcción
    COMMONAREA_MEDI DECIMAL(15, 8), -- Información normalizada sobre el área común mediana
    ELEVATORS_MEDI DECIMAL(15, 8), -- Información normalizada sobre el número mediano de ascensores
    ENTRANCES_MEDI DECIMAL(15, 8), -- Información normalizada sobre el número mediano de entradas
    FLOORSMAX_MEDI DECIMAL(15, 8), -- Información normalizada sobre el número máximo mediano de pisos
    FLOORSMIN_MEDI DECIMAL(15, 8), -- Información normalizada sobre el número mínimo mediano de pisos
    LANDAREA_MEDI DECIMAL(15, 8), -- Información normalizada sobre el área mediana del terreno
    LIVINGAPARTMENTS_MEDI DECIMAL(15, 8), -- Información normalizada sobre el número mediano de apartamentos habitables
    LIVINGAREA_MEDI DECIMAL(15, 8), -- Información normalizada sobre el área mediana habitable
    NONLIVINGAPARTMENTS_MEDI DECIMAL(15, 8), -- Información normalizada sobre el número mediano de apartamentos no habitables
    NONLIVINGAREA_MEDI DECIMAL(15, 8), -- Información normalizada sobre el área mediana no habitable
    FONDKAPREMONT_MODE VARCHAR(50), -- Información sobre el fondo de reparación
    HOUSETYPE_MODE VARCHAR(50), -- Tipo de casa
    TOTALAREA_MODE DECIMAL(15, 8), -- Área total normalizada
    WALLSMATERIAL_MODE VARCHAR(50), -- Material de las paredes
    EMERGENCYSTATE_MODE VARCHAR(50), -- Estado de emergencia
    OBS_30_CNT_SOCIAL_CIRCLE DECIMAL(15, 2), -- Observaciones de círculo social con 30 días de retraso
    DEF_30_CNT_SOCIAL_CIRCLE DECIMAL(15, 2), -- Observaciones de círculo social con 30 días de retraso predeterminado
    OBS_60_CNT_SOCIAL_CIRCLE DECIMAL(15, 2), -- Observaciones de círculo social con 60 días de retraso
    DEF_60_CNT_SOCIAL_CIRCLE DECIMAL(15, 2), -- Observaciones de círculo social con 60 días de retraso predeterminado
    DAYS_LAST_PHONE_CHANGE DECIMAL(15, 2), -- Días desde que el cliente cambió de teléfono
    FLAG_DOCUMENT_2 INT, -- Indicador si el cliente proporcionó el documento 2
    FLAG_DOCUMENT_3 INT, -- Indicador si el cliente proporcionó el documento 3
    FLAG_DOCUMENT_4 INT, -- Indicador si el cliente proporcionó el documento 4
    FLAG_DOCUMENT_5 INT, -- Indicador si el cliente proporcionó el documento 5
    FLAG_DOCUMENT_6 INT, -- Indicador si el cliente proporcionó el documento 6
    FLAG_DOCUMENT_7 INT, -- Indicador si el cliente proporcionó el documento 7
    FLAG_DOCUMENT_8 INT, -- Indicador si el cliente proporcionó el documento 8
    FLAG_DOCUMENT_9 INT, -- Indicador si el cliente proporcionó el documento 9
    FLAG_DOCUMENT_10 INT, -- Indicador si el cliente proporcionó el documento 10
    FLAG_DOCUMENT_11 INT, -- Indicador si el cliente proporcionó el documento 11
    FLAG_DOCUMENT_12 INT, -- Indicador si el cliente proporcionó el documento 12
    FLAG_DOCUMENT_13 INT, -- Indicador si el cliente proporcionó el documento 13
    FLAG_DOCUMENT_14 INT, -- Indicador si el cliente proporcionó el documento 14
    FLAG_DOCUMENT_15 INT, -- Indicador si el cliente proporcionó el documento 15
    FLAG_DOCUMENT_16 INT, -- Indicador si el cliente proporcionó el documento 16
    FLAG_DOCUMENT_17 INT, -- Indicador si el cliente proporcionó el documento 17
    FLAG_DOCUMENT_18 INT, -- Indicador si el cliente proporcionó el documento 18
    FLAG_DOCUMENT_19 INT, -- Indicador si el cliente proporcionó el documento 19
    FLAG_DOCUMENT_20 INT, -- Indicador si el cliente proporcionó el documento 20
    FLAG_DOCUMENT_21 INT, -- Indicador si el cliente proporcionó el documento 21
    AMT_REQ_CREDIT_BUREAU_HOUR DECIMAL(15, 2), -- Consultas al buró de crédito una hora antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_DAY DECIMAL(15, 2), -- Consultas al buró de crédito un día antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_WEEK DECIMAL(15, 2), -- Consultas al buró de crédito una semana antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_MON DECIMAL(15, 2), -- Consultas al buró de crédito un mes antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_QRT DECIMAL(15, 2), -- Consultas al buró de crédito tres meses antes de la solicitud
    AMT_REQ_CREDIT_BUREAU_YEAR DECIMAL(15, 2), -- Consultas al buró de crédito un año antes de la solicitud
    CONSTRAINT SK_ID_CURR PRIMARY KEY (SK_ID_CURR)
);

SET ROLE postgres;
COPY application_test
FROM '/tmp/application_test_bkp.csv'
DELIMITER ','
CSV HEADER ; 