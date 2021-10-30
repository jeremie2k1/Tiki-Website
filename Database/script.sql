CREATE DATABASE Tiki;

USE Tiki;
CREATE TABLE slides (
	id integer auto_increment,
    img varchar(255) not null,
    caption varchar(255) not null,
    content varchar(255) not null,
    primary key (id)
);

USE Tiki;
CREATE TABLE category (
	id varchar(255) not null,
    name varchar(255) not null,
    description text,
    primary key (id)
);

USE Tiki;
CREATE TABLE products (
	id bigint auto_increment,
    id_category varchar(255) not null,
    name varchar(255) not null,
    author varchar(255) not null,
    imprint varchar(255) not null,
    published_date datetime not null,
    isbn varchar(255) not null,
    lengths int not null,
    dimensions varchar(255) not null,
    weight int not null,
    price double not null,
    sale int,
    description text not null,
    detail longtext not null,
    highlight boolean not null,
    new_product boolean not null,
    rating int not null,
    image varchar(255) not null,
    primary key (id),
    foreign key (id_category) references category(id)
);
ALTER TABLE products ALTER COLUMN rating SET DEFAULT 5;
ALTER TABLE products ALTER COLUMN sale SET DEFAULT 0;

USE Tiki;
CREATE TABLE menu (
	id int auto_increment,
    name varchar(255) not null,
    url varchar(255),
    primary key (id)
);

USE Tiki;
SELECT * FROM slides
