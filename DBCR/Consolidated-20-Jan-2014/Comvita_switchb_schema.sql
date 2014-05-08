
--------------------------- 17th Dec 2013
SET DEFINE OFF;
ALTER TABLE SGS_PRODUCT ADD DISPLAY_TITLE varchar2(254);
ALTER TABLE SGS_PRODUCT ADD PROD_DIRECTION CLOB;
ALTER TABLE SGS_PRODUCT ADD PROD_INGREDIENT CLOB;
ALTER TABLE SGS_PRODUCT ADD PROD_SOLUTION CLOB;
ALTER TABLE SGS_PRODUCT ADD SMALL_IMAGE varchar2(254);
ALTER TABLE SGS_PRODUCT ADD LARGE_IMAGE varchar2(254);
ALTER TABLE SGS_PRODUCT ADD MEDIUM_IMAGE varchar2(254);
ALTER TABLE SGS_PRODUCT ADD THUMBNAIL_IMAGE varchar2(254);
ALTER TABLE SGS_PRODUCT ADD PRODBACK_IMAGE varchar2(254);
ALTER TABLE SGS_SKU ADD DISPLAY_TITLE varchar2(254);
ALTER TABLE SGS_SKU ADD SMALL_IMAGE varchar2(254);
ALTER TABLE SGS_SKU ADD LARGE_IMAGE varchar2(254);
ALTER TABLE SGS_SKU ADD MEDIUM_IMAGE varchar2(254);
ALTER TABLE SGS_SKU ADD THUMBNAIL_IMAGE varchar2(254);

 CREATE TABLE SGS_PROD_BADGE(
 BADGE_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(54), PRIMARY KEY(PRODUCT_ID,SITE_ID) using index 
 );
 CREATE TABLE SGS_PRD_TESTI(
 TESTI_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(54), PRIMARY KEY(PRODUCT_ID,SITE_ID) using index 
 );
 
CREATE TABLE SGS_BADGES(
 BADGE_ID varchar2(40),
 BADGE_NAME varchar2(40),
 BADGE_DESCRIP varchar2(400),
 BADGE_IMAGE varchar2(254),
 LAST_MOD_DATE DATE	NULL,PRIMARY KEY(BADGE_ID) using index );

 
 CREATE TABLE SGS_BADGES_SITES(
 BADGE_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(BADGE_ID,SITE_ID) using index  );
 
 
 CREATE TABLE SGS_TESTI_CONTAINER(
 TESTI_IDS varchar2(40),
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(TESTI_IDS) using index );
 
  CREATE TABLE SGS_TESTI_LIST(
 TESTI_ID varchar2(40),
 TESTI_IDS varchar2(40),
 SEQUENCE_NUM varchar2(40),PRIMARY KEY(TESTI_IDS,SEQUENCE_NUM) using index );
 
 CREATE TABLE SGS_TESTI(
 TESTI_ID varchar2(40),
 TESTI_NAME varchar2(40),
 TESTI_DESCRIP varchar2(400),
 TESTI_IMAGE varchar2(254),
 LAST_MOD_DATE DATE	NULL, PRIMARY KEY(TESTI_ID) using index );
 
 CREATE TABLE SGS_TESTI_SITES(
 TESTI_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(TESTI_ID,SITE_ID) using index );
 
 CREATE TABLE SGS_PRD_CHLDSKU_RELN(
 SKUCH_PROD_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(SKUCH_PROD_ID,SITE_ID) using index );
 
 CREATE TABLE SGS_PRD_CHLDSKU_CONTAINER(
 SKUCH_PROD_IDS varchar2(40),
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(SKUCH_PROD_IDS) using index );
 
 CREATE TABLE SGS_PRD_CHLDSKU_LIST(
 SKUCH_PROD_IDS varchar2(40),
 CHILDSKU_ID varchar2(40),
 SEQUENCE_NUM varchar2(40),PRIMARY KEY(SKUCH_PROD_IDS,SEQUENCE_NUM) using index );
 /*
 Start adding new table 
 */
 CREATE TABLE SGS_PROD_SOL(
 SOL_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(SOL_ID,SITE_ID) using index  );
 CREATE TABLE SGS_SOL_CONTAINER(
 SOL_IDS varchar2(40),
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(SOL_IDS) using index );
 
 CREATE TABLE SGS_SOL_LIST(
 SOL_ID varchar2(40),
 SOL_IDS varchar2(40),
 SEQUENCE_NUM varchar2(40),PRIMARY KEY(SOL_ID,SEQUENCE_NUM) using index );
 
 CREATE TABLE SGS_SOL_DETAILS(
 SOL_ID varchar2(40),
 SOL_NAME varchar2(400),
 SOL_DESCRIP varchar2(400),
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(SOL_ID) using index );
 CREATE TABLE SGS_SOL_SITES(
 SOL_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(SOL_ID,SITE_ID) using index );

 CREATE TABLE SGS_PROD_ING(
 ING_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(ING_ID,SITE_ID) using index  );
 CREATE TABLE SGS_ING_CONTAINER(
 ING_IDS varchar2(40),
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(ING_IDS) using index );
 
 CREATE TABLE SGS_ING_LIST(
 ING_ID varchar2(40),
 ING_IDS varchar2(40),
 SEQUENCE_NUM varchar2(40),PRIMARY KEY(ING_ID,SEQUENCE_NUM) using index );
 
 CREATE TABLE SGS_ING_DETAILS(
 ING_ID varchar2(40),
 ING_NAME varchar2(400),
 ING_DESCRIP varchar2(400),
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(ING_ID) using index );
 CREATE TABLE SGS_ING_SITES(
 ING_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(ING_ID,SITE_ID) using index );
 
