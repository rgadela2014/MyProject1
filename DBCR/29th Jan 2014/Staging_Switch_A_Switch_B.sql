--product

 CREATE TABLE SGS_PROD_REL_BUNDLES(
 BUNDLE_PRODUCT_ID varchar2(40),
 PRODUCT_ID varchar2(40),
 SITE_ID varchar2(40), PRIMARY KEY(BUNDLE_PRODUCT_ID,SITE_ID) using index  );

--drop table SGS_PROD_REL_BUNDLES;
--select * from SGS_PROD_REL_BUNDLES; 
