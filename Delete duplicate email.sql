
CREATE TABLE Emails (id INT,
 "name" VARCHAR(30), email VARCHAR(50), phone VARCHAR(10));
 
 INSERT INTO public.emails VALUES (1,'Rahul','rahul@example.com',9876543210), (2,'Rohit','rohit@example.com',7654321098), (3,'Suresh','rahul@example.com',7654321098),(4,'Manish','manish@example.com',6543210987),(5,'Amit','amit@example.com',5432109876),(6,'Rahul','rahul@example.com',4321098765);
 
 DELETE FROM emails
WHERE id NOT IN (
    SELECT MIN(id)
    FROM emails
    GROUP BY email
);
 
 
