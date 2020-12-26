CREATE OR REPLACE FUNCTION CALC_PAYMENTS_NO(CONTRACT_END_DATE       DATE, CONTRACT_START_DATE       DATE, CONTRACT_PAYMENT_TYPE     VARCHAR2 )
RETURN NUMBER

IS

V_PAYMENTS_NO       NUMBER;
BEGIN
V_PAYMENTS_NO := MONTHS_BETWEEN(CONTRACT_END_DATE, CONTRACT_START_DATE) / CASE CONTRACT_PAYMENT_TYPE
                                                                                                                                                                    WHEN 'Annual'
                                                                                                                                                                    THEN 12
                                                                                                                                                                    WHEN 'Quarter'
                                                                                                                                                                    THEN 3
                                                                                                                                                                    WHEN 'Monthly'
                                                                                                                                                                    THEN 1
                                                                                                                                                                    WHEN 'Half-Annual'
                                                                                                                                                                    THEN 6
                                                                                                                                                                    END;

RETURN V_PAYMENTS_NO;

END;