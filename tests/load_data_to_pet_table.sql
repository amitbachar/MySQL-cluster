#LOAD DATA LOCAL INFILE '/tmp/pet.txt' into table pet LINES TERMINATED BY '\r\n';
LOAD DATA LOCAL INFILE '/tmp/pet.txt' into TABLE pet fields terminated by ',' lines terminated by '\n';
