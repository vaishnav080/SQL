
CREATE TABLE ads ("Adld" INT, "Views" INT , "Clicks" INT, "Cost" DECIMAL(10,2));
INSERT INTO public.ads VALUES (5, 1500, 120, 40.30);

SELECT  "Adld", 
  CAST("Clicks" AS DECIMAL(10,2)) / "Views" AS CTR
FROM ads;
