

CREATE TABLE Bank_Account_Summary ( AccountNumber INT, AccountHolderName CHAR(50),TransactionDate date,TransactionType CHAR(50), TransactionAmount INT );

INSERT INTO public.bank_account_summary VALUES (1001,'Ravi Sharma','2023-07-01','Deposit',5000.00 );
INSERT INTO public.bank_account_summary VALUES (1001, 'Ravi Sharma','2023-07-05','Withdrawal',1000.00);
INSERT INTO public.bank_account_summary VALUES (1001,'Ravi Sharma','2023-07-10','Deposit',2000.00),(1002,'Priya Gupta','2023-07-02','Deposit',3000.00 ), (1002,'Priya Gupta','2023-07-08','Withdrawal',500.00 ), (1003,'Vikram Patel','2023-07-04','Deposit',10000.00),(1003,'Vikram Patel','2023-07-09','Withdrawal',2000.00 );

 SELECT AccountNumber,AccountHolderName,
    SUM(
        CASE
            WHEN TransactionType = 'Deposit' THEN TransactionAmount
            WHEN TransactionType = 'Withdrawal' THEN -TransactionAmount
        END
    ) AS Balance
FROM
    Bank_Account_Summary
GROUP BY
    AccountNumber, AccountHolderName
ORDER BY AccountNumber;


