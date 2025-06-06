CREATE DATABASE OTAIBURGER;
USE OTAIBURGER;



create table customer(
customer_id varchar(10) not null, 
customer_name varchar(30) not null,
customer_telNo varchar(15),
customer_address varchar(50),
primary key (customer_id)
);

create table employee(
employee_id varchar(10) not null,
employee_name varchar(30) not null,
employee_position varchar(20),
employee_telNo varchar (15),
primary key (employee_id)
);

create table supplier(
supplier_id varchar(10) not null,
supplier_name varchar(30) not null,
supplier_telNo varchar(15),
primary key (supplier_id)
);

create table payment(
paymentInvoiceNumber varchar(10) not null,
payment_date date not null,
payment_status integer not null,
primary key (paymentInvoiceNumber)
);


create table orders(
order_id varchar(10) not null,
order_date datetime,
order_total_amount double not null,
employee_id varchar(10) not null,
paymentInvoiceNumber varchar(10) not null,
primary key (order_id),
foreign key (employee_id) references employee(employee_id),
foreign key (paymentInvoiceNumber) references payment(paymentInvoiceNumber)
);


create table inventory(
inventory_id varchar(10) not null,
inventory_name varchar(30) not null,
inventory_price double not null,
inventory_quantity_in_stock integer not null,
supplier_id varchar(10) not null,
primary key (inventory_id),
foreign key (supplier_id) references supplier(supplier_id)
); 

CREATE TABLE menuItem (
menu_id VARCHAR(10) NOT NULL,
menu_type VARCHAR(20) NOT NULL,
menu_price DOUBLE NOT NULL,
primary key (menu_id)
);


create table menuItem_inventory(
menu_id varchar(10),
inventory_id varchar(10),
quantity integer not null,
primary key (menu_id, inventory_id),
foreign key (menu_id) references menuItem(menu_id),
foreign key (inventory_id) references inventory(inventory_id)
);

create table order_menuItem(
order_id varchar(10),
menu_id varchar(10),
primary key (order_id, menu_id)
);

create table customer_menuItem(
customer_id varchar(10),
menu_id varchar(10),
primary key (customer_id, menu_id)
);




