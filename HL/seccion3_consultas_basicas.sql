use store;

/*Se puede insertar varias veces solo poniendo coma y aregando los valores correpondientes y solo usando un values*/


INSERT INTO customer(name, email)
VALUES ('Sergio','correo@hotmail.com'),
('Kiernan Shipka','correo1@hotmail.com'),
('abby donnellie','correo2@hotmail.com');




select * from customer ;

/*busca el limit para sql server*/


/*se le puede agregar un valor a la columna que no exista en este caso fue el algo y el 3*/
select 'algo', 3, name from customer ;

/*FUNCION PARA QUE SEAN MAYUSCULA ES UPPER*/
select UPPER(name) from customer ;

/*FUNCION PARA QUE SEAN minusculas ES LOWER*/
select LOWER(name) from customer ;

/*FUNCION PARA SABER LA LONGITUD */
select name, LEN(name) AS 'longitud' from customer ;

/*select LENGTH(name) from customer ; SERIA EN OTROS SQLS QUE NO SEA EL DE MICROSOFT*/


select * from customer  ORDER BY name DESC;

select * from customer  WHERE LOWER(name) = 'sergio' OR name = 'kiernan shipka';

UPDATE customer SET name = 'kiernan' WHERE id = 2;

select * from customer;  


/*
En mysql para desactivar la proteccion de update que no se especifica el id
UPDATE customer SET name = UPPER(name) WHERE name = 'kiernan';
es poniendo lo siguiente
SET SQL_SAFE_UPDATES = 0;
*/

UPDATE customer SET name = 'sergio', email ='cambiocorreoupdate@hotmail.com' WHERE id = 1;
select * from customer;

UPDATE customer SET name = UPPER(name) WHERE id IN(1,2);
select * from customer;

INSERT INTO customer(name, email)
VALUES 
('eliminar','correo3@hotmail.com'),
('eliminar2','correo4@hotmail.com');


DELETE FROM customer WHERE id IN(4,5);
select * from customer;


SELECT name, COUNT(*) AS 'cantidad' FROM customer GROUP BY name;
