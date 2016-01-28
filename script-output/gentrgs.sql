CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_CARRIER_CUSTOMER"
BEFORE DELETE OR UPDATE ON CARRIER_CUSTOMER
FOR EACH ROW
BEGIN
IF UPDATING THEN

	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'CARRIER_CUSTOMER', :NEW.ID, 'U' );                                                                                                                        
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'CARRIER_CUSTOMER', :OLD.ID, 'D' );                                                                                                                        
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CARRIER_CUSTOMER_NO', 'VARCHAR2', :NEW.CARRIER_CUSTOMER_NO, :OLD.CARRIER_CUSTOMER_NO);                                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CARRIER_ID', 'NUMBER', :NEW.CARRIER_ID, :OLD.CARRIER_ID);                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CUSTOMER_ID', 'NUMBER', :NEW.CUSTOMER_ID, :OLD.CUSTOMER_ID);                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IS_ACTIVE', 'NUMBER', :NEW.IS_ACTIVE, :OLD.IS_ACTIVE);                                                                                                            
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_CUSTOMER"
BEFORE DELETE OR UPDATE ON CUSTOMER
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'CUSTOMER', :NEW.ID, 'U' );                                                                                                                                
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'CUSTOMER', :OLD.ID, 'D' );                                                                                                                                
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WWEX_ID', 'VARCHAR2', :NEW.WWEX_ID, :OLD.WWEX_ID);                                                                                                                
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'BILL_TO_CUSTOMER_ID', 'NUMBER', :NEW.BILL_TO_CUSTOMER_ID, :OLD.BILL_TO_CUSTOMER_ID);                                                                              
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_CUSTOMER_ORDER"
BEFORE DELETE OR UPDATE ON CUSTOMER_ORDER
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'CUSTOMER_ORDER', :NEW.ID, 'U' );                                                                                                                          
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'CUSTOMER_ORDER', :OLD.ID, 'D' );                                                                                                                          
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IS_CROSS_BILL_CYCLE_ADJUSTMENT', 'NUMBER', :NEW.IS_CROSS_BILL_CYCLE_ADJUSTMENT, :OLD.IS_CROSS_BILL_CYCLE_ADJUSTMENT);                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IS_VOIDED', 'NUMBER', :NEW.IS_VOIDED, :OLD.IS_VOIDED);                                                                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SOURCE_TYPE', 'VARCHAR2', :NEW.SOURCE_TYPE, :OLD.SOURCE_TYPE);                                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'STATUS', 'VARCHAR2', :NEW.STATUS, :OLD.STATUS);                                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'YOU_OWE_AS', 'VARCHAR2', :NEW.YOU_OWE_AS, :OLD.YOU_OWE_AS);                                                                                                       

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ADJUSTMENT_REASON_TYPE_ID', 'NUMBER', :NEW.ADJUSTMENT_REASON_TYPE_ID, :OLD.ADJUSTMENT_REASON_TYPE_ID);                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IB_INVOICE_ID', 'NUMBER', :NEW.IB_INVOICE_ID, :OLD.IB_INVOICE_ID);                                                                                                
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SHIP_FROM_PARTY_ID', 'NUMBER', :NEW.SHIP_FROM_PARTY_ID, :OLD.SHIP_FROM_PARTY_ID);                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SHIP_TO_PARTY_ID', 'NUMBER', :NEW.SHIP_TO_PARTY_ID, :OLD.SHIP_TO_PARTY_ID);                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SHIPMENT_INFO_ID', 'NUMBER', :NEW.SHIPMENT_INFO_ID, :OLD.SHIPMENT_INFO_ID);                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'BILL_OF_LADING_NO', 'VARCHAR2', :NEW.BILL_OF_LADING_NO, :OLD.BILL_OF_LADING_NO);                                                                                  
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_EDI_FILE"
BEFORE DELETE OR UPDATE ON EDI_FILE
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'EDI_FILE', :NEW.ID, 'U' );                                                                                                                                
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'EDI_FILE', :OLD.ID, 'D' );                                                                                                                                
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ARCHIVE_URI', 'VARCHAR2', :NEW.ARCHIVE_URI, :OLD.ARCHIVE_URI);                                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_PROCESSED', 'TIMESTAMP(6)', :NEW.DATE_PROCESSED, :OLD.DATE_PROCESSED);                                                                                       

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_RECEIVED', 'TIMESTAMP(6)', :NEW.DATE_RECEIVED, :OLD.DATE_RECEIVED);                                                                                          
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'FILE_CREATION_DATE', 'TIMESTAMP(6)', :NEW.FILE_CREATION_DATE, :OLD.FILE_CREATION_DATE);                                                                           
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'FILE_NAME', 'VARCHAR2', :NEW.FILE_NAME, :OLD.FILE_NAME);                                                                                                          
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'STATE', 'VARCHAR2', :NEW.STATE, :OLD.STATE);                                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CARRIER_ID', 'NUMBER', :NEW.CARRIER_ID, :OLD.CARRIER_ID);                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'EDI_TYPE', 'VARCHAR2', :NEW.EDI_TYPE, :OLD.EDI_TYPE);                                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INCLUDED_TRANSACTION_SETS', 'NUMBER', :NEW.INCLUDED_TRANSACTION_SETS, :OLD.INCLUDED_TRANSACTION_SETS);                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ACCEPTED_TRANSACTION_SETS', 'NUMBER', :NEW.ACCEPTED_TRANSACTION_SETS, :OLD.ACCEPTED_TRANSACTION_SETS);                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'RECEIVED_TRANSACTION_SETS', 'NUMBER', :NEW.RECEIVED_TRANSACTION_SETS, :OLD.RECEIVED_TRANSACTION_SETS);                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'MD5_HASH', 'VARCHAR2', :NEW.MD5_HASH, :OLD.MD5_HASH);                                                                                                             
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_IB_INVOICE"
BEFORE DELETE OR UPDATE ON IB_INVOICE
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'IB_INVOICE', :NEW.ID, 'U' );                                                                                                                              
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'IB_INVOICE', :OLD.ID, 'D' );                                                                                                                              
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CURRENCY_CODE', 'VARCHAR2', :NEW.CURRENCY_CODE, :OLD.CURRENCY_CODE);                                                                                              
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DELIVERY_DATE', 'DATE', :NEW.DELIVERY_DATE, :OLD.DELIVERY_DATE);                                                                                                  
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_DATE', 'DATE', :NEW.INVOICE_DATE, :OLD.INVOICE_DATE);                                                                                                     
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_DUE_DATE', 'DATE', :NEW.INVOICE_DUE_DATE, :OLD.INVOICE_DUE_DATE);                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_NO', 'VARCHAR2', :NEW.INVOICE_NO, :OLD.INVOICE_NO);                                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_COST', 'FLOAT', :NEW.TOTAL_COST, :OLD.TOTAL_COST);                                                                                                          
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'BILL_TO_PARTY_ID', 'NUMBER', :NEW.BILL_TO_PARTY_ID, :OLD.BILL_TO_PARTY_ID);                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CARRIER_ID', 'NUMBER', :NEW.CARRIER_ID, :OLD.CARRIER_ID);                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CUSTOMER_ID', 'NUMBER', :NEW.CUSTOMER_ID, :OLD.CUSTOMER_ID);                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'BUSINESS_TYPE', 'VARCHAR2', :NEW.BUSINESS_TYPE, :OLD.BUSINESS_TYPE);                                                                                              
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_LN_ITM_CHARGE"
BEFORE DELETE OR UPDATE ON LN_ITM_CHARGE
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'LN_ITM_CHARGE', :NEW.ID, 'U' );                                                                                                                           
ELSE

	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'LN_ITM_CHARGE', :OLD.ID, 'D' );                                                                                                                           
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CHARGE', 'NUMBER', :NEW.CHARGE, :OLD.CHARGE);                                                                                                                     
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LADING_VALUE', 'NUMBER', :NEW.LADING_VALUE, :OLD.LADING_VALUE);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LINE_NO', 'NUMBER', :NEW.LINE_NO, :OLD.LINE_NO);                                                                                                                  
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CHARGE_AND_ADJUSTMENT_TYPE_ID', 'NUMBER', :NEW.CHARGE_AND_ADJUSTMENT_TYPE_ID, :OLD.CHARGE_AND_ADJUSTMENT_TYPE_ID);                                                
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LN_ITM_SUMMARY_ID', 'NUMBER', :NEW.LN_ITM_SUMMARY_ID, :OLD.LN_ITM_SUMMARY_ID);                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'EDI_FILE_ID', 'NUMBER', :NEW.EDI_FILE_ID, :OLD.EDI_FILE_ID);                                                                                                      
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_LN_ITM_SUMMARY"
BEFORE DELETE OR UPDATE ON LN_ITM_SUMMARY
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'LN_ITM_SUMMARY', :NEW.ID, 'U' );                                                                                                                          
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'LN_ITM_SUMMARY', :OLD.ID, 'D' );                                                                                                                          
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CATEGORY', 'VARCHAR2', :NEW.CATEGORY, :OLD.CATEGORY);                                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'COST', 'NUMBER', :NEW.COST, :OLD.COST);                                                                                                                           
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'FINAL_RETAIL', 'NUMBER', :NEW.FINAL_RETAIL, :OLD.FINAL_RETAIL);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LIST_PRICE', 'NUMBER', :NEW.LIST_PRICE, :OLD.LIST_PRICE);                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'RETAIL', 'NUMBER', :NEW.RETAIL, :OLD.RETAIL);                                                                                                                     
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'STATUS', 'VARCHAR2', :NEW.STATUS, :OLD.STATUS);                                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CHARGE_AND_ADJUSTMENT_TYPE_ID', 'NUMBER', :NEW.CHARGE_AND_ADJUSTMENT_TYPE_ID, :OLD.CHARGE_AND_ADJUSTMENT_TYPE_ID);                                                
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CUSTOMER_ORDER_ID', 'NUMBER', :NEW.CUSTOMER_ORDER_ID, :OLD.CUSTOMER_ORDER_ID);                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'PACKAGE_ID', 'NUMBER', :NEW.PACKAGE_ID, :OLD.PACKAGE_ID);                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'OB_CUST_INVOICE_ID', 'NUMBER', :NEW.OB_CUST_INVOICE_ID, :OLD.OB_CUST_INVOICE_ID);                                                                                 
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_OB_CUST_INVOICE"
BEFORE DELETE OR UPDATE ON OB_CUST_INVOICE
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'OB_CUST_INVOICE', :NEW.ID, 'U' );                                                                                                                         
ELSE

	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'OB_CUST_INVOICE', :OLD.ID, 'D' );                                                                                                                         
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_LIST_PRICE', 'NUMBER', :NEW.TOTAL_LIST_PRICE, :OLD.TOTAL_LIST_PRICE);                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_RETAIL', 'NUMBER', :NEW.TOTAL_RETAIL, :OLD.TOTAL_RETAIL);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CUSTOMER_ID', 'NUMBER', :NEW.CUSTOMER_ID, :OLD.CUSTOMER_ID);                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'OB_CUST_INVOICE_INFO_ID', 'NUMBER', :NEW.OB_CUST_INVOICE_INFO_ID, :OLD.OB_CUST_INVOICE_INFO_ID);                                                                  
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IS_FEE_INVOICE', 'NUMBER', :NEW.IS_FEE_INVOICE, :OLD.IS_FEE_INVOICE);                                                                                             
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_OB_CUST_INVOICE_INFO"
BEFORE DELETE OR UPDATE ON OB_CUST_INVOICE_INFO
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'OB_CUST_INVOICE_INFO', :NEW.ID, 'U' );                                                                                                                    
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'OB_CUST_INVOICE_INFO', :OLD.ID, 'D' );                                                                                                                    
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_DATE', 'DATE', :NEW.INVOICE_DATE, :OLD.INVOICE_DATE);                                                                                                     
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_DUE_DATE', 'DATE', :NEW.INVOICE_DUE_DATE, :OLD.INVOICE_DUE_DATE);                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_NO', 'VARCHAR2', :NEW.INVOICE_NO, :OLD.INVOICE_NO);                                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'INVOICE_STATE', 'VARCHAR2', :NEW.INVOICE_STATE, :OLD.INVOICE_STATE);                                                                                              
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'BUSINESS_TYPE', 'VARCHAR2', :NEW.BUSINESS_TYPE, :OLD.BUSINESS_TYPE);                                                                                              
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_RETAIL', 'NUMBER', :NEW.TOTAL_RETAIL, :OLD.TOTAL_RETAIL);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_LIST_PRICE', 'NUMBER', :NEW.TOTAL_LIST_PRICE, :OLD.TOTAL_LIST_PRICE);                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'BILL_TO_CUSTOMER_ID', 'NUMBER', :NEW.BILL_TO_CUSTOMER_ID, :OLD.BILL_TO_CUSTOMER_ID);                                                                              
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_PACKAGE"
BEFORE DELETE OR UPDATE ON PACKAGE
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'PACKAGE', :NEW.ID, 'U' );                                                                                                                                 
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'PACKAGE', :OLD.ID, 'D' );                                                                                                                                 
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'HEIGHT', 'FLOAT', :NEW.HEIGHT, :OLD.HEIGHT);                                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LENGTH', 'FLOAT', :NEW.LENGTH, :OLD.LENGTH);                                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WIDTH', 'FLOAT', :NEW.WIDTH, :OLD.WIDTH);                                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'QUANTITY', 'NUMBER', :NEW.QUANTITY, :OLD.QUANTITY);                                                                                                               
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'REWEIGHT', 'FLOAT', :NEW.REWEIGHT, :OLD.REWEIGHT);                                                                                                                
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TRACKING_NO', 'VARCHAR2', :NEW.TRACKING_NO, :OLD.TRACKING_NO);                                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WEIGHT', 'FLOAT', :NEW.WEIGHT, :OLD.WEIGHT);                                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'MEASUREMENT_UNIT_TYPE_ID', 'NUMBER', :NEW.MEASUREMENT_UNIT_TYPE_ID, :OLD.MEASUREMENT_UNIT_TYPE_ID);                                                               
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'PACKAGING_TYPE_ID', 'NUMBER', :NEW.PACKAGING_TYPE_ID, :OLD.PACKAGING_TYPE_ID);                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SHIPMENT_INFO_ID', 'NUMBER', :NEW.SHIPMENT_INFO_ID, :OLD.SHIPMENT_INFO_ID);                                                                                       
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WEIGHT_TYPE_ID', 'NUMBER', :NEW.WEIGHT_TYPE_ID, :OLD.WEIGHT_TYPE_ID);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WEIGHT_UNIT_TYPE_ID', 'NUMBER', :NEW.WEIGHT_UNIT_TYPE_ID, :OLD.WEIGHT_UNIT_TYPE_ID);                                                                              
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_PARTY"
BEFORE DELETE OR UPDATE ON PARTY
FOR EACH ROW
BEGIN
IF UPDATING THEN

	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'PARTY', :NEW.ID, 'U' );                                                                                                                                   
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'PARTY', :OLD.ID, 'D' );                                                                                                                                   
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ADDITIONAL_NAME1', 'VARCHAR2', :NEW.ADDITIONAL_NAME1, :OLD.ADDITIONAL_NAME1);                                                                                     
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ADDITIONAL_NAME2', 'VARCHAR2', :NEW.ADDITIONAL_NAME2, :OLD.ADDITIONAL_NAME2);                                                                                     
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ADDRESS1', 'VARCHAR2', :NEW.ADDRESS1, :OLD.ADDRESS1);                                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ADDRESS2', 'VARCHAR2', :NEW.ADDRESS2, :OLD.ADDRESS2);                                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CITY', 'VARCHAR2', :NEW.CITY, :OLD.CITY);                                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'COUNTRY_CODE', 'VARCHAR2', :NEW.COUNTRY_CODE, :OLD.COUNTRY_CODE);                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'STATE', 'VARCHAR2', :NEW.STATE, :OLD.STATE);                                                                                                                      
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ZIP', 'VARCHAR2', :NEW.ZIP, :OLD.ZIP);                                                                                                                            

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IDENTIFICATION_NO', 'VARCHAR2', :NEW.IDENTIFICATION_NO, :OLD.IDENTIFICATION_NO);                                                                                  
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IDENTIFICATION_NO_QUALIFIER', 'VARCHAR2', :NEW.IDENTIFICATION_NO_QUALIFIER, :OLD.IDENTIFICATION_NO_QUALIFIER);                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'NAME', 'VARCHAR2', :NEW.NAME, :OLD.NAME);                                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'PARTY_TYPE_ID', 'NUMBER', :NEW.PARTY_TYPE_ID, :OLD.PARTY_TYPE_ID);                                                                                                
END;
/
CREATE OR REPLACE TRIGGER TIGER."TRG_AUDIT_SHIPMENT_INFO"
BEFORE DELETE OR UPDATE ON SHIPMENT_INFO
FOR EACH ROW
BEGIN
IF UPDATING THEN
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'SHIPMENT_INFO', :NEW.ID, 'U' );                                                                                                                           
ELSE
	TIGER.AUDIT_PKG.CREATE_AUDIT_MASTER_RECORD( 'SHIPMENT_INFO', :OLD.ID, 'D' );                                                                                                                           
