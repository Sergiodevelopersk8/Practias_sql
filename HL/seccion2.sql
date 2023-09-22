use store;
/* auto_increment en mysql*/
CREATE TABLE customer(
Id int primary key identity,
name varchar(50) not null
);


select * from customer;

/* Modificar tabla */

/*ALTER TABLE customer ADD email VARCHAR (100);*/

ALTER TABLE customer ADD phone VARCHAR (100);

/*para eliminar una columna  DROP COLUMN 'phone'; pero esta sintaxis es para  mysql */

/*Sintaxis para sql server */
ALTER TABLE customer DROP COLUMN phone;

/*para modificar una columna  MODIFY COLUMN email VARCHAR (50) NOT NULL; pero esta sintaxis es para  mysql */

/* modificar en sql server */
ALTER TABLE customer ALTER COLUMN email VARCHAR (50) not null;

CREATE TABLE something(
Id int primary key identity,
name varchar(50) not null
);

select * from something;

DROP TABLE something;