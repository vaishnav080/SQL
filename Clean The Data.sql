CREATE TABLE "Names" ( "Names" VARCHAR(30));
INSERT INTO public."Names" VALUES ('rAVI kUMAR')
INSERT INTO public."Names" VALUES ('priya sharma')
INSERT INTO public."Names" VALUES ( 'NEHA gupta')

UPDATE public."Names" 
SET "Names" = initcap(TRIM ("Names"))
