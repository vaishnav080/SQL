
CREATE TABLE Average_selling_Price (ProductID SMALLINT,ProductName VARCHAR(90),SellingPrice DECIMAL);
INSERT INTO public.average_selling_price VALUES(2,'Product_B',150),(1,'Product_A',120),(3,'Product_C',200),(2,'Product_B',180),(1,'Product_A',90),(3,'Product_C',210);

SELECT productname, avg( sellingprice) AS Average_Selling_Price FROM public.average_selling_price GROUP BY productname;