CREATE TABLE COMVITA_PROD_SITE_TRANSLATIONS(
PRODUCT_ID  VARCHAR2(40),
TRANSLATION_ID VARCHAR2(80),PRIMARY KEY(PRODUCT_ID,TRANSLATION_ID) using index );
 
CREATE TABLE COMVITA_PROD_TRANSLATIONS(
TRANSLATION_ID                   VARCHAR2(80), 
SITE_ID                          VARCHAR2(40),  
LOCALE_ID                        VARCHAR2(40), 
DISPLAY_NAME                     VARCHAR2(254), 
DESCRIPTION                     VARCHAR2(1200),
TITLE                           VARCHAR2(40),
DIR_DESC                        VARCHAR2(1200),
SOL_DESC                        VARCHAR2(1200),      
ING_ESC                         VARCHAR2(1200),      
PRICE_RANGEDESC                 VARCHAR2(1200),      
WEBONLY                         NUMBER(1),
WEBOFFERED          			NUMBER(1),
PRODDISABLE                     NUMBER(1),
SKULOWPRICE                     VARCHAR2(40),
SKUHIGHPRICE                    VARCHAR2(40),
LONG_DESCRIPTION		CLOB,
LAST_MOD_DATE DATE	NULL,PRIMARY KEY(SITE_ID,TRANSLATION_ID) using index);



--------------------------------- 24th Dec 2013


create table temp_sku(
sku_id varchar2(100)
);

CREATE SEQUENCE price_id
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1000
  INCREMENT BY 1
  CACHE 20;


  
  
Insert into temp_sku (SKU_ID) values ('120');
Insert into temp_sku (SKU_ID) values ('EN102');
Insert into temp_sku (SKU_ID) values ('EN103');
Insert into temp_sku (SKU_ID) values ('EN169');
Insert into temp_sku (SKU_ID) values ('EXP10077');
Insert into temp_sku (SKU_ID) values ('EXP153');
Insert into temp_sku (SKU_ID) values ('EXP10073  ');
Insert into temp_sku (SKU_ID) values ('EXP10074');
Insert into temp_sku (SKU_ID) values ('EXP10070');
Insert into temp_sku (SKU_ID) values ('EXP10071');
Insert into temp_sku (SKU_ID) values ('EN110');
Insert into temp_sku (SKU_ID) values ('EN111');
Insert into temp_sku (SKU_ID) values ('EN112');
Insert into temp_sku (SKU_ID) values ('EN361');
Insert into temp_sku (SKU_ID) values ('EN373');
Insert into temp_sku (SKU_ID) values ('EN555');
Insert into temp_sku (SKU_ID) values ('EN10007');
Insert into temp_sku (SKU_ID) values ('EN388');
Insert into temp_sku (SKU_ID) values ('499');
Insert into temp_sku (SKU_ID) values ('488');
Insert into temp_sku (SKU_ID) values ('473');
Insert into temp_sku (SKU_ID) values ('476');
Insert into temp_sku (SKU_ID) values ('498');
Insert into temp_sku (SKU_ID) values ('332');
Insert into temp_sku (SKU_ID) values ('333');
Insert into temp_sku (SKU_ID) values ('334');
Insert into temp_sku (SKU_ID) values ('335');
Insert into temp_sku (SKU_ID) values ('623');
Insert into temp_sku (SKU_ID) values ('307');
Insert into temp_sku (SKU_ID) values ('EN414');
Insert into temp_sku (SKU_ID) values ('414');
Insert into temp_sku (SKU_ID) values ('644');
Insert into temp_sku (SKU_ID) values ('EN644');
Insert into temp_sku (SKU_ID) values ('EN343');
Insert into temp_sku (SKU_ID) values ('343');
  
  
  
  
  
