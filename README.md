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

#### obtain the mysql password:
    docker logs mysql1 2>&1 | grep PASSWORD | awk '{print $5}'

#### login to the mysql as root:
    docker exec -it mysql1 mysql -uroot -p'********************' 

#### list the created DB:
    docker exec -i mysql1 mysql -uroot -p'****************' -e 'show databases;'

#### connect to specific DB:
    docker exec -it mysql1 mysql -uroot -p'****************' MySqlDb2

#### create table in batch mode:
    docker exec -i mysql1 mysql -uroot -p'*****************' MySqlDb2 < create_shop_table.sql


License
-------

BSD

Author Information
------------------

Eng. Amit Bachar
amit.bachar@gmail.com
