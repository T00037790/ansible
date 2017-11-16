
## Despliegue de plataforma Moodle

Despliegue de 3 dockers, mysql, redis y un servidor de aplicaciones con php (apache o nginx)


## Arquitectura del sistema


![ansible002](https://user-images.githubusercontent.com/21178320/32881326-e4b66086-ca7e-11e7-89a0-5f4ca455949c.png)



## Instalación de roles

### Role moodle

        ansible-playbook -i hosts ansible001/moodle.yml

### Role MySQL

        ansible-playbook -i hosts ansible001/mysql.yml

### Role Redis

        ansible-playbook -i hosts ansible001/redis.yml