END IF;
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WEIGHT_TYPE_ID', 'NUMBER', :NEW.WEIGHT_TYPE_ID, :OLD.WEIGHT_TYPE_ID);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'PACKAGING_TYPE_ID', 'NUMBER', :NEW.PACKAGING_TYPE_ID, :OLD.PACKAGING_TYPE_ID);                                                                                    
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ID', 'NUMBER', :NEW.ID, :OLD.ID);                                                                                                                                 
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DATE_CREATED', 'TIMESTAMP(6)', :NEW.DATE_CREATED, :OLD.DATE_CREATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'LAST_UPDATED', 'TIMESTAMP(6)', :NEW.LAST_UPDATED, :OLD.LAST_UPDATED);                                                                                             
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'COM_RES_INDICATOR', 'VARCHAR2', :NEW.COM_RES_INDICATOR, :OLD.COM_RES_INDICATOR);                                                                                  
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'CONTAINER_INDICATOR', 'VARCHAR2', :NEW.CONTAINER_INDICATOR, :OLD.CONTAINER_INDICATOR);                                                                            

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'FUEL_INCENTIVE_RATE', 'NUMBER', :NEW.FUEL_INCENTIVE_RATE, :OLD.FUEL_INCENTIVE_RATE);                                                                              
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'FUEL_RATE', 'NUMBER', :NEW.FUEL_RATE, :OLD.FUEL_RATE);                                                                                                            
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IS_MULTI_LOT', 'NUMBER', :NEW.IS_MULTI_LOT, :OLD.IS_MULTI_LOT);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'PICKUP_DATE', 'DATE', :NEW.PICKUP_DATE, :OLD.PICKUP_DATE);                                                                                                        
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'QUANTITY', 'NUMBER', :NEW.QUANTITY, :OLD.QUANTITY);                                                                                                               
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'ZONE', 'VARCHAR2', :NEW.ZONE, :OLD.ZONE);                                                                                                                         
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'IDSC_TYPE_ID', 'NUMBER', :NEW.IDSC_TYPE_ID, :OLD.IDSC_TYPE_ID);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SERVICE_LEVEL_TYPE_ID', 'NUMBER', :NEW.SERVICE_LEVEL_TYPE_ID, :OLD.SERVICE_LEVEL_TYPE_ID);                                                                        
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'SERVICE_STANDARD_TYPE_ID', 'NUMBER', :NEW.SERVICE_STANDARD_TYPE_ID, :OLD.SERVICE_STANDARD_TYPE_ID);                                                               
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'WEIGHT_UNIT_TYPE_ID', 'NUMBER', :NEW.WEIGHT_UNIT_TYPE_ID, :OLD.WEIGHT_UNIT_TYPE_ID);                                                                              
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'JOB_TYPE_INDICATOR', 'VARCHAR2', :NEW.JOB_TYPE_INDICATOR, :OLD.JOB_TYPE_INDICATOR);                                                                               
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'RESERVED_INDICATOR', 'VARCHAR2', :NEW.RESERVED_INDICATOR, :OLD.RESERVED_INDICATOR);                                                                               
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_REWEIGHT', 'NUMBER', :NEW.TOTAL_REWEIGHT, :OLD.TOTAL_REWEIGHT);                                                                                             

    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'TOTAL_WEIGHT', 'NUMBER', :NEW.TOTAL_WEIGHT, :OLD.TOTAL_WEIGHT);                                                                                                   
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DELIVERY_DATE', 'TIMESTAMP(6)', :NEW.DELIVERY_DATE, :OLD.DELIVERY_DATE);                                                                                          
    TIGER.AUDIT_PKG.CHECK_AND_AUDIT( 'DELIVERY_SIGNATURE', 'VARCHAR2', :NEW.DELIVERY_SIGNATURE, :OLD.DELIVERY_SIGNATURE);                                                                               
END;
/
