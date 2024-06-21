-- If table exists drop
drop table if exists contacts;
drop table if exists category;
drop table if exists campaign;
drop table if exists subcategory;

-- Create data tables, contacts, category, campaign and subcategory
create table contacts(
contact_id int primary key,
first_name varchar not null,
last_name varchar not null,
email varchar not null
);

create table category(
category_id varchar not null primary key,
category varchar not null
);

create table subcategory(
subcategory_id varchar not null primary key,
subcategory varchar not null
);

create table campaign(
cf_id int not null primary key,
contact_id int not null,
company_name varchar not null,
description varchar not null,
goal float not null,
pledged int not null,
outcome varchar not null,
backers_count int not null,
country varchar not null,
currency varchar not null,
launched_date date not null,
end_date date not null,
category_id varchar not null,
subcategory_id varchar not null,
--Create foreign keys and references
foreign key (contact_id) references contacts(contact_id),
foreign key (category_id) references category(category_id),
foreign key (subcategory_id) references subcategory(subcategory_id)
);





