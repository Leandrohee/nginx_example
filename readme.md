# Simulando o main_ngix dos sitemas em local host

## Funcionamento do projeto

1. Pasta main_nginx (server nginx):
É o proxy reverso principal do projeto.
Roteia para os proxy reversos locais

2. Pasta banana_nginx (server nginx):
Funciona como um proxy reverso local roteia para somente monstrar um texto simples:
 * um texto simples (https://localhost/banana/)
 * para o servidor backend python (https://localhost/banana/backend/user/22)

3. Pasta python server (server nginx + server python):
Tem o servidor python simples e seu próprio proxy reverso
    (https://localhost/python/user/22)

4. Pasta node server (server nginx + server node):
Tem o servidor node simples e seu próprio proxy reverso
    (https://localhost/node/user/33)

5. docker-compose.yml:
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

### 3. Testar as conexoes

```bash
http://localhost/banana/

http://localhost/banana/backend/user/22

http://localhost/python/user/42

http://localhost/node/user/33

```