#Indexing: helps speed-up queries and searches
show tables;
select * from person;
truncate person;
create index index_city on person(city); #this creates index on values of index , shows as key
desc person;
show create table person;
alter table person drop index index_city;#drops index 

INSERT INTO person (id, first_name, city) VALUES (5, 'Eve', 'Chennai');
INSERT INTO person (id, first_name) VALUES (6, 'Frank');
INSERT INTO person (id, first_name, city) VALUES (3, 'Charlie', 'Mumbai');
INSERT INTO person (id, first_name, city) VALUES (4, 'Diana', 'Pune');
INSERT INTO person (id, first_name) VALUES (1, 'Alice');
INSERT INTO person (id, first_name) VALUES (2, 'Bob');
SHOW INDEX FROM person;
SELECT * FROM person WHERE city = 'Mumbai'; #gives faster values when we use city 


SELECT * FROM person ORDER BY id; #helps sort the table based on given values [default ascending order]
SELECT * FROM person ORDER BY id desc; #helps sort the table in descending order based on given values 
SELECT group_concat(id) AS all_id,group_concat(first_name)AS names_in_city,city FROM person GROUP BY city; #group concat helps in concating when we are grouping data
#AS is known as aliases
SELECT id, first_name, city
FROM person
ORDER BY city ASC, first_name DESC; #works in a way first query decides main priority order and then second is for sub categorizing