PROCEDURE Creat_PriceUK ()
IS
BEGIN
FOR skuId IN (SELECT SKU_ID  FROM temp_sku)
LOOP
Insert into DCS_PRICE (PRICE_ID,VERSION,PRICE_LIST,PRODUCT_ID,SKU_ID,PARENT_SKU_ID,PRICING_SCHEME,LIST_PRICE,COMPLEX_PRICE) values (price_id.nextval,2,'comvitauklplist9001','',skuId.sku_id,null,0,price_id.nextval,null);
Insert into SGS_PRICE (PRICE_ID,LAST_MOD_DATE) values (price_id.nextval-1,to_timestamp('03-JAN-14 05.46.52.468000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
END LOOP;
END Create_PriceUK;
/
show error
commit;  


---------------------------------------27th Dec 2014

ALTER TABLE sgs_sol_list DROP PRIMARY KEY;
ALTER TABLE sgs_ing_list DROP PRIMARY KEY;
ALTER TABLE SGS_PROD_SOL DROP PRIMARY KEY;
ALTER TABLE SGS_PROD_ING DROP PRIMARY KEY;
ALTER TABLE SGS_PRD_CHLDSKU_RELN DROP PRIMARY KEY;
ALTER TABLE COMVITA_PROD_SITE_TRANSLATIONS DROP PRIMARY KEY;
ALTER TABLE COMVITA_PROD_TRANSLATIONS  MODIFY title varchar2(254);


---------------------------------2nd Jan 2014


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
   ) ;
  
CREATE TABLE "SGS_COUNTRIES" 
   (	"COUNTRY_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"DESCRIPTION" VARCHAR2(254 BYTE), 
	"SHIPPING_FLAG" NUMBER(1,0)
   );
  
CREATE TABLE "SGS_COUNTRY_STATES" 
   (	"COUNTRY_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"STATE_ID" VARCHAR2(20 BYTE)
   );


CREATE TABLE "SGS_COUNTRIES_LIST" 
   (	"SITE_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"COUNTRY_ID" VARCHAR2(40 BYTE)
   );





----------------------------------------3rd Jan 2014

ALTER TABLE SGS_PROD_SOL DROP PRIMARY KEY;
ALTER TABLE SGS_PROD_ING DROP PRIMARY KEY;




CREATE SEQUENCE price_id
  MINVALUE 1
  MAXVALUE 999999999999999999999999999
  START WITH 1000
  INCREMENT BY 1
  CACHE 20;

Insert into temp_sku (SKU_ID) values ('SJP001');
Insert into temp_sku (SKU_ID) values ('SJP002');
Insert into temp_sku (SKU_ID) values ('SJP003');
Insert into temp_sku (SKU_ID) values ('SJP004');
Insert into temp_sku (SKU_ID) values ('SJP005');
Insert into temp_sku (SKU_ID) values ('SJP006');
Insert into temp_sku (SKU_ID) values ('SJP007');
Insert into temp_sku (SKU_ID) values ('SJP008');
Insert into temp_sku (SKU_ID) values ('SJP009');
Insert into temp_sku (SKU_ID) values ('SJP010');
Insert into temp_sku (SKU_ID) values ('SJP011');
Insert into temp_sku (SKU_ID) values ('SJP012');
Insert into temp_sku (SKU_ID) values ('SJP013');
Insert into temp_sku (SKU_ID) values ('SJP014');
Insert into temp_sku (SKU_ID) values ('SJP015');
Insert into temp_sku (SKU_ID) values ('SJP016');
Insert into temp_sku (SKU_ID) values ('SJP017');
Insert into temp_sku (SKU_ID) values ('SJP018');
Insert into temp_sku (SKU_ID) values ('SJP019');
Insert into temp_sku (SKU_ID) values ('SJP020');
Insert into temp_sku (SKU_ID) values ('SJP021');
Insert into temp_sku (SKU_ID) values ('SJP022');
Insert into temp_sku (SKU_ID) values ('SJP023');
Insert into temp_sku (SKU_ID) values ('SJP024');
Insert into temp_sku (SKU_ID) values ('SJP025');
Insert into temp_sku (SKU_ID) values ('SJP026');
Insert into temp_sku (SKU_ID) values ('SJP027');
Insert into temp_sku (SKU_ID) values ('SJP028');
Insert into temp_sku (SKU_ID) values ('SJP029');
Insert into temp_sku (SKU_ID) values ('SJP030');
Insert into temp_sku (SKU_ID) values ('SJP031');
Insert into temp_sku (SKU_ID) values ('SJP032');
Insert into temp_sku (SKU_ID) values ('SJP033');
Insert into temp_sku (SKU_ID) values ('SJP034');
Insert into temp_sku (SKU_ID) values ('SJP035');
Insert into temp_sku (SKU_ID) values ('SJP036');
  
  
  
  
PROCEDURE Creat_Price ()
IS
 BEGIN
 		FOR skuId IN (SELECT SKU_ID  FROM temp_sku)
		LOOP
			 Insert into DCS_PRICE (PRICE_ID,VERSION,PRICE_LIST,PRODUCT_ID,SKU_ID,PARENT_SKU_ID,PRICING_SCHEME,LIST_PRICE,COMPLEX_PRICE) values (price_id.nextval,2,'comvitajplplist9001','',skuId.sku_id,null,0,price_id.nextval,null);
             Insert into SGS_PRICE (PRICE_ID,LAST_MOD_DATE) values (price_id.nextval-1,to_timestamp('03-JAN-13 05.46.52.468000000 PM','DD-MON-RR HH.MI.SS.FF AM'));
 
		END LOOP;
 	
END Create_Price;

/
show error
commit;  



----------------------------------------8th jan 2013


CREATE TABLE SGS_PROD_OTHING(OTHING_ID varchar2(40),
PRODUCT_ID varchar2(40),
SITE_ID varchar2(40));

CREATE TABLE SGS_OTHING_CONTAINER(OTHING_IDS varchar2(40),
LAST_MOD_DATE DATE NULL);

CREATE TABLE SGS_OTHING_LIST(OTHING_ID varchar2(40),
OTHING_IDS varchar2(40),
SEQUENCE_NUM varchar2(40));

CREATE TABLE SGS_OTHING_SITES(OTHING_ID varchar2(40),
SITE_ID varchar2(40));

CREATE TABLE SGS_OTHING_DETAILS(OTHING_ID VARCHAR2(40),
BACK_IMAGE_LARGE VARCHAR2(100),
OTHING_NAME varchar2(400),
OTHING_LONGDESCRIP CLOB,
DISPLAY_IMAGE_LARGE VARCHAR2(100),
DISPLAY_TITLE varchar2(400),
DISPLAY_DESC CLOB,
LAST_MOD_DATE DATE	NULL);
TRUNCATE TABLE SGS_SOL_SITES;
TRUNCATE TABLE SGS_ING_SITES;

ALTER TABLE SGS_ING_DETAILS drop column ING_DESCRIP;
ALTER TABLE SGS_ING_DETAILS ADD ING_DESCRIP CLOB ;
ALTER TABLE SGS_ING_DETAILS ADD BACK_IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_ING_DETAILS ADD IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_ING_DETAILS ADD ING_IMAGE_DESCRIP CLOB;
ALTER TABLE SGS_ING_DETAILS ADD ING_DESCRIP2 CLOB;
ALTER TABLE SGS_ING_DETAILS ADD ING_VIDEO VARCHAR2(100);
ALTER TABLE SGS_ING_DETAILS ADD BADGE_IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_ING_DETAILS ADD ING_CERTI_DESCRIP CLOB;
ALTER TABLE SGS_ING_DETAILS ADD ING_CERTI_TITLE VARCHAR2(4000);
ALTER TABLE SGS_ING_DETAILS ADD DISPLAY_IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_ING_DETAILS ADD DISPLAY_TITLE VARCHAR2(4000);
ALTER TABLE SGS_ING_DETAILS ADD DISPLAY_DESC CLOB;

ALTER TABLE SGS_SOL_DETAILS drop column SOL_DESCRIP;
ALTER TABLE SGS_SOL_DETAILS ADD SOL_DESCRIP CLOB ;
ALTER TABLE SGS_SOL_DETAILS ADD BACK_IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_SOL_DETAILS ADD IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_SOL_DETAILS ADD SOL_DESCRIP2 CLOB;
ALTER TABLE SGS_SOL_DETAILS ADD SOL_DESCRIP3 CLOB;
ALTER TABLE SGS_SOL_DETAILS ADD SYMPTOMS CLOB;
ALTER TABLE SGS_SOL_DETAILS ADD DISPLAY_IMAGE_LARGE VARCHAR2(100);
ALTER TABLE SGS_SOL_DETAILS ADD DISPLAY_TITLE VARCHAR2(4000);
ALTER TABLE SGS_SOL_DETAILS ADD DISPLAY_DESC CLOB;



---------------------------------------10th Jan 2014


CREATE TABLE "SGS_SHIP_TO_COUNTRIES" 
   (	"SHIP_DETAILS_ID" VARCHAR2(40 BYTE) NOT NULL ENABLE, 
	"COUNTRY_ID" VARCHAR2(40 BYTE)
   );
  
update USER_TAB_COMMENTS set COMMENTS = 'Table for Shipping Details to Country, One To Many mapping' where TABLE_NAME = 'SGS_SHIP_TO_COUNTRIES';
update USER_COL_COMMENTS set COMMENTS = 'Parent Shipping Details Id' where TABLE_NAME = 'SGS_SHIP_TO_COUNTRIES' and column_name = 'SHIP_DETAILS_ID';
update USER_COL_COMMENTS set COMMENTS = 'Child Countries Id' where TABLE_NAME = 'SGS_SHIP_TO_COUNTRIES' and column_name = 'COUNTRY_ID';


Commit;

-----------------------------------------13th jan 2014

ALTER TABLE
   SGS_SITE_ATTRIBUTES
ADD (
	tax_type 	varchar2(30)	NULL,
	tax_rate 	number(6, 2)	NULL
	 
);
 

ALTER TABLE
   SGS_SKU
ADD (
	is_tax_applicable 	number(1)	NULL,
	CHECK (is_tax_applicable IN (0, 1))
); 


ALTER TABLE SGS_PRODUCT ADD FREE_ITEM_PRODUCT number(1);
ALTER TABLE COMVITA_PROD_TRANSLATIONS ADD FREE_ITEM_PRODUCT number(1);



ALTER TABLE COMVITA_PROD_TRANSLATIONS ADD LARGE_IMAGE VARCHAR2(100);
ALTER TABLE COMVITA_PROD_TRANSLATIONS ADD SMALL_IMAGE VARCHAR2(100);
ALTER TABLE COMVITA_PROD_TRANSLATIONS ADD MEDIUM_IMAGE VARCHAR2(100);
ALTER TABLE COMVITA_PROD_TRANSLATIONS ADD THUMBNAIL_IMAGE VARCHAR2(100);



------------------------------------------14th Jan 2014

Drop Table SGS_PRD_CHLDSKU_RELN;
Drop Table SGS_PRD_CHLDSKU_CONTAINER;
Drop Table SGS_PRD_CHLDSKU_LIST;
CREATE TABLE SGS_SKU_SITES(SKU_ID varchar2(40),SITE_ID varchar2(40));



-----------------------------------------15th jan 2014

ALTER TABLE
   SGS_SITE_ATTRIBUTES
ADD (
	is_tax_applicable 	number(1)	NULL,
	CHECK (is_tax_applicable IN (0, 1))
	 	 
);



---------------------------------------15th jan 2014

drop table SGS_TESTI;
drop table SGS_TESTI_LIST;
drop table SGS_TESTI_CONTAINER;
drop table SGS_PRD_TESTI;
drop table SGS_TESTI_SITES;

CREATE TABLE SGS_TESTIMONIAL ( testimonial_id varchar2(254) NOT NULL, testimonial_creator_name varchar2(254) NULL, testimonial_description CLOB NULL, testimonial_image varchar2(254) NULL, testimonial_title varchar2(254) NULL, testimonial_creator_country varchar2(254) NULL, testimonial_date DATE NULL, last_mod_date DATE NULL, PRIMARY KEY(testimonial_id) );

CREATE TABLE SGS_TESTIMONIAL_SITES ( testimonial_id varchar2(254) NOT NULL REFERENCES SGS_TESTIMONIAL(testimonial_id), site_id varchar2(254) NOT NULL REFERENCES site_configuration(id), PRIMARY KEY(testimonial_id, site_id) );

CREATE TABLE SGS_TESTIMONIAL_CONTAINER ( testimonial_ids varchar2(254) NOT NULL, last_mod_date DATE NULL, PRIMARY KEY(testimonial_ids) );

CREATE TABLE SGS_TESTIMONIAL_LIST ( testimonial_ids varchar2(254) NOT NULL REFERENCES SGS_TESTIMONIAL_CONTAINER(testimonial_ids), sequence_num INTEGER NOT NULL, testimonial_id varchar2(254) NULL REFERENCES SGS_TESTIMONIAL(testimonial_id), PRIMARY KEY(testimonial_ids, sequence_num) );

CREATE TABLE SGS_PRD_TESTIMONIAL ( product_id varchar2(254) NOT NULL REFERENCES dcs_product(product_id), site_id varchar2(254) NOT NULL, testimonial_id varchar2(254) NULL REFERENCES SGS_TESTIMONIAL_CONTAINER(testimonial_ids), PRIMARY KEY(product_id, site_id) );



---------------------------27th Jan 2014

--userInterests

CREATE TABLE SGS_PRODUCT_INTERESTS(
 INTEREST_ID varchar2(40) NOT NULL,
 INTEREST_NAME varchar2(100),
 INTEREST_VALUE varchar2(100), 
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(INTEREST_ID) using index );


commit;

 CREATE TABLE SGS_PRODUCT_INTERESTS_SITES(
 INTEREST_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(INTEREST_ID,SITE_ID) using index );
 
commit;

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

--userHealthConcerns

CREATE TABLE SGS_HEALTH_CONCERNS(
 HEALTH_CONCERN_ID varchar2(40) NOT NULL,
 HEALTH_CONCERN_NAME varchar2(100),
 HEALTH_CONCERN_VALUE varchar2(100), 
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(HEALTH_CONCERN_ID) using index );
 
commit;

 
CREATE TABLE SGS_HEALTH_CONCERNS_SITES(
 HEALTH_CONCERN_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(HEALTH_CONCERN_ID,SITE_ID) using index );
 
commit;

------

--userInterests

CREATE TABLE SGS_PRODUCT_INTERESTS(
 INTEREST_ID varchar2(40) NOT NULL,
 INTEREST_NAME varchar2(100),
 INTEREST_VALUE varchar2(100), 
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(INTEREST_ID) using index );


commit;

 CREATE TABLE SGS_PRODUCT_INTERESTS_SITES(
 INTEREST_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(INTEREST_ID,SITE_ID) using index );
 
commit;

---------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------

--userHealthConcerns

CREATE TABLE SGS_HEALTH_CONCERNS(
 HEALTH_CONCERN_ID varchar2(40) NOT NULL,
 HEALTH_CONCERN_NAME varchar2(100),
 HEALTH_CONCERN_VALUE varchar2(100), 
 LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(HEALTH_CONCERN_ID) using index );
 
commit;

 
CREATE TABLE SGS_HEALTH_CONCERNS_SITES(
 HEALTH_CONCERN_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(HEALTH_CONCERN_ID,SITE_ID) using index );
 
commit;


--------------------------29th Jan 2014

--product

 CREATE TABLE SGS_PROD_REL_BUNDLES(
 BUNDLE_PRODUCT_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(BUNDLE_PRODUCT_ID,SITE_ID) using index);

COMMIT;


--------------------------30th Jan 2014

ALTER TABLE SGS_ING_DETAILS ADD image_alt_text varchar2(254);

ALTER TABLE SGS_OTHING_DETAILS ADD image_alt_text varchar2(254);

ALTER TABLE SGS_SOL_DETAILS ADD image_alt_text varchar2(254);
commit;


--------------------------04th Feb 2014
--userHearAboutUs

CREATE TABLE SGS_HEAR_ABOUT_US(
HEAR_ABOUT_US_ID varchar2(40) NOT NULL,
HEAR_ABOUT_US_NAME varchar2(100),
HEAR_ABOUT_US_VALUE varchar2(100), 
LAST_MOD_DATE DATE	NULL ,PRIMARY KEY(HEAR_ABOUT_US_ID) using index );

commit;

CREATE TABLE SGS_HEAR_ABOUT_US_SITES(
HEAR_ABOUT_US_ID varchar2(40),
SITE_ID varchar2(40), PRIMARY KEY(HEAR_ABOUT_US_ID,SITE_ID) using index );
 
commit;


--------------------------05th Feb 2014
--user
ALTER TABLE dps_user ADD USER_GENDER varchar2(40);
commit;


--------------------------06th Feb 2014
Alter table SGS_REL_CONFIG_KEY_VALUE MODIFY CONFIG_VALUE varchar2(1000);
commit;


--------------------------11th Feb 2014 - Ajay Sharma
-- Update statement for switchA and switchB and Publishing and staging
UPDATE SGS_SHIPPING_METHOD_DETAILS SET cut_off_time = SYSDATE-379 ;
UPDATE SGS_SHIPPING_METHOD_DETAILS SET  max_days_to_ship=9 WHERE max_days_to_ship is NULL;
commit;

--------------------------20th Feb 2014 - Sunil Kumar 8 <skumar134@sapient.com>
-- THIS SQL NEED TO BE EXECUTED ON SWITCH_A,SWITCH_B,CORE AND STAGING ENVIRONMENT.

CREATE TABLE SGS_COD_PAY_GRP (
 PAYMENT_GROUP_ID VARCHAR2(254),
 COD_NUMBER VARCHAR2(254) NULL,
 COD_EMAIL VARCHAR2(254) NULL,
 COD_STATUS VARCHAR2(254) NULL,
 COD_NAME VARCHAR2(254) NULL,
 COD_COUNTRY_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL,
 PRIMARY KEY(PAYMENT_GROUP_ID) );

CREATE TABLE SGS_COD_STATUS (
 STATUS_ID VARCHAR2(254),
 AUTH_CODE VARCHAR2(254) NULL,
 TRACE_NUMBER VARCHAR2(254) NULL,
 AUTH_RESPONSE_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL, 
 TRANSACTION_ID VARCHAR2(254) NULL,
 PRIMARY KEY(STATUS_ID) );
 
CREATE TABLE SGS_DEF_PAY_GRP (
 PAYMENT_GROUP_ID VARCHAR2(254),
 DEF_NUMBER VARCHAR2(254) NULL,
 DEF_EMAIL VARCHAR2(254) NULL,
 DEF_STATUS VARCHAR2(254) NULL,
 DEF_NAME VARCHAR2(254) NULL,
 COD_COUNTRY_CODE VARCHAR2(254) NULL,
 AMOUNT NUMBER(28, 20) NULL, PRIMARY KEY(PAYMENT_GROUP_ID) );
 
CREATE TABLE SGS_DEF_STATUS (
STATUS_ID VARCHAR2(254), AUTH_CODE VARCHAR2(254) NULL,
TRACE_NUMBER VARCHAR2(254) NULL,
AUTH_RESPONSE_CODE VARCHAR2(254) NULL,
AMOUNT NUMBER(28, 20) NULL,
TRANSACTION_ID VARCHAR2(254) NULL,
PRIMARY KEY(STATUS_ID) );
COMMIT;


--------------------------07th Mar 2014 - Rajendra Singh 3 <rsingh93@sapient.com>
ALTER TABLE SGS_SITE_ATTRIBUTES DROP constraint SGS_SITE_ATTRIBUTES_FK2;


--------------------------Mar 12th 2014 - Sanam Jain <sjain82@sapient.com>
-- THIS SQL NEED TO BE EXECUTED ON SWITCH_A,SWITCH_B, PUB AND STAGING ENVIRONMENT.

ALTER TABLE SGS_COUNTRIES ADD ISOcode varchar2(30) NULL;
commit;