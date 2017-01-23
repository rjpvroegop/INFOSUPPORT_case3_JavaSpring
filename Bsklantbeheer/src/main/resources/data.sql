INSERT INTO customer (id, bs_key, first_name, last_name, email, birth_date, credit, phone)
VALUES (1, 'CUST000001', 'Sander', 'Blijlevens', 'SB@hotmail.com', '1995-12-31', 2000, '0625235100');
INSERT INTO customer (id, bs_key, first_name, last_name, email, birth_date, credit, phone)
VALUES (2, 'CUST000002','Kenzo', 'Dominicus', 'KD@gmail.com', '1993-05-18', 300, '0671495864');
INSERT INTO customer (id, bs_key, first_name, last_name, email, birth_date, credit, phone)
VALUES (3, 'CUST000003','Randy', 'Vroegop', 'RV@hotmail.com', '1994-02-09', 300, '0691426853');
INSERT INTO customer (id, bs_key, first_name, last_name, email, birth_date, credit, phone)
VALUES (4, 'CUST000004','Yusuf', 'Yusuf', 'YY@outlook.com', '1995-09-25', 250, '0648956273');
INSERT INTO customer (id, bs_key, first_name, last_name, email, birth_date, credit, phone)
VALUES (5, 'CUST000005','Maarten', 'van den Broek', 'MB@yahoo.com', '1992-03-05', 300, '0625843515');

INSERT INTO webshop_account (id, `password`, user_name, customer_id) VALUES (1, '123', 'ABC', 1);
INSERT INTO webshop_account (id, `password`, user_name, customer_id) VALUES (2, '456', 'CDE', 2);
INSERT INTO webshop_account (id, `password`, user_name, customer_id) VALUES (3, '789', 'FGH', 3);
INSERT INTO webshop_account (id, `password`, user_name, customer_id) VALUES (4, '987', 'IJK', 4);
INSERT INTO webshop_account (id, `password`, user_name, customer_id) VALUES (5, '654', 'LMN', 5);

UPDATE customer
SET webshop_account_id = id;

INSERT INTO address (id, city, deleted, street, zip, customer_id)
VALUES (1, 'Dordrecht', 0, 'Leerpark 50', '1234 AB', 1);
INSERT INTO address (id, city, deleted, street, zip, customer_id)
VALUES (2, 'Teteringen', 0, 'Schijfstraat 26B', '4847SM', 1);

