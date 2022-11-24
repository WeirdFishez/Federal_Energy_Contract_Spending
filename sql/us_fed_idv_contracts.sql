drop table public.us_fed_idv_contracts
;
CREATE TABLE IF NOT EXISTS public.us_fed_idv_contracts
(       
	Award_ID character varying COLLATE pg_catalog."default" NOT NULL,
	Start_Date date,
	Award_Amount NUMERIC (20, 2),
	Recipient_Name character varying COLLATE pg_catalog."default" ,
	Description character varying COLLATE pg_catalog."default",
	Contract_Award_Type character varying COLLATE pg_catalog."default",
	def_codes character varying COLLATE pg_catalog."default",
	Awarding_Agency character varying COLLATE pg_catalog."default",
	Awarding_Sub_Agency character varying COLLATE pg_catalog."default",
	awarding_agency_id character varying COLLATE pg_catalog."default",
	agency_slug character varying COLLATE pg_catalog."default",
	generated_internal_id character varying COLLATE pg_catalog."default" ,
	Unnamed_13 character varying COLLATE pg_catalog."default" ,
	Year_Month character varying COLLATE pg_catalog."default" ,
	CONSTRAINT us_fed_idv_contracts_pk PRIMARY KEY (Award_ID)
)   
;
--
-- Import US_Fed_IDV_contracts_Clean.csv file using PgAdmin import 
--
-- Verify data exists 
-- select * from us_fed_idv_contracts;
