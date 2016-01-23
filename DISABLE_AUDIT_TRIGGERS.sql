-- Run this script to DISABLE all Audit Triggers --

ALTER TRIGGER TIGER."TRG_AUDIT_CARRIER_CUSTOMER" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_CUSTOMER" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_CUSTOMER_ORDER" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_EDI_FILE" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_IB_INVOICE" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_LN_ITM_CHARGE" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_LN_ITM_SUMMARY" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_OB_CUST_INVOICE" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_OB_CUST_INVOICE_INFO" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_PACKAGE" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_PARTY" DISABLE;

ALTER TRIGGER TIGER."TRG_AUDIT_SHIPMENT_INFO" DISABLE;