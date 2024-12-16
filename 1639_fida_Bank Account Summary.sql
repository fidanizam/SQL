CREATE TABLE transactions( account_no INT NOT NULL,account_holder_name VARCHAR(200) NOT NULL,transaction_date date NOT NULL,transaction_type VARCHAR(200) NOT NULL,transaction_amount FLOAT NOT NULL);
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1001','Ravi Sharma', '2023-07-01','Deposit',
'5000.00');
SELECT * FROM transactions;
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1001','Ravi Sharma', '2023-07-05','Withdrawal',
'1000.00');
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1001','Ravi Sharma', '2023-07-10','Deposit',
'2000.00');
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1002','Priya Gupta', '2023-07-02','Deposit',
'3000.00');
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1002','Priya Gupta', '2023-07-08','Withdrawal',
'500.00');
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1003','Vikram Patel', '2023-07-04','Deposit',
'10000.00');
INSERT INTO transactions( account_no,account_holder_name,transaction_date,transaction_type,transaction_amount ) VALUES ('1003','Vikram Patel', '2023-07-09','Withdrawal',
'2000.00');
SELECT 
    account_no,
    account_holder_name,
    SUM(
        CASE 
            WHEN transaction_type = 'Deposit' THEN transaction_amount
            WHEN transaction_type = 'Withdrawal' THEN -transaction_amount
        END
    ) AS TotalBalance
FROM transactions
GROUP BY account_no, account_holder_name;




