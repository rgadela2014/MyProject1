
/* The table creation DDLs are created for country repository change. */
/* The table creation DDLs need to be executed in Switch_A, Swtich_B and Staging servers. */

CREATE TABLE "SGS_SHIPPING_METHOD_DETAILS" 
   (	"SHIP_DETAILS_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"SHIP_METHOD_NAME" VARCHAR2(254 BYTE), 
	"SHIP_METHOD_DESCRIPTION" VARCHAR2(254 BYTE), 
	"SITE_ID" VARCHAR2(40 BYTE), 
	"STATE_ID" VARCHAR2(20 BYTE), 
	"COUNTRY_ID" VARCHAR2(40 BYTE), 
	"PRICE" NUMBER(10,2), 
	"SHIP_DUTY" NUMBER(10,2), 
	"FREE_SHIP_THRESHOLD" NUMBER(10,2), 
	"MIN_DAYS_TO_SHIP" NUMBER(*,0), 
	"MAX_DAYS_TO_SHIP" NUMBER(*,0), 
	"CUT_OFF_TIME" DATE,
	"LOWER_LIMIT" NUMBER(10,2), 
	"UPPER_LIMIT" NUMBER(10,2)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
  
CREATE TABLE "SGS_COUNTRIES" 
   (	"COUNTRY_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(254 BYTE), 
	"SHIPPING_FLAG" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;
  
CREATE TABLE "SGS_COUNTRY_STATES" 
   (	"COUNTRY_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"STATE_ID" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;


CREATE TABLE "SGS_COUNTRIES_LIST" 
   (	"SITE_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"COUNTRY_ID" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT)
  TABLESPACE "USERS" ;