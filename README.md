# LEMP Stack Ansible Automation

Este proyecto instala Nginx, MySQL y PHP (LEMP stack) en CentOS 7 usando Ansible.

## Requisitos
- CentOS 7
- Ansible instalado
- Instalar paquete 'python2-PyMySQL'.

## Cómo correr
1. Clonar o descomprimir el proyecto.
2. Ejecutar el playbook:

```bash
ansible-playbook -i hosts playbook.yaml
```