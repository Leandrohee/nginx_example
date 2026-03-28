# Simulando o main_ngix dos sitemas em local host

## Startando o projecto com docker-compose.yml

### 1. Arrumar a configuracao para linux ou mac

Arquivos:
    - main_nginx/nginx.conf
    - docker-compose.yml

* Comentar 'this is for linux'  - caso mac
* Comentar 'this is for mac'    - caso linux

### 2. Rodar o comando para subir os 3 containers

```bash
docker compose up -d
```

```ini
➜ docker ps
CONTAINER ID   IMAGE                                 COMMAND                  CREATED          STATUS          PORTS                                                 NAMES
610056f02f00   nginx_example-local_nginx_service     "/docker-entrypoint.…"   21 seconds ago   Up 21 seconds   80/tcp, 0.0.0.0:2000->4000/tcp, [::]:2000->4000/tcp   local_nginx
3d60b71ac0fa   nginx_example-python_server_service   "python app.py"          21 seconds ago   Up 21 seconds   1111/tcp                                              local_python_server
1c73f7806309   nginx_example-main_nginx_service      "/docker-entrypoint.…"   21 seconds ago   Up 21 seconds                                                         main_nginx
```

### 3. Testar as conexoes

```bash
https://localhost/banana/
```