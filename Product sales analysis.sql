
DROP TABLE public.products
CREATE TABLE products (productID INT PRIMARY KEY, productName VARCHAR(50), price DECIMAL(10,2));
INSERT INTO public.products VALUES (4,'Mango',2.00)

CREATE TABLE Orders ( OrderID INT, ProductID INT , FOREIGN KEY( ProductID) REFERENCES products (productID), Quantity INT, Sales DECIMAL(10,2));
INSERT INTO public.orders  VALUES (5,4,6,12.00) 

SELECT products.productid , products.productname, 
sum(orders.sales) AS Total_Sale_Revenue
FROM products 
JOIN orders ON products.productid= orders.productid
GROUP BY products.productid, products.productname
ORDER BY Total_Sale_Revenue DESC;