INSERT INTO customer (customer_id, customer_name, customer_telNo, customer_address) VALUES
('C001', 'Ahmad Zaki', '0123456789', 'Jalan Tun Razak, Kuala Lumpur'),
('C002', 'Nurul Izzah', '0112233445', 'Taman Bukit Indah, Johor Bahru'),
('C003', 'Siti Aisyah', '0175566778', 'Jalan Ampang, Kuala Lumpur'),
('C004', 'Muhammad Hafiz', '0183344556', 'Taman Universiti, Skudai'),
('C005', 'Nur Syafiqah', '0168899774', 'Jalan Gurney, Georgetown'),
('C006', 'Ali Imran', '0129988776', 'Taman Tasik Utama, Melaka'),
	('C007', 'Hana Azman', '0134455667', 'Kampung Baru, Kuala Lumpur'),
	('C008', 'Amirul Hakim', '0196677885', 'Jalan Kebun, Shah Alam'),
	('C009', 'Aisyah Zahra', '0143344552', 'Bandar Baru Bangi, Selangor'),
	('C010', 'Zulkifli Anuar', '0188877665', 'Taman Pelangi, Johor Bahru'),
	('C011', 'Farah Nadia', '0179988771', 'Kota Laksamana, Melaka'),
	('C012', 'Faris Iman', '0162233448', 'Jalan Merdeka, Shah Alam'),
	('C013', 'Aminah Rahman', '0193344557', 'Taman Sri Rampai, Kuala Lumpur'),
	('C014', 'Hafizah Jamil', '0138899776', 'Taman Seputeh, Kuala Lumpur'),
	('C015', 'Izzudin Ali', '0125566778', 'Jalan Bukit Bintang, Kuala Lumpur'),
	('C016', 'Norazlan Hadi', '0192233445', 'Taman Desa Tebrau, Johor Bahru'),
	('C017', 'Aiman Faris', '0186677882', 'Bandar Sunway, Selangor'),
	('C018', 'Syafiq Hakim', '0173344551', 'Bandar Sri Permaisuri, Cheras'),
	('C019', 'Zainab Ahmad', '0118899774', 'Bandar Mahkota Cheras, Selangor'),
	('C020', 'Roslan Ibrahim', '0135566773', 'Jalan Lintas, Kota Kinabalu');

	INSERT INTO employee (employee_id, employee_name, employee_position, employee_telNo) VALUES
	('E001', 'Ali Hassan', 'Manager', '01112345678'),
	('E002', 'Siti Aminah', 'Assistant Manager', '01298765432'),
	('E003', 'Ahmad Bakar', 'Supervisor', '01334567890'),
	('E004', 'Rina Aziz', 'Cashier', '01456789012'),
	('E005', 'Farah Nor', 'Cashier', '01567890123'),
	('E006', 'Zainal Hamid', 'Cashier', '01678901234'),
	('E007', 'Nora Idris', 'Cashier', '01789012345');


	INSERT INTO PAYMENT (paymentInvoiceNumber, payment_date, payment_status) VALUES
	('P001', '2025-01-05', 1),
	('P002', '2025-01-10', 1),
	('P003', '2025-02-05', 0),
	('P004', '2025-02-15', 1),
	('P005', '2025-03-01', 0),
	('P006', '2025-03-10', 1),
	('P007', '2025-04-05', 1),
	('P008', '2025-04-18', 0),
	('P009', '2025-05-02', 1),
	('P010', '2025-05-20', 1),
	('P011', '2025-06-01', 0),
	('P012', '2025-06-15', 1),
	('P013', '2025-07-05', 1),
	('P014', '2025-07-18', 0),
	('P015', '2025-08-05', 1),
	('P016', '2025-08-25', 1),
	('P017', '2025-09-10', 0),
	('P018', '2025-09-20', 1),
	('P019', '2025-10-05', 1),
	('P020', '2025-10-22', 0),
	('P021', '2025-11-01', 1),
	('P022', '2025-11-15', 1),
	('P023', '2025-11-25', 0),
	('P024', '2025-12-01', 1),
	('P025', '2025-12-10', 1),
	('P026', '2025-12-15', 0),
	('P027', '2025-12-20', 1),
	('P028', '2025-12-30', 1);


	INSERT INTO orders (order_id, order_date, order_total_amount, employee_id, paymentInvoiceNumber) VALUES
	('O001', '2025-01-05 10:00:00', 25.00, 'E001', 'P001'),
	('O002', '2025-01-10 11:30:00', 35.00, 'E002', 'P002'),
	('O003', '2025-02-05 12:15:00', 20.00, 'E003', 'P003'),
	('O004', '2025-02-15 13:45:00', 15.00, 'E004', 'P004'),
	('O005', '2025-03-01 14:30:00', 18.00, 'E005', 'P005'),
	('O006', '2025-03-10 15:00:00', 22.00, 'E006', 'P006'),
	('O007', '2025-04-05 16:00:00', 30.00, 'E007', 'P007'),
	('O008', '2025-04-18 17:30:00', 28.00, 'E001', 'P008'),
	('O009', '2025-05-02 18:45:00', 32.00, 'E002', 'P009'),
	('O010', '2025-05-20 19:30:00', 25.00, 'E003', 'P010'),
	('O011', '2025-06-01 10:15:00', 40.00, 'E004', 'P011'),
	('O012', '2025-06-15 12:45:00', 50.00, 'E005', 'P012'),
	('O013', '2025-07-05 13:30:00', 60.00, 'E006', 'P013'),
	('O014', '2025-07-18 14:00:00', 45.00, 'E007', 'P014'),
	('O015', '2025-08-05 15:30:00', 70.00, 'E001', 'P015'),
	('O016', '2025-08-25 16:15:00', 55.00, 'E002', 'P016'),
	('O017', '2025-09-10 17:45:00', 65.00, 'E003', 'P017'),
	('O018', '2025-09-20 18:30:00', 75.00, 'E004', 'P018'),
	('O019', '2025-10-05 19:15:00', 85.00, 'E005', 'P019'),
	('O020', '2025-10-22 20:00:00', 95.00, 'E006', 'P020'),
	('O021', '2025-11-01 10:00:00', 40.00, 'E007', 'P021'),
	('O022', '2025-11-15 11:00:00', 50.00, 'E001', 'P022'),
	('O023', '2025-11-25 12:30:00', 60.00, 'E002', 'P023'),
	('O024', '2025-12-01 13:45:00', 45.00, 'E003', 'P024'),
	('O025', '2025-12-10 15:00:00', 70.00, 'E004', 'P025'),
	('O026', '2025-12-15 16:30:00', 55.00, 'E005', 'P026'),
	('O027', '2025-12-20 17:45:00', 65.00, 'E006', 'P027'),
	('O028', '2025-12-30 18:15:00', 75.00, 'E007', 'P028');


	INSERT INTO supplier (supplier_id, supplier_name, supplier_telNo) VALUES
	('S001', 'Fresh Meat Co.', '0123456789'),
	('S002', 'Dairy Delights', '0119876543'),
	('S003', 'Seafood Supplies', '0134567890'),
	('S004', 'Green Veggie Farm', '0145678901'),
	('S005', 'Frozen Foods Ltd.', '0156789012');

	INSERT INTO menuItem (menu_id, menu_type, menu_price) VALUES
	('M001', 'Classic Beef Burger', 8.00),
	('M002', 'Cheese Burger', 9.00),
	('M003', 'Chicken Burger', 7.50),
	('M004', 'Double Beef Burger', 12.00),
	('M005', 'Fish Burger', 7.00),
	('M006', 'Lamb Burger', 15.00),
	('M007', 'Veggie Burger', 6.50),
	('M008', 'Chicken Nuggets', 5.00),
	('M009', 'French Fries', 3.50),
	('M010', 'Soft Drink', 2.00);


	INSERT INTO inventory (inventory_id, inventory_name, inventory_price, inventory_quantity_in_stock, supplier_id) VALUES
	('I001', 'Beef Patty', 2.50, 100, 'S001'),
	('I002', 'Cheese Slice', 0.50, 200, 'S002'),
	('I003', 'Chicken Patty', 2.00, 150, 'S001'),
	('I004', 'Fish Fillet', 1.80, 120, 'S003'),
	('I005', 'Lamb Patty', 3.00, 80, 'S001'),
	('I006', 'Burger Buns', 0.70, 500, 'S002'),
	('I007', 'Lettuce', 0.30, 300, 'S004'),
	('I008', 'Tomato', 0.20, 300, 'S004'),
	('I009', 'Nuggets', 1.50, 200, 'S005'),
	('I010', 'Potatoes', 0.40, 400, 'S005');


	INSERT INTO menuItem_inventory (menu_id, inventory_id, quantity) VALUES
	('M001', 'I001', 1), 
	('M001', 'I006', 1), 
	('M001', 'I007', 1), 
	('M001', 'I008', 1),
	('M002', 'I001', 1), 
	('M002', 'I006', 1), 
	('M002', 'I002', 1),
	('M003', 'I003', 1), 
	('M003', 'I006', 1), 
	('M003', 'I007', 1), 
	('M003', 'I008', 1),
	('M004', 'I001', 2), 
	('M004', 'I006', 1), 
	('M004', 'I007', 1), 
	('M004', 'I008', 1),
	('M005', 'I004', 1), 
	('M005', 'I006', 1), 
	('M005', 'I007', 1), 
	('M005', 'I008', 1),
	('M006', 'I005', 1), 
	('M006', 'I006', 1), 
	('M006', 'I007', 1), 
	('M006', 'I008', 1),
	('M007', 'I006', 1), 
	('M007', 'I007', 1), 
	('M007', 'I008', 1),
	('M008', 'I009', 1),
	('M009', 'I010', 1),
	('M010', 'I010', 1);


	INSERT INTO order_menuItem (order_id, menu_id) VALUES
	('O001', 'M001'), 
	('O001', 'M009'),
	('O002', 'M002'), 
	('O002', 'M010'),
	('O003', 'M003'), 
	('O003', 'M009'),
	('O004', 'M004'),
	('O005', 'M005'), 
	('O005', 'M010'),
	('O006', 'M006'), 
	('O006', 'M009'),
	('O007', 'M007'), 
	('O007', 'M008'),
	('O008', 'M001'), 
	('O008', 'M010'),
	('O009', 'M002'), 
	('O009', 'M009'),
	('O010', 'M003'), 
	('O010', 'M008'),
	('O011', 'M004'), 
	('O011', 'M010'),
	('O012', 'M005'), 
	('O012', 'M009'),
	('O013', 'M006'), 
	('O013', 'M008'),
	('O014', 'M007'), 
	('O014', 'M009'),
	('O015', 'M001'), 
	('O015', 'M010'),
	('O016', 'M002'), 
	('O016', 'M009'),
	('O017', 'M003'), 
	('O017', 'M008'),
	('O018', 'M004'), 
	('O018', 'M010'),
	('O019', 'M005'), 
	('O019', 'M009'),
	('O020', 'M006'), 
	('O020', 'M008'),
	('O021', 'M007'), 
	('O021', 'M009'),
	('O022', 'M001'), 
	('O022', 'M010'),
	('O023', 'M002'), 
	('O023', 'M009'),
	('O024', 'M003'), 
	('O024', 'M008'),
	('O025', 'M004'), 
	('O025', 'M010'),
	('O026', 'M005'), 
	('O026', 'M009'),
	('O027', 'M006'), 
	('O027', 'M008'),
	('O028', 'M007'), 
	('O028', 'M009');

	INSERT INTO customer_menuItem (customer_id, menu_id) VALUES
	('C001', 'M001'), 
	('C001', 'M005'),
	('C002', 'M002'), 
	('C002', 'M006'),
	('C003', 'M003'), 
	('C003', 'M007'),
	('C004', 'M004'), 
	('C004', 'M008'),
	('C005', 'M005'), 
	('C005', 'M009'),
	('C006', 'M006'), 
	('C006', 'M010'),
	('C007', 'M007'), 
	('C007', 'M001'),
	('C008', 'M008'), 
	('C008', 'M002'),
	('C009', 'M009'), 
	('C009', 'M003'),
	('C010', 'M010'), 
	('C010', 'M004'),
	('C011', 'M001'), 
	('C011', 'M005'),
	('C012', 'M002'), 
	('C012', 'M006'),
	('C013', 'M003'), 
	('C013', 'M007'),
	('C014', 'M004'), 
	('C014', 'M008'),
	('C015', 'M005'), 
	('C015', 'M009'),
	('C016', 'M006'), 
	('C016', 'M010'),
	('C017', 'M007'), 
	('C017', 'M001'),
	('C018', 'M008'), 
	('C018', 'M002'),
	('C019', 'M009'), 
	('C019', 'M003'),
	('C020', 'M010'), 
	('C020', 'M004');

