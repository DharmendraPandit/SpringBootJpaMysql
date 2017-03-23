CREATE DATABASE JPADB;
use JPADB;

create table city (
id bigint not null auto_increment, 
country varchar(255) not null, 
map varchar(255) not null, 
name varchar(255) not null, 
state varchar(255) not null, 
primary key (id));

create table hotel (
id bigint not null auto_increment, 
address varchar(255) not null, 
name varchar(255) not null, 
zip varchar(255) not null, 
city_id bigint not null, 
primary key (id));

create table review (
id bigint not null auto_increment, 
check_in_date date not null, 
details longtext not null, 
idx integer not null, 
rating integer not null, 
title varchar(255) not null, 
trip_type integer not null, 
hotel_id bigint not null, 
primary key (id));

alter table hotel add constraint UK_i80qjsl99gene06k3t31y3sv5 unique (city_id, name);

alter table hotel add constraint FKf1iabdv6bi2yohh9h48wce42x foreign key (city_id) references city (id);

alter table review add constraint FKi0ly7ivbh8ijdgoi7cwtuoavt foreign key (hotel_id) references hotel (id);