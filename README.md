# Role Name
=========
```
MySQL-cluster to deploy MySql cluster on docker.
```

# Requirements
------------
```
    python >= 2.6
    docker-py >= 1.7.0
    Docker API >= 1.20
```

# Role Variables
--------------

```
docker_network_name: mysql-cluster-net
MyNewPass: TopSecret
DBLIST:
  - name: "MySqlDb1"
  - name: "MySqlDb2"
  - name: "MySqlDb3"
```

# Dependencies
------------
```
No Galaxy roles required  
```

Example Playbook
----------------
```
    - hosts: database
      roles:
        - role: MySQL-cluster
          become: yes
```

## Playbook Run
----------------

### Installation & validation
ansible-playbook -i inventories/mysql-cluster-inventory mysql-cluster.yml -vv
###  Installation
ansible-playbook -i inventories/mysql-cluster-inventory mysql-cluster.yml --tags=installation -vv
###  validation
ansible-playbook -i inventories/mysql-cluster-inventory mysql-cluster.yml --tags=validation -vv

Test
-----

#### obtain password:
    docker logs mysql1 2>&1 | grep PASSWORD | awk '{print $5}'

#### login as root:
    docker exec -it mysql1 mysql -uroot -p'********************' 

#### list Databases:
    docker exec -i mysql1 mysql -uroot -p'****************' -e 'show databases;'

#### connect to Database:
    docker exec -it mysql1 mysql -uroot -p'****************' MySqlDb2

#### create table batch mode:
    docker exec -i mysql1 mysql -uroot -p'*****************' MySqlDb2 < create_pet_table.sql
    
#### load data to pet table:
  ##### copy pet.txt to container
    cd MySQL-cluster/tests
    docker cp pet.txt mysql1:/tmp/pet.txt
  ###### validate file copied to mysql1 containet:
    docker exec -i mysql1 cat /tmp/pet.txt
  ##### load data to pet table and validate it got populated: 
    docker exec -i mysql1 mysql -uroot -p'***********' MySqlDb2 < load_data_to_pet_table.sql
    

License
-------

BSD

Author Information
------------------

Eng. Amit Bachar
amit.bachar@gmail.com
