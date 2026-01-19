CREATE TABLE Market ("customerID" INT, "ProductID" VARCHAR(30), "PurchaseDate" date, "Quantity" INT, "Revenue" INT);
INSERT INTO public.market VALUES (1,'B','2023-01-04',4,80);

SELECT sum( "Revenue") AS Total_Revenuue FROM public.market;
SELECT "ProductID" ,sum( "Quantity") AS Total_Sales FROM public.market GROUP BY "ProductID";
SELECT "customerID" , sum( "Revenue") AS Total_Revenue FROM public.market GROUP BY "customerID" ORDER BY sum( "Revenue") DESC LIMIT 1;