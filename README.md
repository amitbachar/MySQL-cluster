Role Name
=========

MySQL-cluster to deploy MySql cluster on docker.

Requirements
------------

python >= 2.6
docker-py >= 1.7.0
Docker API >= 1.20

Role Variables
--------------

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

docker_network_name: mysql-cluster-net
MyNewPass: TopSecret

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: database
      roles:
        - role: MySQL-cluster
          become: yes

License
-------

BSD

Author Information
------------------

Eng. Amit Bachar
amit.bachar@gmail.com
