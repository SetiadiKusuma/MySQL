create table users (
id int not null auto_increment primary key,
email varchar (225) not null,
name varchar (225) not null,
password varchar (225) not null,
address varchar (225) not null,
role varchar (225) not null,
status varchar (225) not null,
created_at timestamp DEFAULT CURRENT_TIMESTAMP,
updated_at timestamp DEFAULT CURRENT_TIMESTAMP
)

create table categories (
id int not null auto_increment,
user_id int not null,
code varchar (225) not null,
name varchar (225) not null,
slug varchar (225) not null,
description text not null,
status varchar (225) not null,
photo varchar (225) default null,

primary key (id),
FOREIGN KEY (user_id) references users(id)
)

create table products(
id int not null auto_increment,
category_id int not null,
user_id int not null,
code varchar (225) not null,
name varchar (225) not null,
slug varchar (225) not null,
description longtext,
photo varchar (225) default null,
qty double,
unit varchar (225) not null,
price double,
status varchar (225),

PRIMARY KEY (id),
FOREIGN KEY (user_id) references users(id),
FOREIGN KEY (category_id) references categories(id)
)

insert into users(email, name, password, address, role, status)
values 
('jalu@gmail.com', 'jalu', '123456', 'bogor', 'admin', 'active'),
('ade@gmail.com', 'ade', '123456', 'jakarta', 'admin', 'active')

set @users = (select id from users limit 1)

insert into categories (user_id, code, name, slug, description, status, photo)
values
(@users, 'A01', 'sweater', 'uniqlo', 'bahan katun', 'availabe', 'http://sweater.uniqlo.png'),
(@users, 'A01', 'kaos', 'uniqlo', 'bahan sutra', 'availabe', 'http://kaos.uniqlo.png')

set @categories = (select id from categories limit 1)

insert into products (category_id, user_id, code, name, slug, description, photo, qty, unit, price, status)
values
(@categories, @users, 'S1', 'lambswool', 'uniqlo', 'bahan katun', 'http://sweater.uniqlo.png', 10, '10', 230.000, 'available'),
(@categories, @users, 'K1', 'oversize', 'uniqlo', 'bahan sutra', 'http://kaos.uniqlo.png', 5, '5', 150.000, 'available')

select users.id, users.name, categories.name, products.name from users
left join categories on users.id = categories.user_id
left join products on categories.id = products.category_id and users.id = products.user_id