create database JPX;
use JPX;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARBINARY(256)
);

create table category_tbl(
category_id int not null primary key auto_increment,
category_name VARCHAR(40) not null
);
create table product_tbl(
product_id int not null primary key auto_increment,
product_name VARCHAR(40) not null,
product_value int null,
category_id int not null
);


alter table product_tbl 
add constraint category_id
foreign key (category_id)
references category_tbl (category_id);

INSERT INTO JPX.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('jose'), UPPER('lopez'), 'joseloepz1454@correo.com',AES_ENCRYPT
('password', '$2a$16$IObepHE2/gZkXlY3RTcx..WE8VcMNYek78ho3GZp6Sxwhku7ZoFYi'));
INSERT INTO JPX.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('jUAN'), UPPER('jOSE'), 'juanjose02@gmail.com',AES_ENCRYPT
('Jeanpool14', '$2a$16$IObepHE2/gZkXlY3RTcx..WE8VcMNYek78ho3GZp6Sxwhku7ZoFYi'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$16$IObepHE2/gZkXlY3RTcx..WE8VcMNYek78ho3GZp6Sxwhku7ZoFYi') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 2;    

select * from users_tbl;
select * from category_tbl;
select * from product_tbl;

DROP DATABASE JPX;