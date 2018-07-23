# MySQL-cluster
dockerized MySQL cluster installation 


## Requirements

No special requirements; note that this role requires root access, so either run it in a playbook with a global `become: yes`, or invoke the role in your playbook like:

    - hosts: database
      roles:
        - role: MySQL-cluster
          become: yes
    


Available variables are listed below, along with default values (see `defaults/main.yml`):

    docker_network_name: mysql-cluster-net
    MyNewPass: TopSecret
