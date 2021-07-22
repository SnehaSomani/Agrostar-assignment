USE eCommerce;

INSERT INTO Supplier VALUES 
(101,NULL,'RUNAMORA','John','8788675676','SMroad','Pune','john23@gmail.com',15),		
(102,NULL,'AUCREATION','Sam','8785643276','SBroad','Mumbai','sam45@gmail.com',5),
(103,NULL,'Urban Creation','Rocky','8976567887','VM road','Nashik','rocky@gmail.com',25),
(104,NULL,'Textile Fab','Vaishnavi','7084562376','AS nagar','Nagpur','vaishnavi@gmail.com',16),
(105,NULL,'DSK Studio','Rupali','9176890056','GM road','Shrirampur','rupali12@gmail.com',15);

COMMIT;

INSERT INTO Product VALUES 
(11,'Desktop computer','computer',1,30000,155,'Black',20,NULL,101),
(12,'Women Jeans','skinny jeans',2,2000,655,'Blue',5,NULL,102),
(13,'Girl Shoes','fshionable shoes',1,1599,67,'Pink',3,NULL,102),
(14,'Earnings','round stone',1,599,25,'Golden',2,NULL,103),
(15,'Smart watch','square shape',2,25000,22,'Black',7,NULL,105);

COMMIT;

INSERT INTO Category VALUES 
(1001,'Electronic','computer,laptop'),
(1002,'Clothes','women clothes'),
(1003,'Shoes','kids choes'),
(1004,'Jwellery','all jwellery'),
(1005,'clothes','men clothes');

COMMIT;

UPDATE Product SET category_id = 1001 WHERE product_id = 11;
UPDATE Product SET category_id = 1004 WHERE product_id = 12;
UPDATE Product SET category_id = 1005 WHERE product_id = 13;
UPDATE Product SET category_id = 1003 WHERE product_id = 14;
UPDATE Product SET category_id = 1002 WHERE product_id = 15;

COMMIT;

INSERT INTO Customer VALUES 
(151,'Anna','Castro','1986-11-23','F','castro@gmail.com','8976546765','SBroad','Pune'),		
(152,'John','Ancona','1987-3-23','M','john111@gmail.com','7865435665','CMroad','Nagar'),
(153,'Dilbert','Donahue','1991-10-6,'M','Dilbert@gmail.com','8975357556','deccan','Nagpur'),
(154,'Jane','Zheng','1989-8-16','F','jane@gmail.com','776574567','SB chowk','Nashik'),
(155,'Rosa','Hernandez','1996-8-19','F','rosa@gmail.com','9176567656','KM road','Pune');

INSERT INTO Payment VALUES 
(100001,151,'online','368544623795203','AmEx'),
(100002,153,'cash on delivery','4937515149549500','Visa'),
(100003,155,'online','4808437630180081','Visa'),
(100004,152,'cash on delivery','4828526348154572','Visa'),
(100005,154,'online','4248168108403535','Visa');

COMMIT;

UPDATE Supplier SET customer_id = 151 WHERE supplier_id = 101;
UPDATE Supplier SET customer_id = 155 WHERE supplier_id = 102;
UPDATE Supplier SET customer_id = 154 WHERE supplier_id = 103;
UPDATE Supplier SET customer_id = 153 WHERE supplier_id = 104;
UPDATE Supplier SET customer_id = 152 WHERE supplier_id = 105;

COMMIT;

INSERT INTO cart VALUES 
(1051,10005,11,1,7),
(1052,10004,13,4,5),	
(1053,10002,14,1,15),	
(1054,10003,15,2,4),	
(1055,10001,12,3,5);

INSERT INTO Order VALUES 
(10001,151,1051,100001,'2019-12-20','2019-12-20','2019-12-20','2019-12-24',NULL,NULL),
(10002,155,1054,100003,'2019-11-30','2019-11-30','2019-11-30','2019-12-2',NULL,NULL),
(10003,152,1055,100002,'2019-6-12','2019-6-12','2019-6-12','2019-6-14',2019-6-16,NULL),
(10004,153,1052,100005,'2019-12-20','2019-12-20','2019-12-20','2019-12-24',NULL,NULL),
(10005,154,1053,100004,'2019-7-14','2019-7-14','2019-7-14','2019-7-14',NULL,2019-7-24);	

COMMIT;




