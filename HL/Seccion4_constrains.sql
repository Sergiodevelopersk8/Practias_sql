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



/*
sintaxis de mysql
ALTER TABLE city ADD UNIQUE (name)
*/


/*
sintaxis para sql server
*/
ALTER TABLE city ADD CONSTRAINT unico_nombre UNIQUE (name)

select * from city;

INSERT INTO city (name,colonia) values ('Guadalajara','centro');



/* constrains default*/


/*
Sintaxis para mysql  

ALTER TABLE customer ADD COLUMN currency varchar(3) DEFAULT 'MXN'
*/



/*Sintaxis para sqlserver*/

ALTER TABLE customer ADD currency varchar(3) DEFAULT 'MXN';

insert into customer (name,email) values('megaman','mann@sjHJ');



/*y para actualizar por que los valores que ya exsistian y se pusieron el valor de null en lugar de MXN se 
hace lo siguiente */

UPDATE customer SET currency ='MXN' WHERE currency IS NULL;
/*aunque marque los errores si se efectuan los cambios*/



/*
SINTAXIS DE MYSQL 
ALTER TABLE customer ADD COLUMN create_at DATATIME; -> esta version da null

ALTER TABLE customer ALTER create_at SET DEFAULT CURRENT_TIMESTAMP(); -> aqui es por default
*/

/*Sintaxis en sqlserver*/
ALTER TABLE customer ADD create_at DATETIME; /*Esta version pone en null*/

UPDATE customer SET create_at = GETDATE() WHERE create_at IS NULL; /*esto actualiza los null*/

ALTER TABLE customer ADD CONSTRAINT FECHAS_default  DEFAULT  GETDATE() FOR create_at; /*por default*/

insert into customer (name,email) values ('asuka','eva@gmail.com');


/*
sintaxis en mysql
CREATE INDEX idx_name ON customer (name)

ALTER TABLE customer DROP INDEX idx_name; -> eliminar el index

*/


/*
Sintaxis en sqlserver
*/

CREATE INDEX idx_name ON customer (name);


/*
sintaxis de mysql
ALTER TABLE customer ADD CONSTRAINT  check_name CHECK (name <> 'abc');
*/


/*
sintaxis de sql server
*/
ALTER TABLE customer ADD CONSTRAINT  check_name CHECK (name <> 'abc');


insert into customer (name,email) values('abc','abc@sjHJ');
select * from customer;


/*
version de mysql
show create table customer;
*/

/*
version de sql server
*/

EXEC sp_help 'customer';/*para obtener informacion de la tabla*/

SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE 'customer' = 'customer';



/*

sintaxis de mysql
ALTER TABLE customer ADD COLUMN city_id INT;
ALTER TABLE customer ADD CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city(id);
*/

/*sintaxis de sql server*/
ALTER TABLE customer ADD city_id INT;

ALTER TABLE customer ADD CONSTRAINT fk_city FOREIGN KEY (city_id) REFERENCES city(id);

insert into customer (name,email,city_id) values ('fedelobo','gamer@gmail.com',1);


select * from customer;