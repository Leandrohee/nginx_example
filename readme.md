# Simulando o main_ngix dos sitemas em local host

## Funcionamento do projeto

1. Pasta main_nginx:
É o proxy reverso principal do projeto.
Roteia para os proxy reversos locais

2. Pasta local_nginx:
Funciona como um proxy reverso local roteia para:
 * um texto simples (https://localhost/banana/)
 * para o servidor backend python (https://localhost/banana/backend/user/22)

3. Pasta python server:
Tem o servidor python simples e seu próprio proxy reverso
    (https://localhost/python/user/22)

4. docker-compose.yml:
Arquivo de configuracao do exemplo

## Startando o projecto com docker-compose.yml

### 1. Arrumar a configuracao para linux ou mac

Arquivos:
    - main_nginx/nginx.conf
    - docker-compose.yml

* Comentar 'this is for linux'  - caso mac
* Comentar 'this is for mac'    - caso linux

### 2. Rodar o comando para subir os 3 containers

```bash
docker compose build --no-cache 
docker compose up -d

docker compose down -v # Se quiser derrubar tudo
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

https://localhost/banana/backend/user/22

https://localhost/python/user/42
```