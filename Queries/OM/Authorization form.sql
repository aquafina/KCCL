

/* Formatted on 3/10/2017 12:24:47 PM (QP5 v5.163.1008.3004) */
create table item_subinventories_kccl
as 
SELECT *
  FROM mtl_item_sub_inventories misi
  
  select * from item_subinventories_kccl
  
  select * from ar_customers
  
/* Formatted on 3/10/2017 4:01:27 PM (QP5 v5.163.1008.3004) */
SELECT OOHA.order_number,
       ACBAV.BANK_NAME,
       ACBAV.BANK_ACCOUNT_NUM,
       fu.user_name,
       SUM (oola.ordered_quantity) order_quantity
  FROM oe_order_headers_all OOHA,
       WSH_DELIVERY_DETAILS WDD,
       AR_CUSTOMER_BANK_ACCOUNTS_V ACBAV,
       oe_order_lines_all oola,
       fnd_user fu 
 WHERE     OOHA.HEADER_ID = WDD.SOURCE_HEADER_ID
       AND OOHA.CUST_PO_NUMBER = WDD.CUST_PO_NUMBER
       AND OOHA.ORDER_TYPE_ID = WDD.SOURCE_HEADER_TYPE_ID
       AND OOHA.SOLD_TO_ORG_ID = WDD.CUSTOMER_ID
       AND OOHA.ORG_ID = WDD.ORG_ID
       AND WDD.CUSTOMER_ID = ACBAV.CUSTOMER_ID
       AND ooha.header_id = oola.header_id
       and ooha.created_by = fu.user_id       
  group by OOHA.order_number,
       ACBAV.BANK_NAME,
       WDD.REQUESTED_QUANTITY,
       fu.user_name,
       ACBAV.BANK_ACCOUNT_NUM
       
  select ACBAV.BANK_ACCOUNT_NUM,ACBAV.BANK_NAME from oe_order_lines_all oola, AR_CUSTOMER_BANK_ACCOUNTS_V acbav
  where oola.end_customer_id = ACBAV.customer_id
  
  SELECT * FROM AR_CUSTOMER_BANK_ACCOUNTS_V 
  
  select * from wsh_new_deliveries
  
  select * from WSH_DELIVERY_DETAILS
  
  select * from all_objects where object_name LIKE '%AR%CUST%ACC%' and object_type in ('TABLE','VIEW');
  
  SELECT * FROM AR_CUSTOMER_BANK_ACCOUNTS_V
  
  SELECT * FROM AR_CUSTOMER_ACCOUNTS
  
  select * from hz_cust_accounts
  
  select created_by from oe_order_headers_all ooha
  
  select * from oe_order_lines_all oola  
  
  select CUSTOMER_ID from AR_CUSTOMER_BANK_ACCOUNTS_V
  
  /* Formatted on 3/10/2017 3:58:19 PM (QP5 v5.163.1008.3004) */
SELECT SUM (oola.ordered_quantity) order_quantity
  FROM oe_order_headers_all ooha, oe_order_lines_all oola
 WHERE ooha.header_id = oola.header_id 
   
 
 select * from oe_order_lines_all oola 