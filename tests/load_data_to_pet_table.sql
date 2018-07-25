show tables;
LOAD DATA LOCAL INFILE '/tmp/pet.txt' into TABLE pet fields terminated by ',' lines terminated by '\n';
select * from pet;
