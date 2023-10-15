use store;

CREATE TABLE city(
id int identity primary key,
name varchar(50)
);

/*
esta sintaxis en mysql
ALTER TABLE city CHANGE COLUMN 
name
name VARCHAR(50) NOT NULL; 
*/

/* sintaxis en sql server*/

ALTER TABLE city ALTER COLUMN 
name varchar (50) not null;

ALTER TABLE city ADD colonia varchar (50);

ALTER TABLE city ALTER COLUMN 
colonia varchar (50) not null;