# MySQL-cluster
dockerized MySQL cluster installation 


inventory file :

host1 ansible_connection=ssh ansible_user=admin ansible_host=eaasrt1
[database]
host1


playbook:

- hosts: database
  roles:
    - role: MySQL-cluster 
      become: yes
      
      
