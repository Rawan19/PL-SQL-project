BEGIN

UPDATE  contracts
SET PAYMENTS_INSTALLMENTS_NO = CALC_PAYMENTS_NO(CONTRACT_END_DATE, CONTRACT_START_DATE, CONTRACT_PAYMENT_TYPE );

END;