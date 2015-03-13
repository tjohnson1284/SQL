create TABLE customer(id INTEGER PRIMARY KEY, company VARCHAR(25),firstName VARCHAR(25), lastName VARCHAR(25), street VARCHAR(25), city VARCHAR(25), state VARCHAR(2), zip VARCHAR(9), phone VARCHAR(13));

create TABLE orders(OrderId INTEGER PRIMARY KEY, OrderDate DATE NOT NULL, ShipDate DATE NOT NULL, Shipping FLOAT, SalesTax FLOAT, customerId INTEGER);

create TABLE orderInfo(orderId INTEGER, qty INTEGER, Price FLOAT, ISBN integer(30), primary key(orderId, ISBN));

create TABLE books(isbn integer(30) PRIMARY KEY, Title VARCHAR(25), Price float, Author varchar(25), Pages integer, PubDate DATE, qty integer);

insert into customer(id, company, firstName, lastName, street,
city, state, zip, phone)values(1, null, 'Test', 'Mctesterson', '123 test street', 'los angeles', 'ca', 90210, '(323)777-8944');

insert into customer(id, company, firstName, lastName, street,
city, state, zip, phone)values(2, null, 'T', 'J', '123 test avenue', 'marina', 'ca', 93933, '(831)777-8944');

insert into customer(id, company, firstName, lastName, street,
city, state, zip, phone)values(3, null, 'A', 'J', '123 test avenue', 'marina', 'ny', 36584, '(831)777-8944');

insert into customer(id, company, firstName, lastName, street,
city, state, zip, phone)values(4, null, 'F', 'J', '123 test avenue', 'marina', 'az', 36584, '(831)777-8944');

insert into customer(id, company, firstName, lastName, street,
city, state, zip, phone)values(5, null, 'Z', 'J', '123 test avenue', 'marina', 'ca', 93950, '(831)777-8944');

insert into orders(OrderId, OrderDate, ShipDate, Shipping, SalesTax, customerId) values(1, '2015-02-12', '2015-02-14', 5.95, 9.00, 1);

insert into orders(OrderId, OrderDate, ShipDate, Shipping, SalesTax, customerId) values(2, '2015-02-12', '2015-02-14', 5.95, 9.00, 1);

insert into orders(OrderId, OrderDate, ShipDate, Shipping, SalesTax, customerId) values(3, '2015-02-12', '2015-02-14', 5.95, 9.00, 2);

insert into orders(OrderId, OrderDate, ShipDate, Shipping, SalesTax, customerId) values(4, '2015-02-12', '2015-02-14', 5.95, 9.00, 3);

insert into orders(OrderId, OrderDate, ShipDate, Shipping, SalesTax, customerId) values(5, '2015-02-12', '2015-02-14', 5.95, 9.00, 4);

insert into orders(OrderId, OrderDate, ShipDate, Shipping, SalesTax, customerId) values(6, '2015-02-12', '2015-02-14', 5.95, 9.00, 5);

insert into books(isbn, Title, Price, Author, Pages, PubDate, qty)
values(123456789, 'test town vol. 1', 12.95, 'Test Mctesterton', 695, '2014-12-31', 25);

insert into books(isbn, Title, Price, Author, Pages, PubDate, qty)
values(987654321, 'test town vol. 2', 12.95, 'Test Mctesterton', 700, '2015-01-01', 25);

insert into books(isbn, Title, Price, Author, Pages, PubDate, qty)
values(987456321, 'test town vol. 3', 12.95, 'Test Mctesterton', 700, '2015-01-02', 25);

insert into books(isbn, Title, Price, Author, Pages, PubDate, qty)
values(978654321, 'test town vol. 4', 12.95, 'Test Mctesterton', 700, '2015-01-03', 25);

insert into books(isbn, Title, Price, Author, Pages, PubDate, qty)
values(897654321, 'test town vol. 5', 12.95, 'Test Mctesterton', 700, '2015-01-04', 25);

insert into orderInfo(orderId, qty, Price, ISBN) values(1, 1, 12.95, 123456789);

insert into orderInfo(orderId, qty, Price, ISBN) values(1, 1, 12.95, 987654321);

select firstName, lastName FROM customer WHERE state = 'ca';

select * FROM customer where zip = 93933 or zip = 93950;
select * FROM customer, orders where customer.id = orders.customerId;
select * FROM books where Title like 'A%';
select * FROM orderInfo, books where orderInfo.isbn = books.isbn and Title like 'A%'
select * from orders where OrderDate >= ( CURDATE() - INTERVAL 10 DAY );
update from customer firstName = 'Mary' where id = 1;
delete * from customer where state = 'az';
